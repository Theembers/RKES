/**
 * 
 */
package com.wke.webapp.comm.struts.result;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;
import com.opensymphony.xwork2.util.ValueStack;

/**
 * struts返回普通的字符串
 * @author King
 *
 */
public class NativeResult implements Result {
	
	/** 默认的字串输出名称 */
	public static final String DEFAULT_VALUE = "outputString";
	
	/** 需要输出的字符串流*/
	private String value = DEFAULT_VALUE;

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Override
	public void execute(ActionInvocation invocation) throws Exception {
		
		ActionContext actionContext =  invocation.getInvocationContext();
		HttpServletResponse response = (HttpServletResponse) actionContext.get(StrutsStatics.HTTP_RESPONSE);
		
		ValueStack valueStack = invocation.getStack();
		
		Object out = valueStack.findValue(value, Object.class);
		
		response.setContentType("text/string; charset=UTF-8");
		response.getWriter().print(out);

	}

}
