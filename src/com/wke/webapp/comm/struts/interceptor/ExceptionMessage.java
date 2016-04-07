/**
 * 
 */
package com.wke.webapp.comm.struts.interceptor;

import java.io.Serializable;

/**
 * 异常拦截器 异常bean类 供前台显示用
 * @author likai
 */
public class ExceptionMessage implements Serializable {
	
	private static final long serialVersionUID = 5672720353288873990L;
	private String exceptionMessage;

	public ExceptionMessage(String exceptionMessage) {
		this.exceptionMessage = exceptionMessage;
	}

	public String getExceptionMessage() {
		return exceptionMessage;
	}

	public void setExceptionMessage(String exceptionMessage) {
		this.exceptionMessage = exceptionMessage;
	}
}
