package com.wke.webapp.comm.utility;

/**
 * 实现一些java重构机制的方法集合
 * 
 * 
/**
 * <p>
 * Title:
 * </p>
 * <p>
 * Description:
 * </p>
 * <p>
 * Copyright: Copyright (c) 2008 Idea Company
 * </p>
 * <p>
 * Company: idea
 * </p>
 * 
 * @author lifeng
 * @version 1.0
 */

public class RefUtils {
	public RefUtils() {
	}

	/**
	 * 得到传入参数的具体类型；
	 * 
	 * @param orb：Object
	 * @return 参数的具体类型
	 * 
	 */
	public static String getDataType(Object obj) {
		if (obj == null) {
			return null;
		}
		String type = obj.getClass().getName();
		int pos = type.lastIndexOf(".");
		if (pos >= 0) {
			type = type.substring(pos + 1);
		}
		return type;

	}

}