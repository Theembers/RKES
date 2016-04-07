package com.wke.webapp.comm.utility;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;


/**
 * Title: 系统组件 类造型器
 * Description: 中国税务税收征管信息系统
 * Copyright: Copyright (c) 2006
 * Company: 中国软件与技术服务股份有限公司
 * @author 康水明
 * @version 1.0
 */
public class ClassCaster {
	
	public static final Logger logger = LoggerFactory.getLogger(ClassCaster.class);
	
	/**
	 * 根据对象类型造型
	 * @param Class  造型结果类型
	 * @param obj 要造型的对象
	 * @return Object 造型结果
	 */
	public static Object classCast(Class clas, Object obj) {
		return classCast(clas.getName(),obj);
	}	
	
	/**
	 * 根据对象类型造型
	 * @param classType  造型结果类型
	 * @param obj  要造型的对象
	 * @return Object 造型结果
	 */
	public static Object classCast(String classType, Object obj) {
		Object result = null; // 造型结果
		try {
			if (classType != null && obj != null && !"".equals(obj)) {
				String temp = String.valueOf(obj);
				String classname = obj.getClass().getName();
				if (classType.endsWith("String")) {
					if (classname.startsWith("[L")) {
						String[] str = (String[]) obj;
						result = str[0];
					} else {
						result = temp;
					}
				} else if (classType.endsWith("Double")) {
					if ("java.lang.Double".equals(classname)) {
						result = (Double) obj;
					} else {
						result = new Double(temp);
					}
				} else if (classType.endsWith("Long")) {
					if ("java.lang.Long".equals(classname)) {
						result = (Long) obj;
					} else {
						result = new Long(temp);
					}
				} else if (classType.endsWith("Integer")) {
					if ("java.lang.Integer".equals(classname)) {
						result = (Integer) obj;
					} else {
						result = new Integer(temp);
					}
				} else if (classType.endsWith("double")) {
					if ("java.lang.Double".equals(classname)) {
						result = (Double) obj;
					} else {
						result = new Double(temp);
					}
				} else if (classType.endsWith("int")) {
					if ("java.lang.Integer".equals(classname)) {
						result = (Integer) obj;
					} else {
						result = new Integer(temp);
					}
				} else if (classType.endsWith("long")) {
					if ("java.lang.Long".equals(classname)) {
						result = (Long) obj;
					} else {
						result = new Long(temp);
					}
				} else if (classType.endsWith("BigDecimal")) {
					if ("java.math.BigDecimal".equals(classname)) {
						result = (BigDecimal) obj;
					} else {
						result = new BigDecimal(temp);
					}
				} else if (classType.endsWith("Calendar")) {
					result = toCalendar(obj);
				} else if (classType.endsWith("Date")) {
					result = toDate(obj);
				}
			}
		} catch (ClassCastException ex) {
			logger.error("class造型失败：", ex);
		}
		return result;
	}

	/**
	 * 造型为Calendar
	 * @param obj
	 * @return Calendar
	 */
	private static Calendar toCalendar(Object obj) {
		Calendar cal = Calendar.getInstance();
		try {
			String classname = obj.getClass().getName();
			if ("java.lang.String".equals(classname)) {
				cal = DateUtils.parseDate((String) obj);
			} else if ("java.sql.Date".equals(classname)) {
				cal.setTime((java.util.Date) obj);
			} else if ("java.sql.Timestamp".equals(classname)) {
				cal = DateUtils.convSqlTimestampToUtilCalendar((Timestamp) obj);
			} else if ("java.util.Date".equals(classname)) {
				cal.setTime((java.util.Date) obj);
			} else {
				cal = (Calendar) obj;
			}
		} catch (ClassCastException ex) {
			logger.error("Calendar造型失败：", ex);
		}
		return cal;
	}

	/**
	 * 造型为Date
	 * @param obj
	 * @return Date
	 */
	private static Date toDate(Object obj) {
		Date date = new Date();
		try {
			String classname = obj.getClass().getName();
			if ("java.lang.String".equals(classname)) {
				date = DateUtils.StringToDate((String) obj);
			} else if ("java.sql.Timestamp".equals(classname)) {
				date.setTime(((java.sql.Timestamp) obj).getTime());
			} else if ("java.util.Calendar".equals(classname)) {
				date = ((java.util.Calendar) obj).getTime();
			} else if ("java.util.GregorianCalendar".equals(classname)) {
				date = ((java.util.Calendar) obj).getTime();
			} else {
				date = (Date) obj;
			}
		} catch (ClassCastException ex) {
			logger.error("Date造型失败：", ex);
		}
		return date;
	}
}
