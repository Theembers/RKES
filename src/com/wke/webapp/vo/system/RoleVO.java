package com.wke.webapp.vo.system;

import java.util.List;

import com.wke.webapp.comm.struts.bo.BaseVO;

public class RoleVO extends BaseVO {
	
	private int id;
	private String jsmc;
	private String jsms;
	private List<Integer> gnid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getJsmc() {
		return jsmc;
	}
	public void setJsmc(String jsmc) {
		this.jsmc = jsmc;
	}
	public String getJsms() {
		return jsms;
	}
	public void setJsms(String jsms) {
		this.jsms = jsms;
	}
	public List<Integer> getGnid() {
		return gnid;
	}
	public void setGnid(List<Integer> gnid) {
		this.gnid = gnid;
	}
}
