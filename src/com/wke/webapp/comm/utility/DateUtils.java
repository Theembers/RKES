package com.wke.webapp.comm.utility;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * <p>Title:</p>
 * <p>Description:</p>
 * <p>Copyright: Copyright (c) 2008 Idea Company</p>
 * <p>Company: idea</p>
 * @author lifeng
 * @version 1.0
 */
public class DateUtils {
	
	/**  定义常见的时间格式 */
	private static String[] dateFormat = { "yyyy-MM-dd HH:mm:ss",
			"yyyy/MM/dd HH:mm:ss", "yyyy年MM月dd日HH时mm分ss秒", "yyyy-MM-dd",
			"yyyy/MM/dd", "yy-MM-dd", "yy/MM/dd", "yyyy年MM月dd日", "HH:mm:ss",
			"yyyyMMddHHmmss", "yyyyMMdd", "yyyy.MM.dd", "yy.MM.dd", "yyyy.MM.dd HH:mm", };

	/**
	 * 将日期格式从 java.util.Calendar 转到 java.sql.Timestamp 格式
	 * 
	 * @param date
	 *            java.util.Calendar 格式表示的日期
	 * @return java.sql.Timestamp 格式表示的日期
	 * 
	 */
	public static Timestamp convUtilCalendarToSqlTimestamp(Calendar date) {
		if (date == null)
			return null;
		else
			return new Timestamp(date.getTimeInMillis());
	}
	/**
	 * 将日期格式从 java.util.Timestamp 转到 java.util.Calendar 格式
	 * 
	 * @param date
	 *            java.sql.Timestamp 格式表示的日期
	 * @return java.util.Calendar 格式表示的日期
	 */
	public static Calendar convSqlTimestampToUtilCalendar(Timestamp date) {
		if (date == null)
			return null;
		else {
			java.util.GregorianCalendar gc = new java.util.GregorianCalendar();
			gc.setTimeInMillis(date.getTime());
			return gc;
		}
	}
	/**
	 * DATE to String，转换结果格式为："yyyy-MM-dd"，例如2006-01-01
	 * 
	 * @param date
	 * @return
	 */
	public static String dateToString(Date date) {
		if (date == null) {
			return null;
		}
		return new SimpleDateFormat(dateFormat[3]).format(date);
	}
	
	
	/**
	 * 解析一个字符串，形成一个Calendar对象，适应各种不同的日期表示法
	 * @param dateStr
	 *            期望解析的字符串，注意，不能传null进去，否则出错
	 * @return 返回解析后的Calendar对象 <br>
	 * <br>可输入的日期字串格式如下：
	 * <br>
	 * "yyyy-MM-dd HH:mm:ss", <br>
	 * "yyyy/MM/dd HH:mm:ss", <br>
	 * "yyyy年MM月dd日HH时mm分ss秒", <br>
	 * "yyyy-MM-dd", <br>
	 * "yyyy/MM/dd", <br>
	 * "yy-MM-dd", <br>
	 * "yy/MM/dd", <br>
	 * "yyyy年MM月dd日", <br>
	 * "HH:mm:ss", <br>
	 * "yyyyMMddHHmmss", <br>
	 * "yyyyMMdd", <br>
	 * "yyyy.MM.dd", <br>
	 * "yy.MM.dd"
	 */
	public static Calendar parseDate(String dateStr) {
		if (dateStr == null || dateStr.trim().length() == 0)
			return null;
		Date result = parseDate(dateStr, 0);
		Calendar cal = Calendar.getInstance();
		cal.setTime(result);
		return cal;
	}

	
	/**
	 * 将一个日期转成日期时间格式，格式这样 2008-04-05 21:25:21
	 * @param date
	 *            期望格式化的日期对象
	 * @return 返回格式化后的字符串
	 * <br>
	 * 例： <br>
	 * 调用：	  <br>
	 * Calendar date = new GregorianCalendar(); <br>
	 * String ret = DateUtils.toDateTimeStr(date); <br>
	 * 返回：<br>
	 * ret = "2002-12-04 09:13:16";
	 */
	public static String toDateTimeStr(Calendar date) {
		if (date == null)
			return null;
		return new SimpleDateFormat(dateFormat[0]).format(date.getTime());
	}

