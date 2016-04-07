package com.wke.webapp.comm.utility;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 加密算法类
 * @author King
 *
 */
public class Security {
	private static String encode(String s, String type) throws NoSuchAlgorithmException {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'a', 'b', 'c', 'd', 'e', 'f' };
		char str[];
		byte strTemp[] = s.getBytes();
		MessageDigest mdTemp = MessageDigest.getInstance(type);
		mdTemp.update(strTemp);
		byte md[] = mdTemp.digest();
		int j = md.length;
		str = new char[j * 2];
		int k = 0;
		for (int i = 0; i < j; i++) {
			byte byte0 = md[i];
			str[k++] = hexDigits[byte0 >>> 4 & 0xf];
			str[k++] = hexDigits[byte0 & 0xf];
		}

		return new String(str);

	}
	
	/**
	 * MD5 加密
	 * @param s
	 * @return
	 * @throws NoSuchAlgorithmException
	 */
	public static String StringByMD5(String s) throws NoSuchAlgorithmException {
		return encode(s, "MD5");
	}
	
	/**
	 * SHA-1 加密
	 * @param s
	 * @return
	 * @throws NoSuchAlgorithmException
	 */
	public static String StringBySHA1(String s) throws NoSuchAlgorithmException {
		return encode(s, "SHA-1");
	}
	
}
