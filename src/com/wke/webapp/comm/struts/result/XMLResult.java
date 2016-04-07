package com.wke.webapp.comm.struts.result;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;
import com.opensymphony.xwork2.util.ValueStack;
import com.wke.webapp.comm.struts.bo.BaseBO;
import com.wke.webapp.comm.struts.bo.BaseVO;
import com.wke.webapp.comm.utility.DateUtils;

/**
 * struts2 xml 返回类
 * 
 * @author likai
 * @version 1.0
 */
public class XMLResult implements Result {

	public static final String DEFAULT_PARAM = " ";
	public static final String XML_DEFAULT = "<?xml version='1.0' encoding='UTF-8' ?>";
	/** 默认日期格式 yyyy-mm-dd */
	public static final int DATE_FORMAT = 3;

	private Object root;
	private StringBuffer reg = new StringBuffer();
	/** 默认排除类型 使用正则 */
	private String excludeProperties = DEFAULT_PARAM;

	// 日期格式代码参见 DateUtils类
	private int dateFormat = DATE_FORMAT;

	public int getDateFormat() {
		return dateFormat;
	}

	public void setDateFormat(int dateFormat) {
		this.dateFormat = dateFormat;
	}

	public String getExcludeProperties() {
		return excludeProperties;
	}

	public void setExcludeProperties(String excludeProperties) {
		this.excludeProperties = excludeProperties;
	}

	public void execute(ActionInvocation invocation) throws Exception {

		ActionContext actionContext = invocation.getInvocationContext();
		HttpServletResponse response = (HttpServletResponse) actionContext
				.get(StrutsStatics.HTTP_RESPONSE);

		ValueStack valueStack = invocation.getStack();

		this.root = valueStack.peek();

		String[] regs = excludeProperties.split(",");
		for (int i = 0; i < regs.length; i++) {
			reg.append("(").append(regs[i]).append(")").append("|");
		}

		reg.deleteCharAt(reg.length() - 1);

		StringBuffer sb = new StringBuffer(XML_DEFAULT);

		this.bean(root, sb);

		response.setContentType("text/xml; charset=UTF-8");
		response.getWriter().print(sb.toString());

	}

	/**
	 * 递归处理类 可以处理null 继承BaseBO的BO类 map 数组 继承iterator接口的类 Date Calendar
	 * 其他的类皆用toString方法展示 例如 String Integer Character等
	 * 
	 * @param object
	 * @param method
	 * @param sb
	 * @throws Exception
	 */
	private void process(Object object, Method method, StringBuffer sb)
			throws Exception {

		if (object == null) {
			String attributeNames = method.getName().toLowerCase().substring(3);
			sb.append("<").append(attributeNames).append("></")
					.append(attributeNames).append(">").toString();
		} else if (object instanceof BaseVO) {
			this.bean(object, sb);
		} else if (object instanceof BaseBO) {
			this.bean(object, sb);
		} else if (object instanceof Map) {
			this.map((Map) object, method, sb);
		} else if (object.getClass().isArray()) {
			this.array(object, method, sb);
		} else if (object instanceof Iterable) {
			this.array(((Iterable) object).iterator(), method, sb);
		} else if (object instanceof Date) {
			this.date((Date) object, method, sb);
		} else if (object instanceof Calendar) {
			this.date(((Calendar) object).getTime(), method, sb);
		} else {
			String attributeNames = method.getName().toLowerCase().substring(3);
			sb.append("<").append(attributeNames).append("><![CDATA[")
					.append(object).append("]]></").append(attributeNames)
					.append(">").toString();
		}
	}

	/**
	 * bean处理类
	 * 
	 * @param obj
	 * @param sb
	 * @throws Exception
	 */
	private void bean(Object obj, StringBuffer sb) throws Exception {

		Class clazz = obj.getClass();

		BeanInfo info = Introspector.getBeanInfo(clazz, clazz.getSuperclass());

		PropertyDescriptor[] props = info.getPropertyDescriptors();

		int dotnum = clazz.getName().lastIndexOf(".");
		String classname = dotnum == -1 ? clazz.getName() : clazz.getName()
				.substring(dotnum + 1).toLowerCase();

		sb.append("<").append(classname).append(">");

		for (PropertyDescriptor prop : props) {
			Method accessor = prop.getReadMethod();
			if (obj == root && excludeReg(accessor.getName()))
				continue;

			Object value = accessor.invoke(obj);

			process(value, accessor, sb);

		}

		sb.append("</").append(classname).append(">");

	}

	/**
	 * 数组处理类 处理所有继承Iterator接口的类 例如list
	 * 
	 * @param it
	 * @param method
	 * @param sb
	 * @throws Exception
	 */
	private void array(Iterator it, Method method, StringBuffer sb)
			throws Exception {
		sb.append("<list>");

		for (int i = 0; it.hasNext(); i++) {
			Object value = it.next();
			process(value, method, sb);
		}

		sb.append("</list>").toString();

	}

	/**
	 * 数组处理类 例如 string[]
	 * 
	 * @param object
	 * @param method
	 * @param sb
	 * @throws Exception
	 */
	private void array(Object object, Method method, StringBuffer sb)
			throws Exception {

		sb.append("<array>");

		int length = Array.getLength(object);

		for (int i = 0; i < length; ++i) {
			Object value = method.invoke(object);
			process(value, method, sb);
		}

		sb.append("</array>").toString();
	}

	/**
	 * 处理map类
	 * 
	 * @param map
	 * @param method
	 * @param sb
	 * @throws Exception
	 */
	private void map(Map map, Method method, StringBuffer sb) throws Exception {

		sb.append("<map>");
		Iterator it = map.keySet().iterator();

		while (it.hasNext()) {
			Object value = map.get(it.next());
			process(value, method, sb);
		}

		sb.append("</map>").toString();

	}

	/**
	 * 日期处理类 处理date 与 calendar
	 * 
	 * @param date
	 * @param method
	 * @param sb
	 */
	private void date(Date date, Method method, StringBuffer sb) {
		String attributeNames = method.getName().toLowerCase().substring(3);
		String datestr = DateUtils.toDateStr(date, dateFormat);
		sb.append("<").append(attributeNames).append(">").append(datestr)
				.append("</").append(attributeNames).append(">").toString();
	}

	/**
	 * 处理排除正则函数
	 * 
	 * @return
	 */
	private Boolean excludeReg(String functionName) {

		functionName = functionName.substring(3, 4).toLowerCase()
				+ functionName.substring(4);
		Pattern p = Pattern.compile(reg.toString());
		Matcher m = p.matcher(functionName);
		if (m.find())
			return true;
		else
			return false;
	}

}
