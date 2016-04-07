package com.wke.webapp.vo.demo;

import com.wke.webapp.comm.struts.bo.BaseVO;

/**
 * t_pt_demo_content的VO
 * 
 * @author gyx
 */
public class ContentVO extends BaseVO {

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
