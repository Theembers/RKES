/**
 * 
 */
package com.wke.webapp.comm.struts.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

/**
 * 特殊字符校验
 * @author likai
 * @version 1.0
 */
public class SpecialCharacterValidator extends FieldValidatorSupport {

	private static final String SPECIAL_CHAR = "`~'\"\\\\-";
	private String specialChar = SPECIAL_CHAR;
	
	// getter and setter
	public String getSpecialChar() {
		return specialChar;
	}
	
	public void setSpecialChar(String specialChar) {
		this.specialChar = specialChar;
	}
	
	
	public void validate(Object object) throws ValidationException {
		
		String fieldName = getFieldName();
		String fieldValue = (String) getFieldValue(fieldName, object );
		
		if(fieldValue == null || "".equals(fieldValue)){
			return;
		}
		
		Pattern reg = Pattern.compile("["+getSpecialChar()+"]");
		Matcher regMatcher = reg.matcher(fieldValue);
		
		if(regMatcher.find()){
			addFieldError(fieldName, fieldValue);
		}
		
	}
	
}
