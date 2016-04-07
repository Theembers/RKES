package com.wke.tools.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils {
	/**
	 * 判断字符串是否为空
	 * 
	 * @param str
	 * @return boolean
	 */
	public static boolean isNone(String str) {
		if (str == null || "".equals(str)) {
			return true;
		} else {
			return false;
		}
	}

	public static boolean isNotNone(String str) {
		return !isNone(str);
	}

	/**
	 * 数字 String 转换成 Long
	 * 
	 * @param str
	 * @return long
	 */
	public static long parseToLong(String str) {
		if (isNone(str)) {
			return 0;
		} else {
			return Long.parseLong(str);
		}
	}

	/**
	 *Description：数字 String 转换成 int
	 * 
	 * @author Jadeite.Wang
	 *@param str
	 *@return
	 */
	public static int parseToInt(String str) {
		if (isNone(str)) {
			return 0;
		} else {
			return Integer.parseInt(str);
		}
	}

	/**
	 *Description：数字 String 转换成 double
	 * 
	 * @author Jadeite.Wang
	 *@param str
	 *@return
	 */
	public static double parseToDouble(String str) {
		if (isNone(str)) {
			return 0.0;
		} else {
			return Double.parseDouble(str);
		}
	}

	/**
	 * 判断 String[] 是否为空
	 * 
	 * @param array
	 * @return boolean
	 */
	public static boolean isEmpty(String[] array) {
		if (array == null || array.length == 0) {
			return true;
		} else {
			return false;
		}
	}

	public static boolean isNotEmpty(String[] array) {
		return !isEmpty(array);
	}

	/**
	 * a 占 b 的百分比, a/b
	 * 
	 * @param a
	 *            , 分子
	 * @param b
	 *            , 分母
	 * @param pattern
	 *            , 输出格式 , 如0.00则保留两位小数 , 返回百分比则是0.00%
	 * @return String 0.00%
	 */
	public static String longDivideForPercent(long a, long b, String pattern) {
		DecimalFormat format = new DecimalFormat(pattern);
		if (b == 0) {
			return format.format(0);
		}
		double percent = (double) a / b;
		String result = format.format(percent);
		return result;
	}

	/**
	 * 将 String 按照分隔符转换成 String[]
	 * 
	 * @param str
	 *            源字符串
	 * @param pattern
	 *            分隔符
	 * @return String[]
	 */
	public static String[] parseToArray(String str, String pattern) {
		if (isNone(str)) {
			return new String[] {};
		}
		if (str.contains(pattern)) {
			return str.split(pattern);
		} else {
			return new String[] { str };
		}
	}

	/**
	 *Description：将 String 按照分隔符转换成 List<String>
	 * 
	 * @author Jadeite.Wang
	 *@param str
	 *@param pattern
	 *            分隔符
	 *@return List<String>
	 */
	public static List<String> parseToList(String str, String pattern) {
		List<String> result = new ArrayList<String>();
		if (isNone(str)) {
			return result;
		}
		if (str.contains(pattern)) {
			String[] temp = parseToArray(str, pattern);
			for (int i = 0; i < temp.length; i++) {
				result.add(temp[i]);
			}
			return result;
		} else {
			result.add(str);
			return result;
		}
	}

	/**
	 * 编码转换
	 * 
	 * @param str
	 *            源字符串
	 * @param enc
	 *            编码 , GBK/UTF-8
	 * @return String
	 */
	public static String decode(String str, String enc) {
		String result = null;
		try {
			result = URLDecoder.decode(str, enc);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 编码转换
	 * 
	 * @param str
	 *            源字符串
	 * @param enc
	 *            编码 , GBK/UTF-8
	 * @return String
	 */
	public static String encode(String str, String enc) {
		String result = null;
		try {
			result = URLEncoder.encode(str, enc);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 *Description：生成文章ID
	 * 
	 * @author Jadeite.Wang
	 *@return String
	 */
	public static String getArticleId() {
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMddHHmmss0");
		String dateStr = sdf1.format(new Date());
		String randomNum = String
				.valueOf((int) ((Math.random() * 9 + 1) * 1000));
		String fldRecdId = dateStr + randomNum;
		return fldRecdId;
	}

	/**
	 * Description：去除所有HTML标签
	 * 
	 * @author Jadeite.Wang
	 * @param htmlString
	 * @param regex
	 * @param flags
	 * @return String
	 */
	public static String removeHtml(String htmlString) {
		if (StringUtils.isNone(htmlString)) {
			return htmlString;
		}
		Pattern pattern = Pattern.compile("<[^>]+>", Pattern.CASE_INSENSITIVE);
		Matcher matcher = pattern.matcher(htmlString);
		if (matcher.find()) {
			htmlString = matcher.replaceAll("");
		}
		return htmlString;
	}

	/**
	 *Description：去除回车换行符
	 * 
	 * @author Jadeite.Wang
	 *@param htmlString
	 *@return
	 */
	public static String removeCRLF(String htmlString) {
		if (StringUtils.isNone(htmlString)) {
			return htmlString;
		}
		String result = "";
		Pattern pattern = Pattern.compile("[\t\r\n]+");
		Matcher matcher = pattern.matcher(htmlString);
		if (matcher.find()) {
			result = matcher.replaceAll("");
		}
		return result;
	}

	/**
	 *Description：替换字符串
	 * 
	 * @author Jadeite.Wang
	 *@param content
	 *@param regex
	 *@param replacement
	 *@return String
	 */
	public static String replaceAll(String content, String regex,
			String replacement) {
		if (isNone(content)) {
			return content;
		}
		Pattern pattern = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
		Matcher matcher = pattern.matcher(content);
		while (matcher.find()) {
			content = matcher.replaceAll(replacement);
			matcher = pattern.matcher(content);
		}
		return content;
	}

	/**
	 *Description：替换第一次出现的字符串
	 * 
	 * @author Jadeite.Wang
	 *@param content
	 *@param regex
	 *@param replacement
	 *@return String
	 */
	public static String replaceFirst(String content, String regex,
			String replacement) {
		if (isNone(content)) {
			return content;
		}
		Pattern pattern = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
		Matcher matcher = pattern.matcher(content);
		if (matcher.find()) {
			content = matcher.replaceFirst(replacement);
		}
		return content;
	}

	/**
	 *Description：根据分隔符切分字符串并获取其中某个元素
	 * 
	 * @author Jadeite.Wang
	 *@param content
	 *            源字符串
	 *@param pattern
	 *            分隔符
	 *@param group
	 *            数组中元素位置, 起始位置 0
	 *@return String
	 */
	public static String getElement(String content, String pattern, int group) {
		if (isNone(content)) {
			return null;
		}
		if (!content.contains(pattern)) {
			return content;
		}
		String[] result = parseToArray(content, pattern);
		if (group >= result.length) {
			return null;
		}
		return result[group];
	}

	public static String replaceBlank(String str) {
		String dest = null;
		if (str != null) {
			Pattern p = Pattern.compile("\\s*|\t|\r|\n");
			Matcher m = p.matcher(str);
			dest = m.replaceAll("");
		}
		return dest;
	}

	public static String decodeUnicode(String theString) {
		char aChar;
		int len = theString.length();
		StringBuffer outBuffer = new StringBuffer(len);
		for (int x = 0; x < len;) {
			aChar = theString.charAt(x++);
			if (aChar == '\\') {
				aChar = theString.charAt(x++);
				if (aChar == 'u') {
					// Read the xxxx
					int value = 0;
					for (int i = 0; i < 4; i++) {
						aChar = theString.charAt(x++);
						switch (aChar) {
						case '0':
						case '1':
						case '2':
						case '3':
						case '4':
						case '5':
						case '6':
						case '7':
						case '8':
						case '9':
							value = (value << 4) + aChar - '0';
							break;
						case 'a':
						case 'b':
						case 'c':
						case 'd':
						case 'e':
						case 'f':
							value = (value << 4) + 10 + aChar - 'a';
							break;
						case 'A':
						case 'B':
						case 'C':
						case 'D':
						case 'E':
						case 'F':
							value = (value << 4) + 10 + aChar - 'A';
							break;
						default:
							throw new IllegalArgumentException("Malformed   \\uxxxx   encoding.");
						}
					}
					outBuffer.append((char) value);
				} else {
					if (aChar == 't') {
						aChar = '\t';
					} else if (aChar == 'r') {
						aChar = '\r';
					} else if (aChar == 'n') {
						aChar = '\n';
					} else if (aChar == 'f') {
						aChar = '\f';
					}
					outBuffer.append(aChar);
				}
			} else {
				outBuffer.append(aChar);
			}
		}
		return outBuffer.toString();
	}

	public static void main(String[] args) {
		String str = "\u9875";
		System.out.println(decodeUnicode(str));
	}
}
