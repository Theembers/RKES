package com.wke.webapp.comm.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class BeanFactory {
	private static ApplicationContext ctx = null;
	static{
		if(ctx == null){
			//ctx = new XmlWebApplicationContext();
			ctx = new GenericXmlApplicationContext("../applicationContext.xml","applicationContext-*.xml");
		}
	}
	
	public static ApplicationContext getApplicationContext(){
		return ctx;
	}
	
	public static void main(String[] args) {
		BeanFactory.getApplicationContext();
	}
}
