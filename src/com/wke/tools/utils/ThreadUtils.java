package com.wke.tools.utils;

/**
 * 
 *类描述：线程睡眠工具类
 *@author: Jadeite.Wang
 *@date： 日期：2013-7-6 时间：上午11:23:45
 */
public class ThreadUtils {
	/**
	 * 当前线程睡眠
	 * @param Ns	秒数
	 */
	public static void currentThreadSleepNs(int Ns){
		try {
			Thread.currentThread();
			Thread.sleep(1000*Ns);
		} catch (InterruptedException e1) {
			e1.printStackTrace();
		}
	}
	
	/**
	 * 程序线程睡眠
	 * @param Ns	秒数
	 */
	public static void threadSleepNs(int Ns){
		try {
			Thread.sleep(1000*Ns);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}
