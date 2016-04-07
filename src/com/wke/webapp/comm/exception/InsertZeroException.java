/**
 * 
 */
package com.wke.webapp.comm.exception;

import java.util.List;

/**
 * 新增0条记录异常类
 * @author likai
 * @version 1.0
 */
public class InsertZeroException extends BaseException {

	public InsertZeroException(String key, List<?> args, Throwable e) {
		super(key, args, e);
		// TODO Auto-generated constructor stub
	}

	public InsertZeroException(String key, List<?> args) {
		super(key, args);
		// TODO Auto-generated constructor stub
	}

	public InsertZeroException(String key, String obj, Throwable e) {
		super(key, obj, e);
		// TODO Auto-generated constructor stub
	}

	public InsertZeroException(String key, String obj) {
		super(key, obj);
		// TODO Auto-generated constructor stub
	}

	public InsertZeroException(String key, String[] args, Throwable e) {
		super(key, args, e);
		// TODO Auto-generated constructor stub
	}

	public InsertZeroException(String key, String[] args) {
		super(key, args);
		// TODO Auto-generated constructor stub
	}

	public InsertZeroException(String errMsg, Throwable e) {
		super(errMsg, e);
		// TODO Auto-generated constructor stub
	}

	public InsertZeroException(String errMsg) {
		super(errMsg);
		// TODO Auto-generated constructor stub
	}

}
