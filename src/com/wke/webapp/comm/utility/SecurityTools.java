package com.wke.webapp.comm.utility;

/**
 * 安全工具类
 * @author ZhangBing
 */
public class SecurityTools {
	
	/**
	 * 转换特殊字符
	 * @param content
	 * @return
	 */
	public static String transform(String content) { 
	    return content.replaceAll("&","&amp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("'","&#039;").replaceAll("\"","&quot;"); 
	} 

	
}
