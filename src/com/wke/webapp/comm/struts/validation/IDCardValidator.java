/**
 * 
 */
package com.wke.webapp.comm.struts.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

/**
 * 身份证校验
 * @author likai
 * @version 1.0
 */
public class IDCardValidator extends FieldValidatorSupport {

	private static final String DATEREG = "(([1-2][0-9]{3})(((0[13578]|1[02])(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)(0[1-9]|[12][0-9]|30))|(02(0[1-9]|[1][0-9]|2[0-8]))))|((([12][0-9])(0[48]|[2468][048]|[13579][26])|((1[26]|2[048])00))0229)";
	
	/** 是否为一代证 默认为否*/
	private static final boolean OLD = false;

	private boolean oldCard = OLD;
	
	// getter and setter
	public boolean isOldCard() {
		return oldCard;
	}

	public void setOldCard(boolean oldCard) {
		this.oldCard = oldCard;
	}
	
	public void validate(Object object) throws ValidationException {
		
		String fieldName = getFieldName();
		String fieldValue = (String) getFieldValue(fieldName, object );
		
		if(fieldValue == null){
			return;
		}
		
		fieldValue = fieldValue.trim();
		
		int[] factorArr = { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1 };
		char[] varArray = new char[18];
		int[] checkArrey = new int[18];
		int lngProduct = 0;
		int intCheckDigit;
		
		// length check
		if (fieldValue.length() != (isOldCard()? 15:18) ) {
			addFieldError(fieldName, object);
		}
	
		// convert date6 to data 8 
		if(isOldCard()){
			fieldValue = fieldValue.substring(0, 6) + "19" + fieldValue.substring(6, 15);
		}
		
		for (int i = 0; i < 18; i++) {
			varArray[i] = fieldValue.charAt(i);
			if ((varArray[i] < '0' || varArray[i] > '9') && (i != 17)) {
				addFieldError(fieldName, object);
			} else if (i < 17) {
				checkArrey[i] = (varArray[i] - 48)* factorArr[i];
			}
		}
		
		if (!isOldCard()) {
			// check date
			String date8 = fieldValue.substring(6, 14);
			Pattern pattern = Pattern.compile(DATEREG);
			Matcher matcher = pattern.matcher(date8);
			if (!matcher.matches()) {
				addFieldError(fieldName, object);
			}
			// calculate the sum of the products
			for (int i = 0; i < 17; i++) {
				lngProduct = lngProduct + checkArrey[i];
			}
			// calculate the check digit
			intCheckDigit = 12 - lngProduct % 11;
			switch (intCheckDigit) {
			case 10:
				intCheckDigit = 'X';
				break;
			case 11:
				intCheckDigit = '0';
				break;
			case 12:
				intCheckDigit = '1';
				break;
			}
			// check last digit
			if (!String.valueOf(varArray[17]).toUpperCase().equals(String.valueOf(intCheckDigit))) {
				addFieldError(fieldName, object);
			}
		} else {
			// length is 15
			String date8 = fieldValue.substring(6, 14);
			Pattern pattern = Pattern.compile(DATEREG);
			// check date
			Matcher matcher = pattern.matcher(date8);
			if (!matcher.matches()) {
				addFieldError(fieldName, object);
			}
		}
		
	}
	
}
