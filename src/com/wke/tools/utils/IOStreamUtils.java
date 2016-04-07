package com.wke.tools.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class IOStreamUtils {
	
	/**
	 *Description：将对象转化为流
	 *@author Jadeite.Wang
	 *@param obj
	 *@return
	 *@throws IOException
	 */
	public static byte[] toByteArray(Object obj) throws IOException {
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		ObjectOutputStream objectOut = new ObjectOutputStream(output);
		objectOut.writeObject(obj);
		objectOut.close();
		output.close();
		return output.toByteArray();
	}
	
	/**
	 *Description：将流还原成对象
	 *@author Jadeite.Wang
	 *@param buf
	 *@return
	 *@throws IOException
	 *@throws ClassNotFoundException
	 */
	public static Object toObject(byte[] buf) throws IOException, ClassNotFoundException {
		ByteArrayInputStream input = new ByteArrayInputStream(buf);
		ObjectInputStream objectInput = new ObjectInputStream(input);
		Object object = objectInput.readObject();
		objectInput.close();
		input.close();
		return object;
	}
}
