package com.wke.webapp.bo.system;

import com.wke.webapp.comm.struts.bo.BaseBO;


/**
 * 用户角色列表
 * @author gyx
 *
 */
public class YhRole extends BaseBO {

	private int jsid;
	
	private String jsmc;

	public int getJsid() {
		return jsid;
	}

	public void setJsid(int jsid) {
		this.jsid = jsid;
	}

	public String getJsmc() {
		return jsmc;
	}

	public void setJsmc(String jsmc) {
		this.jsmc = jsmc;
	}
	
}
