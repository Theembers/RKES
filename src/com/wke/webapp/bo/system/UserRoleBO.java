package com.wke.webapp.bo.system;

import java.util.List;

import com.wke.webapp.comm.struts.bo.BaseBO;

/**
 * 用户角色BO
 * @author gyx
 *
 */
public class UserRoleBO extends BaseBO {
	
	private int id;
	private List<Integer> jsid;
	
	public List<Integer> getJsid() {
		return jsid;
	}
	public void setJsid(List<Integer> jsid) {
		this.jsid = jsid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
