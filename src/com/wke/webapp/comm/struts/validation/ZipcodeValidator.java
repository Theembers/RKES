/**
 * 
 */
package com.wke.webapp.comm.struts.validation;

import com.opensymphony.xwork2.validator.validators.RegexFieldValidator;

/**
 * 网址校验
 * 邮编校验 6位数字 且 第一位不为0
 * @author likai
 * @version 1.0
 */
public class ZipcodeValidator extends RegexFieldValidator {

	 public static final String zipcodePattern = "[1-9][0-9]{5}";

	 public ZipcodeValidator() {
	     setRegex(zipcodePattern);
	     setCaseSensitive(false);
	 }
}
