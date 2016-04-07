/**
 * 
 */
package com.wke.webapp.comm.exception;

import java.util.List;

import com.wke.webapp.comm.utility.PropertyUtils;


/**
 * 自定义异常基类
 * @author likai
 * @version 1.0
 */
public abstract class BaseException extends RuntimeException {
	
	private static final long serialVersionUID = -2648472087213325877L;
	
	private String detailMessage = null;

	/**
	 * 构造方法
	 * @param errMsg 如果errMsg找到key值，则用errMsg的value， 否则使用errMsg的值
	 */
	protected BaseException(String errMsg){
		super();
		this.detailMessage = PropertyUtils.getTextProvider().getText(errMsg, errMsg);
	}
	
	/**
	 * 构造方法
	 * @param errMsg 如果errMsg找到key值，则用errMsg的value， 否则使用errMsg的值
	 * @param e
	 */
	protected BaseException(String errMsg, Throwable e){
		super(e);
		this.detailMessage = PropertyUtils.getTextProvider().getText(errMsg, errMsg);
	}
	
	/**
	 * 构造方法
	 * @param key 使用errMsg的value
	 * @param args 替换errMsg的value中的占位符
	 */
	protected BaseException(String key, List<?> args){
		super();
		this.detailMessage = PropertyUtils.getTextProvider().getText(key, args);
	}
	
	/**
	 * 构造方法
	 * @param key 使用errMsg的value
	 * @param args 替换errMsg的value中的占位符
	 * @param e
	 */
	protected BaseException(String key, List<?> args, Throwable e){
		super(e);
		this.detailMessage = PropertyUtils.getTextProvider().getText(key, args);
	}
	
	/**
	 * 构造方法
	 * @param key 使用errMsg的value
	 * @param args 替换errMsg的value中的占位符
	 */
	protected BaseException(String key, String[] args){
		super();
		this.detailMessage = PropertyUtils.getTextProvider().getText(key, args);
	}
	
	/**
	 * 构造方法
	 * @param key 使用errMsg的value
	 * @param args 替换errMsg的value中的占位符
	 * @param e
	 */
	protected BaseException(String key, String[] args, Throwable e){
		super(e);
		this.detailMessage = PropertyUtils.getTextProvider().getText(key, args);
	}
	
	/**
	 * 构造方法
	 * @param key 使用errMsg的value
	 * @param obj 替换errMsg的value中的第一个占位符
	 */
	protected BaseException(String key, String obj){
		super();
		this.detailMessage = PropertyUtils.getTextProvider().getText(key, key, obj);
	}
	
	/**
	 * 构造方法
	 * @param key 使用errMsg的value
	 * @param obj 替换errMsg的value中的第一个占位符
	 * @param e
	 */
	protected BaseException(String key, String obj, Throwable e){
		super(e);
		this.detailMessage = PropertyUtils.getTextProvider().getText(key, key, obj);
	}
	
	@Override
	public String getMessage() {
	   return detailMessage;
	}

}
