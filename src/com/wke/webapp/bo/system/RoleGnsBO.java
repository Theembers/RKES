package com.wke.webapp.bo.system;

import java.util.List;

import com.wke.webapp.comm.struts.bo.BaseBO;

/**
 * 角色功能树BO
 * @author gyx
 *
 */
public class RoleGnsBO extends BaseBO {
	
	private int id;
	private List<Integer> gnid;
	public List<Integer> getGnid() {
		return gnid;
	}
	public void setGnid(List<Integer> gnid) {
		this.gnid = gnid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
