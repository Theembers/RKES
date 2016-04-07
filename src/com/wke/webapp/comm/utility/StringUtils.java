package com.wke.webapp.comm.utility;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;

/**
 * <p>
 * Title:
 * </p>
 * <p>
 * Description:
 * </p>
 * <p>
 * Copyright: Copyright (c) 2008 Idea Company
 * </p>
 * <p>
 * Company: idea
 * </p>
 * 
 * @author lifeng
 * @version 1.0
 */

public class StringUtils {

	public static final Logger logger = LoggerFactory
			.getLogger(StringUtils.class);

	public StringUtils() {
	}

	private static final int BUFFER_SIZE = 1024 * 2;// 字段串压缩算法使用的缓冲区大小

	/**
	 * 字符串的字符集类型转换
	 * 
	 * @param src
	 *            需要转换的字符串
	 * @param fromCharSet
	 *            字符串当前的字符集类型，如"iso-8859-1","GBK"等
	 * @param toCharSet
	 *            目标字符集类型，如"iso-8859-1","GBK"等
	 * @return 转换后的字符串,失败返回null
	 */
	public static String charSetConvert(String src, String fromCharSet,
			String toCharSet) {
		if (src == null) {
			return src;
		}
		try {
			return new String(src.getBytes(fromCharSet), toCharSet);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 将iso8859的字符集转换成UTF-8字符集
	 * 
	 * @param src
	 *            iso8859字符串
	 * @return 转化后的字符串,失败返回null
	 */
	public static String isoToUTF8(String src) {
		// String arch = System.getProperty("os.arch");
		// if ("x86".equalsIgnoreCase(arch)) {
		// return src;
		// }
		return charSetConvert(src, "iso-8859-1", "UTF-8");
	}

	/**
	 *
	 * @将iso8859的字符集转换成UTF-8字符集
	 * @param src
	 *            iso8859字符串,force 强制转换标志
	 * @return 转化后的字符串,失败返回null
	 */
	public static String isoToUTF8(String src, boolean force) {
		if (force) {
			return charSetConvert(src, "iso-8859-1", "UTF-8");
		} else {
			return isoToUTF8(src);
		}
	}

	/**
	 * 将iso8859的字符集转换成GBK字符集
	 * 
	 * @param src
	 *            iso8859字符串
	 * @return 转化后的字符串,失败返回null
	 */
	public static String isoToGBK(String src) {
		return charSetConvert(src, "iso-8859-1", "GBK");
	}

	/**
	 * 将GBK的字符集转换成iso8859字符集
	 * 
	 * @param src
	 *            GBK字符串
	 * @return 转化后的字符串,失败返回null
	 */
	public static String gbkToISO(String src) {
		return charSetConvert(src, "GBK", "iso-8859-1");
	}

	/**
	 * 字符替换函数 <br>
	 * 比如 String a = "ccddaa"; replace(a,"dd","xx") 将返回 ccxxaa
	 * 
	 * @param str
	 *            需要替换的原始字符串
	 * @param pattern
	 *            需要被替换掉的字符串
	 * @param replace
	 *            希望被替换成的字符串
	 * @return 返回替换后的字符串
	 */
	public static String replace(String str, String pattern, String replace) {
		int s = 0;
		int e = 0;
		StringBuffer result = new StringBuffer();
		while ((e = str.indexOf(pattern, s)) >= 0) {
			result.append(str.substring(s, e));
			result.append(replace);
			s = e + pattern.length();
		}
		result.append(str.substring(s));
		return result.toString();
	}

	/**
	 * 重复一个字符串 n 次，比如 abcabcabc
	 * 
	 * @param str
	 *            需要重复的字符串
	 * @param repeat
	 *            重复的次数
	 * @return 重复后生成的字符串
	 */
	public static String repeat(String str, int repeat) {
		StringBuffer buffer = new StringBuffer(repeat * str.length());
		for (int i = 0; i < repeat; i++) {
			buffer.append(str);
		}
		return buffer.toString();
	}

	/**
	 * 获得一个字符串的最左边的n个字符，如果长度len的长度大于字符串的总长度，返回字符串本身
	 * 
	 * @param str
	 *            原始的字符串
	 * @param len
	 *            左边的长度
	 * @return 最左边的字符
	 */
	public static String left(String str, int len) {
		if (len < 0) {
			throw new IllegalArgumentException("Requested String length " + len
					+ " is less than zero");
		}
		if ((str == null) || (str.length() <= len)) {
			return str;
		} else {
			return str.substring(0, len);
		}
	}

	/**
	 * 获得一个字符串的最右边的n个字符，如果长度len的长度大于字符串的总长度，返回字符串本身
	 *
	 * @param str
	 *            原始的字符串
	 * @param len
	 *            右边的长度
	 * @return 最右边的字符
	 */
	public static String right(String str, int len) {
		if (len < 0) {
			throw new IllegalArgumentException("Requested String length " + len
					+ " is less than zero");
		}
		if ((str == null) || (str.length() <= len)) {
			return str;
		} else {
			return str.substring(str.length() - len);
		}
	}

	/**
	 * 将给定的字符串格式化为定长字符串, 原始字符串长度超过给定长度的,按照给定长度从左到右截取 如果原始字符串小于给定长度,
	 * 则按照给定字符在左端补足空位
	 * 
	 * @param src
	 *            原始字符串
	 * @param s2
	 *            补充用字符,
	 * @param length
	 *            格式化后长度
	 * @return 格式化后字符串
	 */
	public static String formatString(String src, char s2, int length) {
		String retValue = src;
		if (src == null || length <= 0) {
			return null;
		}

		if (src.length() > length) {
			retValue = src.substring(0, length);
		}

		for (int i = 0; i < length - src.length(); i++) {
			retValue = s2 + retValue;
		}

		return retValue;
	}

	/**
	 * 将一个浮点数转换为人民币的显示格式：￥##,###.##
	 * 
	 * @param value
	 *            浮点数
	 * @return 人民币格式显示的数字
	 */
	public static String toRMB(double value) {
		NumberFormat nf = NumberFormat.getCurrencyInstance(Locale.CHINA);
		return nf.format(value);
	}

	/**
	 * 默认保留小数点后两位，将一个浮点数转换为定长小数位的小数 ######.##
	 * 
	 * @param value
	 *            浮点数
	 * @return 定长小数位的小数
	 */
	public static String toCurrencyWithoutComma(double value) {
		String retValue = toCurrency(value);
		retValue = retValue.replaceAll(",", "");
		return retValue;
	}

	/**
	 * 默认保留小数点后两位，将一个浮点数转换为货币的显示格式：##,###.##
	 * 
	 * @param value
	 *            浮点数
	 * @return 货币格式显示的数字
	 */
	public static String toCurrency(double value) {
		return toCurrency(value, 2);
	}

	/**
	 * 根据指定的小数位数，将一个浮点数转换为货币的显示格式
	 * 
	 * @param value
	 *            浮点数
	 * @param decimalDigits
	 *            小数点后保留小数位数
	 * @return 货币格式显示的数字 <br>
	 * <br>
	 *         例： toCurrency(123456.789,5) 将返回 "123,456.78900"
	 */
	public static String toCurrency(double value, int decimalDigits) {
		String format = "#,##0." + repeat("0", decimalDigits);
		NumberFormat nf = new DecimalFormat(format);
		return nf.format(value);
	}

	/**
	 * 将一个字符串格式化为给定的长度，过长的话按照给定的长度从字符串左边截取，反之以给定的 字符在字符串左边补足空余位 <br>
	 * 比如： <br>
	 * prefixStr("abc",'0',5) 将返回 00aaa <br>
	 * prefixStr("abc",'0',2) 将返回 ab
	 * 
	 * @param source
	 *            原始字符串
	 * @param profix
	 *            补足空余位时使用的字符串
	 * @param length
	 *            格式化后字符串长度
	 * @return 返回格式化后的字符串,异常返回null
	 */
	public static String prefixStr(String source, char profix, int length) {
		String strRet = source;
		if (source == null) {
			return strRet;
		}
		if (source.length() >= length) {
			strRet = source.substring(0, length);
		}

		if (source.length() < length) {
			for (int i = 0; i < length - source.length(); i++) {
				strRet = "" + profix + strRet;
			}
		}
		return strRet;
	}

	/**
	 * 将"null"和null转换为""
	 * 
	 * @param str
	 *            String
	 * @return String
	 */
	public static String trimNull(String str) {
		String result = "";
		if (str != null && !"null".equals(str)) {
			result = stringTrim(str);
		}
		return result;
	}

	/**
	 * 格式化字符串,将字符串trim()后返回. 如果字符串为null,则返回长度为零的字符串("")
	 * 
	 * @param value
	 *            被格式化字符串
	 * @return 格式化后的字符串
	 */
	public static String stringTrim(String value) {
		if (value == null) {
			return "";
		}
		return value.trim();
	}

	/**
	 * 将一个字符串格式化为给定的长度，过长的话按照给定的长度从字符串左边截取，反之以给定的 字符在字符串右边补足空余位 <br>
	 * 比如： <br>
	 * suffixStr("abc",'0',5) 将返回 aaa00 <br>
	 * suffixStr("abc",'0',2) 将返回 ab
	 * 
	 * @param source
	 *            原始字符串
	 * 
	 * @param profix
	 *            补足空余位时使用的字符串
	 * @param length
	 *            格式化后字符串长度
	 * 
	 * @return 返回格式化后的字符串,异常返回null
	 */
	public static String suffixStr(String source, char suffix, int length) {
		String strRet = source;
		if (source == null) {
			return strRet;
		}
		if (source.length() >= length) {
			strRet = source.substring(0, length);
		}
		if (source.length() < length) {
			for (int i = 0; i < length - source.length(); i++) {
				strRet += suffix;
			}
		}
		return strRet;
	}

	/**
	 * 将输入流转换成byte数组，不对byte数组进行压缩
	 * 
	 * @param is
	 * @return
	 * @throws IOException
	 * 
	 * @author 张久旭
	 */
	public static byte[] convertInputStreamToByteArray(InputStream is)
			throws IOException {
		byte[] value = null;
		ByteArrayOutputStream baos = null;
		byte[] buffer = new byte[BUFFER_SIZE];
		int flag = 0;

		try {
			baos = new ByteArrayOutputStream();
			while ((flag = is.read(buffer, 0, BUFFER_SIZE)) != -1) {
				baos.write(buffer, 0, flag);
				baos.flush();
			}
			value = baos.toByteArray();
		} catch (IOException ex) {
			logger.error("进行流压缩时发生错误", ex);
			throw ex;
		} finally {
			if (baos != null) {
				try {
					baos.close();
				} catch (IOException ex) {
					logger.error("关闭ByteArrayOutputStream流时发生错误", ex);
					throw ex;
				}
			}
		}
		return value;
	}

	/**
	 * 
	 * convertDbColToMapKey <br>
	 * 根据数据库的列字段名将其按BO定义格式转换为BO中属性定义
	 * 
	 * @param dbCol
	 *            数据库的字段
	 * @return String BO定义格式属性
	 */
	public static String convertDbColToMapKey(String dbCol) {
		String mapKey = "";
		String str = dbCol.toLowerCase();
		String[] ss = str.split("_");
		StringBuffer key = new StringBuffer();
		if (ss.length > 1) {
			key.append(ss[0]);
			for (int j = 1; j < ss.length; j++) {
				key.append(ss[j].substring(0, 1).toUpperCase()).append(
						ss[j].substring(1));
			}
		} else {
			key.append(str);
		}
		mapKey = key.toString();
		return mapKey;
	}

	/**
	 * 将一个key转换成数据库字段的形式
	 * 
	 * @param key
	 * @return
	 */
	public static String convertMapKeyToDbCol(String key) {
		char[] charArray = key.toCharArray();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < charArray.length; i++) {
			char ch = charArray[i];
			if (ch >= 'A' && ch <= 'Z') {
				sb.append("_" + (char) (ch + 32));
			} else {
				sb.append(ch);
			}
		}
		return sb.toString();
	}

	/**
	 * 将数字字符串转换为人民币大写
	 * 
	 * @param value
	 *            金额人民币数字字符串
	 * @return 转换后的人民币大写字符串
	 */
	public static String changeToBig(String value) {

		if (null == value || "".equals(value.trim())) {
			return "零";
		}
		String flag = value;
		if ((flag.substring(0, 1).equals("-")))
			value = value.substring(1);

		int len = value.length();

		String strCheck, strArr, strFen, strDW, strNum, strBig, strNow;
		double d = 0;
		try {
			d = Double.parseDouble(value);
		} catch (Exception e) {
			return "数据" + value + "非法！";
		}

		strCheck = value + ".";
		int dot = strCheck.indexOf(".");
		if (dot > 12) {
			return "数据" + value + "过大，无法处理！";
		}

		try {
			int i = 0;
			strBig = "";
			strDW = "";
			strNum = "";

			// long intFen = (long)(d*100); //原来的处理方法

			/**
			 * 增加了对double转换为long时的精度， 例如:(long)(208123.42 * 100) = 20812341
			 * 解决了该问题
			 */
			BigDecimal big = new BigDecimal(d);
			big = big.multiply(new BigDecimal(100)).setScale(2, 4);
			long intFen = big.longValue();

			strFen = String.valueOf(intFen);
			int lenIntFen = strFen.length();
			while (lenIntFen != 0) {
				i++;
				switch (i) {
				case 1:
					strDW = "分";
					break;
				case 2:
					strDW = "角";
					break;
				case 3:
					strDW = "元";
					break;
				case 4:
					strDW = "拾";
					break;
				case 5:
					strDW = "佰";
					break;
				case 6:
					strDW = "仟";
					break;
				case 7:
					strDW = "万";
					break;
				case 8:
					strDW = "拾";
					break;
				case 9:
					strDW = "佰";
					break;
				case 10:
					strDW = "仟";
					break;
				case 11:
					strDW = "亿";
					break;
				case 12:
					strDW = "拾";
					break;
				case 13:
					strDW = "佰";
					break;
				case 14:
					strDW = "仟";
					break;
				}
				switch (strFen.charAt(lenIntFen - 1)) { // 选择数字

				case '1':
					strNum = "壹";
					break;
				case '2':
					strNum = "贰";
					break;
				case '3':
					strNum = "叁";
					break;
				case '4':
					strNum = "肆";
					break;
				case '5':
					strNum = "伍";
					break;
				case '6':
					strNum = "陆";
					break;
				case '7':
					strNum = "柒";
					break;
				case '8':
					strNum = "捌";
					break;
				case '9':
					strNum = "玖";
					break;
				case '0':
					strNum = "零";
					break;
				}
				// 处理特殊情况
				strNow = strBig;
				// 分为零时的情况

				if ((i == 1) && (strFen.charAt(lenIntFen - 1) == '0')) {
					strBig = "整";
					// 角为零时的情况
				} else if ((i == 2) && (strFen.charAt(lenIntFen - 1) == '0')) { // 角分同时为零时的情况
					if (!strBig.equals("整")) {
						strBig = "零" + strBig;
					}
				}
				// 元为零的情况
				else if ((i == 3) && (strFen.charAt(lenIntFen - 1) == '0')) {
					strBig = "元" + strBig;
					// 拾－仟中一位为零且其前一位（元以上）不为零的情况时补零

				} else if ((i < 7) && (i > 3)
						&& (strFen.charAt(lenIntFen - 1) == '0')
						&& (!("" + strNow.charAt(0)).equals("零"))
						&& (!("" + strNow.charAt(0)).equals("元"))) {
					strBig = "零" + strBig;
					// 拾－仟中一位为零且其前一位（元以上）也为零的情况时跨过

				} else if ((i < 7) && (i > 3)
						&& (strFen.charAt(lenIntFen - 1) == '0')
						&& (("" + strNow.charAt(0)).equals("零"))) {
				}
				// 拾－仟中一位为零且其前一位是元且为零的情况时跨过
				else if ((i < 7) && (i > 3)
						&& (strFen.charAt(lenIntFen - 1) == '0')
						&& (("" + strNow.charAt(0)).equals("元"))) {
				}
				// 当万为零时必须补上万字

				else if ((i == 7) && (strFen.charAt(lenIntFen - 1) == '0')) {
					strBig = "万" + strBig;
					// 拾万－仟万中一位为零且其前一位（万以上）不为零的情况时补零

				} else if ((i < 11) && (i > 7)
						&& (strFen.charAt(lenIntFen - 1) == '0')
						&& (!("" + strNow.charAt(0)).equals("零"))
						&& (!("" + strNow.charAt(0)).equals("万"))) {
					strBig = "零" + strBig;
					// 拾万－仟万中一位为零且其前一位（万以上）也为零的情况时跨过

				} else if ((i < 11) && (i > 7)
						&& (strFen.charAt(lenIntFen - 1) == '0')
						&& (("" + strNow.charAt(0)).equals("万"))) {
				}
				// 拾万－仟万中一位为零且其前一位为万位且为零的情况时跨过

				else if ((i < 11) && (i > 7)
						&& (strFen.charAt(lenIntFen - 1) == '0')
						&& (("" + strNow.charAt(0)).equals("零"))) {
				}
				// 万位为零且存在仟位和十万以上时，在万仟间补零
				else if ((i < 11) && (i > 8)
						&& (strFen.charAt(lenIntFen - 1) == '0')
						&& (("" + strNow.charAt(0)).equals("万"))
						&& (("" + strNow.charAt(2)).equals("仟"))) {
					strBig = strNum + strDW + "万零"
							+ strBig.substring(1, strBig.length());
					// 单独处理亿位
				} else if (i == 11) {
					// 亿位为零且万全为零存在仟位时，去掉万补为零

					if ((strFen.charAt(lenIntFen - 1) == '0')
							&& (("" + strNow.charAt(0)).equals("万"))
							&& (("" + strNow.charAt(2)).equals("仟"))) {
						strBig = "亿" + "零"
								+ strBig.substring(1, strBig.length());
						// 亿位为零且万全为零不存在仟位时，去掉万

					} else if ((strFen.charAt(lenIntFen - 1) == '0')
							&& (("" + strNow.charAt(0)).equals("万"))
							&& (("" + strNow.charAt(2)).equals("仟"))) {
						strBig = "亿" + strBig.substring(1, strBig.length());
						// 亿位不为零且万全为零存在仟位时，去掉万补为零
					} else if ((("" + strNow.charAt(0)).equals("万"))
							&& (("" + strNow.charAt(2)).equals("仟"))) {
						strBig = strNum + strDW + "零"
								+ strBig.substring(1, strBig.length());
						// 亿位不为零且万全为零不存在仟位时，去掉万
					} else if ((("" + strNow.charAt(0)).equals("万"))
							&& (("" + strNow.charAt(2)).equals("仟"))) {
						strBig = strNum + strDW
								+ strBig.substring(1, strBig.length());
						// 其他正常情况
					} else {
						if (("" + strBig.charAt(0)).equals("万")) {
							strBig = strNum + strDW
									+ strBig.substring(1, strBig.length())
									+ " ";
						} else {
							strBig = strNum + strDW + strBig;
						}
					}

				} // 拾亿－仟亿中一位为零且其前一位（亿以上）不为零的情况时补零

				else if ((i < 15) && (i > 11)
						&& (strFen.charAt(lenIntFen - 1) == '0')
						&& (("" + strNow.charAt(0)).equals("零"))
						&& (!("" + strNow.charAt(0)).equals("亿"))) {
					strBig = "零" + strBig;
					// 拾亿－仟亿中一位为零且其前一位（亿以上）也为零的情况时跨过

				} else if ((i < 15) && (i > 11)
						&& (strFen.charAt(lenIntFen - 1) == '0')
						&& (("" + strNow.charAt(0)).equals("亿"))) {
				}
				// 拾亿－仟亿中一位为零且其前一位为亿位且为零的情况时跨过

				else if ((i < 15) && (i > 11)
						&& (strFen.charAt(lenIntFen - 1) == '0')
						&& (("" + strNow.charAt(0)).equals("零"))) {
				}
				// 亿位为零且不存在仟万位和十亿以上时去掉上次写入的零

				else if ((i < 15) && (i > 11)
						&& (strFen.charAt(lenIntFen - 1) != '0')
						&& (("" + strNow.charAt(0)).equals("零"))
						&& (("" + strNow.charAt(1)).equals("亿"))
						&& (!("" + strNow.charAt(3)).equals("仟"))) {
					strBig = strNum + strDW
							+ strBig.substring(1, strBig.length());
					// 亿位为零且存在仟万位和十亿以上时，在亿仟万间补零
				} else if ((i < 15) && (i > 11)
						&& (strFen.charAt(lenIntFen - 1) != '0')
						&& (("" + strNow.charAt(0)).equals("零"))
						&& (("" + strNow.charAt(1)).equals("亿"))
						&& (("" + strNow.charAt(3)).equals("仟"))) {
					strBig = strNum + strDW + "亿零"
							+ strBig.substring(2, strBig.length());
				} else {
					strBig = strNum + strDW + strBig;
				}
				strFen = strFen.substring(0, lenIntFen - 1);
				lenIntFen--;
			}
			if ((flag.substring(0, 1).equals("-")))
				return "负" + strBig;
			else
				return strBig;

		} catch (Exception e) {
			return "";
		}
	}

	public static String filtrateString(String content) {
		if (content == null || "".equals(content.trim())) {
			return content;
		}
		// content = content.replaceAll("&", "&amp;");
		content = content.replaceAll("<", "&lt;");
		content = content.replaceAll(">", "&gt;");
		content = content.replaceAll("\t", "    ");
		content = content.replaceAll("\r\n", "\n");
		content = content.replaceAll("\n", "<br/>");
		content = content.replaceAll("'", "&#39;");
		content = content.replaceAll("\\\\", "&#92;");
		content = content.replaceAll("\"", "&quot;");
		return content;
	}

	/**
	 * 特殊字符转文本
	 * 
	 * @param content
	 *            要转换的内容
	 * @return
	 */
	public static String reverseString(String content) {
		if (content == null || "".equals(content.trim())) {
			return content;
		}
		// content = content.replaceAll("&amp;", "&");
		content = content.replaceAll("&lt;", "<");
		content = content.replaceAll("&gt;", ">");
		content = content.replaceAll("    ", "\t");
		content = content.replaceAll("\n", "\r\n");
		content = content.replaceAll("<br/>", "\n");
		content = content.replaceAll("&#39;", "'");
		content = content.replaceAll("&quot;", "\"");
		content = content.replaceAll("&#92;", "\\\\");
		content = content.replaceAll("＜", "<");
		content = content.replaceAll("＞", ">");
		content = content.replaceAll("＂", "\"");
		return content;
	}

	/**
	 * 判断字符串是否为数字
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNumeric(String str) {
		for (int i = 0; i < str.length(); i++) {
			if (!Character.isDigit(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}

	/**
	 * 替换特殊字符串
	 * 
	 * @Title: ResplaceString
	 * @param @param content
	 * @param @return
	 * @return String
	 * @throws
	 */
	public static String ResplaceString(String content) {
		if (content == null || "".equals(content.trim())) {
			return content;
		}
		content = content.replaceAll("<", "＜");
		content = content.replaceAll(">", "＞");
		// content = content.replaceAll("/", "／");
		content = content.replaceAll("\"", "＂");
		return content;
	}

}