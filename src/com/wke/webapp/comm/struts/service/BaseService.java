package com.wke.webapp.comm.struts.service;

import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;

public class BaseService {
	
	public Logger getLogger(){
		return LoggerFactory.getLogger(this.getClass());
	}
	
}
