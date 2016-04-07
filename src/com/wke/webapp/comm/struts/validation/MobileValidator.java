/**
 * 
 */
package com.wke.webapp.comm.struts.validation;

import com.opensymphony.xwork2.validator.validators.RegexFieldValidator;

/**
 * 移动电话校验
 * 1**********（10位）
 * @author likai
 * @version 1.0
 */
public class MobileValidator extends RegexFieldValidator {

	 public static final String mobilePattern = "1\\d{10}";

	 public MobileValidator() {
	     setRegex(mobilePattern);
	     setCaseSensitive(false);
	 }
}
