/**
 * 
 */
package com.wke.webapp.comm.utility;

import com.opensymphony.xwork2.DefaultTextProvider;
import com.opensymphony.xwork2.TextProvider;

/**
 * @author liaki
 * 得到配置属性文件
 */
public class PropertyUtils {

	private static TextProvider textProvider = null;
	
	/**
	 * 得到唯一TextProvider实例
	 * 在struts action service中可以调用
	 * @return
	 */
	public static TextProvider getTextProvider() {
		if(textProvider == null){
			textProvider =  new DefaultTextProvider();
		}
		
		return textProvider;
	}
	
}
