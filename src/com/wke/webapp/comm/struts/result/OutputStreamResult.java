package com.wke.webapp.comm.struts.result;

import java.io.BufferedInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Calendar;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;
import com.opensymphony.xwork2.util.ValueStack;

/**
 * struts 2 返回 文件流
 * @author likai
 * @version 1.0
 */
public class OutputStreamResult implements Result{

	/** 默认的文件输出管道 */
	public static final String DEFAULT_VALUE = "outputStream";
	/** 默认输出文件类型  */
	public static final String DEFAULT_FILETYPE = "";
	/** 默认输出文件名称 */
	public static final String DEFAULT_FILENAME = String.valueOf(Calendar.getInstance().getTimeInMillis());
	
	
	private String value = DEFAULT_VALUE;
	private String name = DEFAULT_FILENAME;
	private String type = DEFAULT_FILETYPE;
	
	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	

	public void execute(ActionInvocation invocation) throws Exception {
		
		ActionContext actionContext =  invocation.getInvocationContext();
		HttpServletResponse response = (HttpServletResponse) actionContext.get(StrutsStatics.HTTP_RESPONSE);
		
		ValueStack valueStack = invocation.getStack();
		
		InputStream ins = (InputStream)valueStack.findValue(value, InputStream.class);
		String filename = (String)valueStack.findValue(value+"FileName", String.class);
		String filetype = (String)valueStack.findValue(value+"ContentType", String.class);
		
		if(filename != null && !"".equals(filename)){
			setName(filename);
		}
		
		if(filetype != null && !"".equals(filetype)){
			setType(filetype);
		}
		
		BufferedInputStream bous = new BufferedInputStream(ins);
		byte[] buf = new byte[1024];
		int len = -1;
		response.reset(); //非常重要
		response.setContentType("application/x-msdownload");
		
		if(!type.startsWith(".")){
			setType("."+getType());
		}
		
		response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(name+type, "UTF-8"));
		OutputStream ous = response.getOutputStream();
		while((len = bous.read(buf))>-1)
			ous.write(buf,0,len);
		bous.close();
		ous.close();
		
	}
	
	
}
