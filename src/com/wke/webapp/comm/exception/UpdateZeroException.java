/**
 * 
 */
package com.wke.webapp.comm.exception;

import java.util.List;

/**
 * 更新0条记录异常类
 * @author likai
 * @version 1.0
 */
public class UpdateZeroException extends BaseException {

	private static final long serialVersionUID = 6185562966718216046L;

	/**
	 * @see BaseException#BaseException(String, List, Throwable)
	 */
	public UpdateZeroException(String key, List<?> args, Throwable e) {
		super(key, args, e);
	}

	/**
	 * @see BaseException#BaseException(String, List)
	 */
	public UpdateZeroException(String key, List<?> args) {
		super(key, args);
	}

	/**
	 * @see BaseException#BaseException(String, String, Throwable)
	 */
	public UpdateZeroException(String key, String obj, Throwable e) {
		super(key, obj, e);
	}

	/**
	 * @see BaseException#BaseException(String, String)
	 */
	public UpdateZeroException(String key, String obj) {
		super(key, obj);
	}

	/**
	 * @see BaseException#BaseException(String, String[], Throwable)
	 */
	public UpdateZeroException(String key, String[] args, Throwable e) {
		super(key, args, e);
	}

	/**
	 * @see BaseException#BaseException(String, String[])
	 */
	public UpdateZeroException(String key, String[] args) {
		super(key, args);
	}

	/**
	 * @see BaseException#BaseException(String, Throwable)
	 */
	public UpdateZeroException(String errMsg, Throwable e) {
		super(errMsg, e);
	}

	/**
	 * @see BaseException#BaseException(String)
	 */
	public UpdateZeroException(String errMsg) {
		super(errMsg);
	}

}
