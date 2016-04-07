package com.wke.tools.utils;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexUtils {
	
	public static Matcher getMatcher(String s1, String regex, int flags) {
		Pattern pattern = Pattern.compile(regex, flags);
		return pattern.matcher(s1);
	}
	
	/**
	 *Description：匹配获取字符串
	 *@author Jadeite.Wang
	 *@param s1
	 *@param regex
	 *@return String
	 */
	public static String getString(String s1, String regex, int group, int flags) {
		if (s1 == null || s1.length() < 1) {
			return "";
		}
		Pattern pattern = Pattern.compile(regex, flags);
		Matcher matcher = pattern.matcher(s1);
		if(matcher.find()){
			return matcher.group(group);
		}
		return "";
	}
	public static String getString(String s1, List<String> regexList, int flags) {
		if (s1 == null || s1.length() < 1) {
			return "";
		}
		Pattern pattern;
		Matcher matcher;
		for (int i = 0; i < regexList.size(); i++) {
			pattern = Pattern.compile(regexList.get(i), flags);
			matcher = pattern.matcher(s1);
			if(matcher.find()){
				return matcher.group(1);
			}
		}
		return "";
	}
	
	/**
	 *Description：匹配获取Long
	 *@author Jadeite.Wang
	 *@param s1
	 *@param regex
	 *@param flags
	 *@return Long
	 */
	public static long getLong(String s1, String regex, int group, int flags) {
		if (s1 == null || s1.length() < 1) {
			return 0;
		}
		Pattern pattern = Pattern.compile(regex, flags);
		Matcher matcher = pattern.matcher(s1);
		if(matcher.find()){
			Pattern number = Pattern.compile("\\d+");
			Matcher isNum = number.matcher(matcher.group(group));
			if (isNum.matches()) {
				return Long.parseLong(matcher.group(group));
			} else {
				return 0;
			}
		}
		return 0;
	}
	
	/**
	 *Description：匹配获取Integer
	 *@author Jadeite.Wang
	 *@param s1
	 *@param regex
	 *@return Integer
	 */
	public static int getInt(String s1, String regex, int group, int flags) {
		if (s1 == null || s1.length() < 1) {
			return 0;
		}
		Pattern pattern = Pattern.compile(regex, flags);
		Matcher matcher = pattern.matcher(s1);
		if (matcher.find()) {
			Pattern number = Pattern.compile("\\d+");
			Matcher isNum = number.matcher(matcher.group(group));
			if (isNum.matches()) {
				return Integer.parseInt(matcher.group(group));
			} else {
				return 0;
			}
		}
		return 0;
	}
	
	/**
	 *Description：匹配获取Double
	 *@author Jadeite.Wang
	 *@param s1
	 *@param regex
	 *@return Double
	 */
	public static double getDouble(String s1, String regex, int group, int flags) {
		Pattern pattern = Pattern.compile(regex, flags);
		Matcher matcher = pattern.matcher(s1);
		if (matcher.find()) {
			return Double.parseDouble(matcher.group(group));
		}
		return 0.00;
	}
	
	public static Date getDate(String s1, String regex, int flags, int group, String datePattern) {
		Pattern pattern = Pattern.compile(regex, flags);
		Matcher matcher = pattern.matcher(s1);
		Date date = DateUtils.getNow();
		if (matcher.find()) {
			date = DateUtils.stringToDate(matcher.group(group), datePattern);
		}
		return date;
	}
	
	/**
	 *Description：获取匹配日期
	 *@author Jadeite.Wang
	 *@param s1
	 *@param regexList List<正则表达式>
	 *@param flags
	 *@param datePattern 日期格式（yyyy-MM-dd hh:mm:ss）
	 *@return
	 */
	public static Date getDate(String s1, List<String> regexList, int flags, String datePattern) {
		if (s1 == null || s1.length() < 1) {
			return null;
		}
		Date date = DateUtils.getNow();
		Pattern pattern;
		Matcher matcher;
		for (int i = 0; i < regexList.size(); i++) {
			pattern = Pattern.compile(regexList.get(i), flags);
			matcher = pattern.matcher(s1);
			if(matcher.find()){
				date = DateUtils.stringToDate(matcher.group(1), datePattern);
			}
		}
		return date;
	}
	
	/**
	 *Description：获取匹配日期
	 *@author Jadeite.Wang
	 *@param s1
	 *@param regexMap HashMap<正则表达式, 日期格式（yyyy-MM-dd hh:mm:ss）>
	 *@param flags
	 *@return
	 */
	public static Date getDate(String s1, HashMap<String, String> regexMap, int flags) {
		if (s1 == null || s1.length() < 1) {
			return null;
		}
		Date date = DateUtils.getNow();
		Pattern pattern;
		Matcher matcher;
		for (Map.Entry<String, String> entry : regexMap.entrySet()) {
			pattern = Pattern.compile(entry.getKey(), flags);
			matcher = pattern.matcher(s1);
			if (matcher.find()) {
				date = DateUtils.stringToDate(matcher.group(1), entry.getValue());
			}
		}
		return date;
	}
	
	/**
	 *Description：获取匹配次数
	 *@author Jadeite.Wang
	 *@param s1
	 *@param regex
	 *@param flags
	 *@return Integer
	 */
	public static int getMatcherCount(String s1, String regex, int flags) {
		Pattern pattern = Pattern.compile(regex, flags);
		Matcher matcher = pattern.matcher(s1);
		int n = 0;
		while (matcher.find()) {
			n++;
		}
		return n;
	}
	
	/**
	 *Description：获取页面超链接
	 *@author Jadeite.Wang
	 *@param s1
	 *@return String
	 */
	public static String getURL(String s1, int flags) {
		String result = null;
		Matcher matcher = getMatcher(s1, "href=\"(.*?)\"", flags);
		if (matcher.find()) {
			String temp = matcher.group();
			if (temp.indexOf("url=") >= 0) {
				int k = temp.indexOf("url=")+4;
				result = temp.substring(k,temp.length()-1);
			} else {
				result = temp;
			}
		}
		return result;
	}
}
