package com.wke.webapp.comm.security;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;



public class DES {
	
	public final static String keyword = "1A2B3C4D5E6F7890"; 
	
	private Key key;

	private Cipher cipher;

	public DES() {}

	public static DES getInstance(String key) throws NoSuchPaddingException, NoSuchAlgorithmException {
		return getInstance(getKeyByStr(key));
	}

	public static DES getInstance(byte key[]) throws NoSuchPaddingException, NoSuchAlgorithmException {
		DES des = new DES();
		if (des.key == null) {
			SecretKeySpec spec = new SecretKeySpec(key, "DES");
			des.key = spec;
		}
		des.cipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
		return des;
	}

	public byte[] encrypt(byte b[]) throws InvalidKeyException, BadPaddingException, IllegalBlockSizeException,
			IllegalStateException {
		byte byteFina[] = null;
		cipher.init(1, key);
		byteFina = cipher.doFinal(b);
		return byteFina;
	}

	public byte[] decrypt(byte b[]) throws InvalidKeyException, BadPaddingException, IllegalBlockSizeException,
			IllegalStateException {
		byte byteFina[] = null;
		cipher.init(2, key);
		byteFina = cipher.doFinal(b);
		return byteFina;
	}
	
	public String encryptStr(String str) throws InvalidKeyException, BadPaddingException, IllegalBlockSizeException, IllegalStateException, UnsupportedEncodingException{
		
		if(str==null || str.trim().length()==0){
			return null;
		}
		return byte2hex(encrypt(str.getBytes("UTF-8")));
	}
	
	public String decryptStr(String str) throws InvalidKeyException, BadPaddingException, IllegalBlockSizeException, IllegalStateException, UnsupportedEncodingException{
		if(str==null || str.trim().length()==0){
			return null;
		}
		return new String(decrypt(hex2byte(str.getBytes("UTF-8"))) , "UTF-8");
	}
	
	/**
	 *
	 * 二行制转字符串
	 *
	 * @param b
	 *
	 * @return
	 *
	 */

	  public static String byte2hex(byte[] b) {

	        String hs = "";

	        String stmp = "";

	        for (int n = 0; n < b.length; n++) {

	            stmp = (java.lang.Integer.toHexString(b[n] & 0XFF));

	            if (stmp.length() == 1)

	                hs = hs + "0" + stmp;

	            else

	                hs = hs + stmp;

	        }

	        return hs.toUpperCase();

	   }

	  

	  public static byte[] hex2byte(byte[] b) {

	    if((b.length%2)!=0)

	       throw new IllegalArgumentException("长度不是偶数");

	        byte[] b2 = new byte[b.length/2];

	        for (int n = 0; n < b.length; n+=2) {

	          String item = new String(b,n,2);

	          b2[n/2] = (byte)Integer.parseInt(item,16);

	        }

	    return b2;
	  }

	public static byte[] getKeyByStr(String str) {
		byte bRet[] = new byte[str.length() / 2];
		for (int i = 0; i < str.length() / 2; i++) {
			Integer itg = new Integer(16 * getChrInt(str.charAt(2 * i)) + getChrInt(str.charAt(2 * i + 1)));
			bRet[i] = itg.byteValue();
		}

		return bRet;
	}

	private static int getChrInt(char chr) {
		int iRet = 0;
		if (chr == "0".charAt(0))
			iRet = 0;
		if (chr == "1".charAt(0))
			iRet = 1;
		if (chr == "2".charAt(0))
			iRet = 2;
		if (chr == "3".charAt(0))
			iRet = 3;
		if (chr == "4".charAt(0))
			iRet = 4;
		if (chr == "5".charAt(0))
			iRet = 5;
		if (chr == "6".charAt(0))
			iRet = 6;
		if (chr == "7".charAt(0))
			iRet = 7;
		if (chr == "8".charAt(0))
			iRet = 8;
		if (chr == "9".charAt(0))
			iRet = 9;
		if (chr == "A".charAt(0))
			iRet = 10;
		if (chr == "B".charAt(0))
			iRet = 11;
		if (chr == "C".charAt(0))
			iRet = 12;
		if (chr == "D".charAt(0))
			iRet = 13;
		if (chr == "E".charAt(0))
			iRet = 14;
		if (chr == "F".charAt(0))
			iRet = 15;
		return iRet;
	}
}


