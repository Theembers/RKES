/**
 * 
 */
package com.wke.webapp.comm.exception;

import java.util.List;

/**
 * 删除0条记录异常类
 * @author likai
 * @version 1.0
 */
public class DeleteZeroException extends BaseException {

	private static final long serialVersionUID = 6194223654565377949L;

	/**
	 * @see BaseException#BaseException(String, List, Throwable)
	 */
	public DeleteZeroException(String key, List<?> args, Throwable e) {
		super(key, args, e);
	}

	/**
	 * @see BaseException#BaseException(String, List)
	 */
	public DeleteZeroException(String key, List<?> args) {
		super(key, args);
	}

	/**
	 * @see BaseException#BaseException(String, String, Throwable)
	 */
	public DeleteZeroException(String key, String obj, Throwable e) {
		super(key, obj, e);
	}

	/**
	 * @see BaseException#BaseException(String, String)
	 */
	public DeleteZeroException(String key, String obj) {
		super(key, obj);
	}

	/**
	 * @see BaseException#BaseException(String, String[], Throwable)
	 */
	public DeleteZeroException(String key, String[] args, Throwable e) {
		super(key, args, e);
	}

	/**
	 * @see BaseException#BaseException(String, String[])
	 */
	public DeleteZeroException(String key, String[] args) {
		super(key, args);
	}

	/**
	 * @see BaseException#BaseException(String, Throwable)
	 */
	public DeleteZeroException(String errMsg, Throwable e) {
		super(errMsg, e);
	}

	/**
	 * @see BaseException#BaseException(String)
	 */
	public DeleteZeroException(String errMsg) {
		super(errMsg);
	}

}
