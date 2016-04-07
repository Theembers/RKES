package com.wke.webapp.bo.demo;

import com.wke.webapp.comm.struts.bo.BaseBO;

/**
 * t_pt_demo_content的BO
 * 
 * @author gyx
 */
public class ContentBO extends BaseBO {

	private int id;
	private String content;

	// get and set

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
