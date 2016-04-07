package com.wke.webapp.vo.demo;

import com.wke.webapp.comm.struts.bo.BaseVO;

/**
 * t_pt_code的vO
 * 
 * @author gyx
 */
public class CodeVO extends BaseVO {

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
