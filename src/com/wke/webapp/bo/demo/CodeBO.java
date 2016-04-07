package com.wke.webapp.bo.demo;

import com.wke.webapp.comm.struts.bo.BaseBO;

/**
 * t_pt_code的BO
 * 
 * @author gyx
 */
public class CodeBO extends BaseBO {

	private int id;
	private String code;

	// get and set

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
