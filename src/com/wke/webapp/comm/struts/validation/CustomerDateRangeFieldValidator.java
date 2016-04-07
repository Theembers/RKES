/**
 * 
 */
package com.wke.webapp.comm.struts.validation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import ognl.Ognl;
import ognl.OgnlException;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

/**
 * 日期范围校验 覆盖struts2 DateRangeFieldValidator
 * 
 * @author likai
 * @version 1.0
 */
public class CustomerDateRangeFieldValidator extends FieldValidatorSupport {

	private String max;
	private String min;

	public String getMax() {
		return max;
	}

	public void setMax(String max) {
		this.max = max;
	}

	public String getMin() {
		return min;
	}

	public void setMin(String min) {
		this.min = min;
	}

	public void validate(Object object) throws ValidationException {
		Date obj = (Date) getFieldValue(getFieldName(), object);

		Date max = null;
		Date min = null;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
		
		Comparable<Date> value = (Comparable<Date>) obj;
		
		if (value == null || "".equals(value)) {
			return;
		}

		try {
			if (getMin() != null && getMin().startsWith("${") && getMin().endsWith("}")) {
				min = (Date) Ognl.getValue(getMin().substring(2,
						getMin().length() - 1), object);
			} else if(getMin() != null && getMin().equals("today")) {
				min = new Date();
			} else if(getMin() != null){
				min = format.parse(getMin());
			}

			if (getMax() != null && getMax().startsWith("${") && getMax().endsWith("}")) {
				max = (Date) Ognl.getValue(getMax().substring(2,
						getMax().length() - 1), object);
			} else if(getMax() != null && getMax().equals("today")) {
				max = new Date();
			} else if(getMax() != null){
				max = format.parse(getMax());
			}

		} catch (OgnlException e) {
			throw new ValidationException("can not translate ognl expression");
		} catch (ParseException e) {
			throw new ValidationException("wrong date format, wish yyyy-mm-dd");
		}

		if ((min != null) && (value.compareTo(min) < 0)) {
			addFieldError(getFieldName(), object);
		}

		if ((max != null) && (value.compareTo(max) > 0)) {
			addFieldError(getFieldName(), object);
		}

	}
}
