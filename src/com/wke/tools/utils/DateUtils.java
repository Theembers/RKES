package com.wke.tools.utils;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

public class DateUtils {
	public static final int DAY = 1;
	public static final int HOUR = 2;
	public static final int MINUTE = 3;
	public static final int SECOND = 4;
	/**
	 * 时间格式化
	 * @param date
	 * @param pattern	输出格式
	 * @return String
	 */
	public static String dateToString(Date date , String pattern){
		if (date == null) {
			return null;
		}
		SimpleDateFormat dateFormat=new SimpleDateFormat(pattern);
		String newDate = dateFormat.format(date);
		return newDate;
	}
	
	/**
	 * String转Date
	 * @param str	源字符串
	 * @param pattern	输出格式
	 * @return Date
	 */
	public static Date stringToDate(String str, String pattern) {
		if (str == null || "".equals(str)) {
			return null;
		}
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		Date date = null;
		try {
			date = sdf.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	/**
	 * 获取当前时间
	 * 格式：Fri Sep 14 16:18:35 CST 2012
	 * @return Date
	 */
	public static Date getNow() {
		Calendar cal = new GregorianCalendar();
		cal.setTimeZone(TimeZone.getDefault());
		return cal.getTime();
	}
	
	public static String getCurrentTime(String pattern) {
		Date date = new Date();
		return dateToString(date, pattern);
	}

	/**
	 * 增加天数
	 * @param date	原日期
	 * @param num	增加的天数 , 负数则为减少
	 * @return Date
	 */
	public static Date addDay(Date date, int num) {
		Calendar startDT = Calendar.getInstance();
		startDT.setTime(date);
		startDT.add(Calendar.DAY_OF_MONTH, num);
		return startDT.getTime();
	}
	
	/**
	 * 获取当前时间到明天剩余的毫秒数
	 * @return Long
	 */
	public static Long getSecondToNextDay() {
		SimpleDateFormat sFormat = new SimpleDateFormat("HH:mm:ss.SSS");
		Long between = 0L;
		try {
			String now = sFormat.format(new Date());
			Date begin = sFormat.parse(now);
			Date end = sFormat.parse("23:59:59.999");
			between = end.getTime() - begin.getTime();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return between;
	}
	
	/**
	 * 获取运行时间
	 * @param hour	时
	 * @param minute	分
	 * @param second	秒
	 * @return Date
	 */
	public static Date getRunTime(int hour, int minute, int second){
		
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, hour);
		calendar.set(Calendar.MINUTE, minute);
		calendar.set(Calendar.SECOND, second);
		
		Date date=calendar.getTime(); //第一次执行定时任务的时间
		
		// 如果程序启动时间超过了任务定时启动的时间，则将任务定时器推迟一天，避免程序一启动即开始任务
		if (date.before(new Date())) {
			date = addDay(date, 1);
		}
		return date;
	}
	
	/**
	 * 时间字符串(包含"-")转换成 Long
	 * @param date
	 * @return long
	 */
	public static long parseDateToLong(String date){
		if (StringUtils.isNone(date)) {
			return 0;
		}
		String dateString = date.replaceAll("-", "");
		long res = Long.parseLong(dateString);
		return res;
	}
	
	/**
	 *Description：转换 "xxxx年xx月xx日" 格式的日期, 将 "年月日" 替换为 "-"
	 *@author Jadeite.Wang
	 *@param dateStr
	 *@param pattern
	 *@return
	 * @throws ParseException 
	 */
	public static Date convertDateStr(String dateStr, String pattern) {
		dateStr = dateStr.replace("年", "-").replace("月", "-").replace("日", "");
		SimpleDateFormat format = new SimpleDateFormat(pattern);
		try {
			return format.parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 *Description：从互联网上获取当前时间
	 *@author Jadeite.Wang
	 *@return
	 */
	public static Date getCurrentTimeFromInternet() {
		//取得资源对象
		Date result = getNow();
		try {
			URL url = new URL("http://www.bjtime.cn");
			//生成连接对象
			URLConnection uc = url.openConnection();
			//发出连接
			uc.connect();
			long time = uc.getDate();
			result = new Date(time);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public static double getDiff(Date begin, Date end, int returnType) {
		long between = end.getTime() - begin.getTime();
		switch (returnType) {
		case DAY:
			return between * 1.0 / (24 * 60 * 60 * 1000);
		case HOUR:
			return between * 1.0 / (60 * 60 * 1000);
		case MINUTE:
			return between * 1.0 / (60 * 1000);
		default:
			return between;
		}
	}
	
	public static void main(String[] args) throws Exception{
		System.out.println(getDiff(stringToDate("2014-08-20 13:00:00", "yyyy-MM-dd hh:mm:ss"), stringToDate("2014-08-20 13:10:00", "yyyy-MM-dd hh:mm:ss"),DateUtils.DAY));
	}
}
