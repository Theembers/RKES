/**
 * 
 */
package com.wke.webapp.comm.struts.typeConvert;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import com.opensymphony.xwork2.conversion.TypeConversionException;
import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;

/**
 * struts2 日期 格式 转换器
 * 
 * @author likai
 * @version 1.0
 */
public class DateTypeConverter extends StrutsTypeConverter {
	private static final Logger LOG = LoggerFactory.getLogger(DateTypeConverter.class);
	private static String[] dateFormats = { "yyyy-MM-dd HH:mm:ss",
			"yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy/MM/dd HH:mm",
			"yyyy.MM.dd HH:mm", "yyyy-MM-dd", "yyyy/MM/dd", "yy-MM-dd",
			"yy/MM/dd", "yyyyMMddHHmmss", "yyyyMMdd", "yyyy.MM.dd", "yy.MM.dd"};

	@Override
	public Object convertFromString(Map context, String[] values, Class toClass) {
		if (values[0] == null || "".equals(values[0].trim()))
			return null;
		DateFormat format = null;
		for (String dateFormat : dateFormats) {
			format = new SimpleDateFormat(dateFormat);
			try {
				return format.parse(values[0]);
			} catch (ParseException e) {
				continue;
			}
		}
		if (LOG.isDebugEnabled()) {
			LOG.debug("Cannot parse " + values[0] + "to Date");
		}
		throw new TypeConversionException();
	}

	@Override
	public String convertToString(Map context, Object o) {
		Date date = (Date)o;
		if(date == null) {
			return "";
		} else {
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			
			if(cal.get(Calendar.HOUR)==0 && cal.get(Calendar.MINUTE)==0 && cal.get(Calendar.SECOND)==0){
				return new SimpleDateFormat(dateFormats[5]).format(date);
			} else {
				return new SimpleDateFormat(dateFormats[0]).format(date);
			}
			
		}
	}

}