	/**
	 * 将一个日期转成日期格式，格式这样 2002-08-05
	 * @param date
	 *            期望格式化的日期对象
	 * @return 返回格式化后的字符串 <br>
	 * 例： <br>
	 * 调用：<br>
	 * Calendar date = new GregorianCalendar(); <br>
	 * String ret = DateUtils.toDateStr(calendar,index); <br>
	 * 返回：
	 * <br>
	 * ret = "2002-12-04";
	 */
	public static String toDateStr(Calendar date,int index) {
		if (date == null)
			return null;
		return new SimpleDateFormat(dateFormat[index]).format(date.getTime());
	}
	
	/**
	 * 将一个日期转成日期格式，格式这样 2002-08-05
	 * @param date
	 *            期望格式化的日期对象
	 * @return 返回格式化后的字符串 <br>
	 * 例： <br>
	 * 调用：<br>
	 * Calendar date = new GregorianCalendar(); <br>
	 * String ret = DateUtils.toDateStr(calendar); <br>
	 * 返回：
	 * <br>
	 * ret = "2002-12-04";
	 */
	public static String toDateStr(Calendar date) {
		if (date == null)
			return null;
		return new SimpleDateFormat(dateFormat[3]).format(date.getTime());
	}
	
	/**
	 * 将一个日期转成日期格式，格式这样 2002-08-05
	 * @param date
	 *            期望格式化的日期对象
	 * @return 返回格式化后的字符串 <br>
	 * 例： <br>
	 * 调用：<br>
	 * Calendar date = new GregorianCalendar(); <br>
	 * String ret = DateUtils.toDateStr(calendar); <br>
	 * 返回：
	 * <br>
	 * ret = "2002-12-04";
	 */
	public static String toDateStr(Date date,int index) {
		if (date == null)
			return null;
		return new SimpleDateFormat(dateFormat[index]).format(date.getTime());
	}

	/**
	 * 
	 * @param d1
	 * @param d2
	 * @return
	 */
	public static long calendarminus(Calendar d1, Calendar d2) {
		if (d1 == null || d2 == null) {
			return 0;
		}
		return (d1.getTimeInMillis() - d2.getTimeInMillis()) / (3600 * 24000);
	}

	/**
	 * 内部方法，根据某个索引中的日期格式解析日期
	 * 
	 * @param dateStr
	 *            期望解析的字符串
	 * @param index
	 *            日期格式的索引
	 * 
	 * @return 返回解析结果
	 */
	public static Date parseDate(String dateStr, int index) {
		DateFormat df = null;
		try {
			df = new SimpleDateFormat(dateFormat[index]);
			return df.parse(dateStr);
		} catch (ParseException pe) {
			return parseDate(dateStr, index + 1);
		} catch (ArrayIndexOutOfBoundsException aioe) {
			return null;
		}
	}
	
	
	/**
	 * 字符转日期,字符串格式："yyyy-MM-dd"，例如2006-01-01
	 * 
	 * @param dateStr
	 * @return
	 */
	public static Date StringToDate(String dateStr) {
		if (dateStr == null || dateStr.trim().length() == 0) {
			return null;
		}
		return parseDate(dateStr, 3);
	}
	
	
	/**
	 * 日期格式转换器
	 * @param dateStr 输入的日期格式
	 * @param index1  dateStr在  dateFormat中的下标
	 * @param index2  返回结果在dateFormat中的下标
	 * @return
	 */
	public static String StringToDate(String dateStr, int index1, int index2) {
		if (dateStr == null || dateStr.trim().length() == 0) {
			return null;
		}
		Date date = parseDate(dateStr, index1);;
		return new SimpleDateFormat(dateFormat[index2]).format(date.getTime()); 
	}

