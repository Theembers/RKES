/**
 * 
 */
package com.wke.webapp.comm.struts.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

/**
 * 固定电话校验
 * @author likai
 * @version 1.0
 */
public class PhoneValidator extends FieldValidatorSupport {

	/** 是否需要国际区号 默认为否*/
	private static final boolean NEED_INTERNATINALCODE = false;
	/** 是否需要国内区号 默认为否*/
	private static final boolean NEED_AREACODE = false;
	/** 是否需要分机号 默认为否*/
	private static final boolean NEED_EXTENSION_PHONE = false;
	/** 分机号长度 默认长度8位*/
	private static final int EXTENSION_PHONE_LENGTH = 8;

	private boolean internationalCode = NEED_INTERNATINALCODE;
	private boolean areaCode = NEED_AREACODE;
	private int maxExtenstionPhoneLength = EXTENSION_PHONE_LENGTH; 
	private boolean extensionPhone = NEED_EXTENSION_PHONE;
	
	// getter and setter
	public boolean isInternationalCode() {
		return internationalCode;
	}

	public void setInternationalCode(boolean internationalCode) {
		this.internationalCode = internationalCode;
	}

	public boolean isAreaCode() {
		return areaCode;
	}

	public void setAreaCode(boolean areaCode) {
		this.areaCode = areaCode;
	}
	
	public boolean isExtensionPhone() {
		return extensionPhone;
	}
	
	public void setExtensionPhone(boolean extensionPhone) {
		this.extensionPhone = extensionPhone;
	}
	
	public int getMaxExtenstionPhoneLength() {
		return maxExtenstionPhoneLength;
	}

	public void setMaxExtenstionPhoneLength(int maxExtenstionPhoneLength) {
		this.maxExtenstionPhoneLength = maxExtenstionPhoneLength;
	}
	
	public void validate(Object object) throws ValidationException {
		
		String fieldName = getFieldName();
		String fieldValue = (String) getFieldValue(fieldName, object );
		
		if(fieldValue == null || "".equals(fieldValue)){
			return;
		}
		
		fieldValue = fieldValue.trim();
		
		StringBuffer reg  = new StringBuffer("^");
		
		if(isInternationalCode()){
			reg.append("00[1-9]\\d-");
		}
		if(isAreaCode()){
			reg.append("0[1-9]\\d{1,2}-");
		}
		
		reg.append("\\d{7,8}");
		
		if(isExtensionPhone()){
			reg.append("-\\d{0,").append(getMaxExtenstionPhoneLength()).append("}");
		}
		
		Pattern phoneReg = Pattern.compile(reg.append("$").toString());
		
		Matcher phoneMatcher = phoneReg.matcher(fieldValue);
		
		if(!phoneMatcher.find()){
			addFieldError(fieldName, object);
		}
		
	}
	
	
}
