/**
 * 
 */
package com.wke.webapp.comm.struts.typeConvert;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import com.opensymphony.xwork2.conversion.TypeConversionException;
import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;

/**
 * struts2 日期 格式 转换器
 * @deprecated
 * @author likai
 * @version 1.0
 */
public class CalendarTypeConverter extends StrutsTypeConverter {
	private static final Logger LOG = LoggerFactory.getLogger(CalendarTypeConverter.class);
	private static String[] dateFormats = { "yyyy-MM-dd HH:mm:ss",
			"yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy/MM/dd HH:mm",
			"yyyy.MM.dd HH:mm", "yyyy-MM-dd", "yyyy/MM/dd", "yy-MM-dd",
			"yy/MM/dd", "yyyyMMddHHmmss", "yyyyMMdd", "yyyy.MM.dd", "yy.MM.dd"};

	@Override
	@Deprecated
	public Object convertFromString(Map context, String[] values, Class toClass) {
		if (values[0] == null || "".equals(values[0].trim()))
			return null;
		DateFormat format = null;
		Calendar cal = Calendar.getInstance();
		for (String dateFormat : dateFormats) {
			format = new SimpleDateFormat(dateFormat);
			try {
				cal.setTime(format.parse(values[0]));
				return cal;
			} catch (ParseException e) {
				continue;
			}
		}
		if (LOG.isDebugEnabled()) {
			LOG.debug("Cannot parse " + values[0] + "to Calendar");
		}
		throw new TypeConversionException();
	}

	@Override
	@Deprecated
	public String convertToString(Map context, Object o) {
		Calendar cal = (Calendar)o;
		if(cal == null) {
			return "";
		} else {
			if(cal.get(Calendar.HOUR)==0 && cal.get(Calendar.MINUTE)==0 && cal.get(Calendar.SECOND)==0){
				return new SimpleDateFormat(dateFormats[5]).format(cal.getTime());
			} else {
				return new SimpleDateFormat(dateFormats[0]).format(cal.getTime());
			}
			
		}
	}

}