	/**
	 *  计算两个日期之间天数
	 *  day1格式：yyyy-MM-dd    day2格式：yyyy-MM-dd 
	 * @throws ParseException 
	 */
	public static long calculateNumberOfDays(String day1, String day2){

		Calendar date1 = Calendar.getInstance();
		date1.setTime(parseDate(day1, 3));
		
		Calendar date2 = Calendar.getInstance();
		date2.setTime(parseDate(day2, 3));
		
		return calendarminus(date1, date2); 
	}
	
	
	/**
	 * 获得制定日期的下一天
	 * @param date  日期输入格式：yyyy-MM-dd
	 * @return  
	 * @throws ParseException 
	 */
	public static String nextDateOfCertainDate(String date) {
			
		Calendar cal = Calendar.getInstance();
		cal.setTime(parseDate(date,3));
		cal.add(Calendar.DATE, 1); 
		return toDateStr(cal); 
	}
	
	
	public static String getTheDateBefore(String date){
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(parseDate(date,3));
		cal.add(Calendar.DATE, -1); 
		return toDateStr(cal); 
	}
	
	
	/**
	 * 获得制指定日期最近的一个周三
	 * @param date  日期格式:yyyy-MM-dd
	 * @return
	 */
	public static String getLastWednesday(String dateStr){
		Date date = parseDate(dateStr, 3); 
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date); 
		int day_of_week = calendar.get(Calendar.DAY_OF_WEEK) ;
  
		//周三是一周中的第四天
		int intervalDays = -(day_of_week-4);
		if(intervalDays>0){
			intervalDays = intervalDays - 7;
		} 
		calendar.add(Calendar.DATE,intervalDays); 
		
		return toDateStr(calendar, 3);
	}
	
	/**
	 * 获得当前时间
	 * @return string 格式yyyyMMddHHmmss
	 */
	public static String getNow(){ 
		Date date = new Date();
		return toDateStr(date, 9);
	}
	
	
	/**
	 * 获得当前年份
	 * @return
	 */
	public static int getCurrentYear(){
		Date date = new Date();
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date); 
		int year = calendar.get(Calendar.YEAR); 
		return year;
	}
	
	
	/**
	 * 获得今天的日期
	 * @return
	 */
	public static String getToday(){ 
		Date date = new Date();
		return toDateStr(date, 3);
	}
	
	
	
	/**
	 * 获得日期的最后一天
	 * @param yearMonth  yyyy-MM
	 * @return yyyy-MM-dd
	 */
	public static String lastDate(String yearMonth) { 
		
		int year = Integer.parseInt(yearMonth.substring(0, 4)); 
		int month = Integer.parseInt(yearMonth.substring(5, 7)); 
		Calendar cal = Calendar.getInstance(); 
		cal.set(Calendar.YEAR, year); 
		cal.set(Calendar.MONTH, month-1); 
		cal.set(Calendar.DAY_OF_MONTH, cal.getActualMaximum(Calendar.DATE)); 
		return new SimpleDateFormat(dateFormat[3]).format(cal.getTime()); 

	}
	
	
	
	/**
	 * 获得昨天的日期
	 * @return
	 */
	public static String getYesterday(){
		
		Date date = new Date(); 
		Calendar calendar = Calendar.getInstance(); 
		calendar.setTime(date); 
		calendar.add(Calendar.DAY_OF_MONTH,  -1);
		return new SimpleDateFormat(dateFormat[3]).format(calendar.getTime()); 
	}
	
	/**
	 * 计算两个日期之间相差几天
	 * @param date1
	 * @param date2
	 * @return
	 */
	public static long differenceBetweenTime(String strDate1, String strDate2){
		
		long date1 = parseDate(strDate1, 9).getTime(); 
		long date2 = parseDate(strDate2, 9).getTime(); 
		long diff =  date2 - date1   ;
		return diff;
	}
	
	
	
	public static void main(String[] args){
		
		String yesterday = getYesterday();
		System.out.println(yesterday);
	}
	
	
	
 
	
}