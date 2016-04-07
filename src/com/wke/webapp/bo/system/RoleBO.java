package com.wke.webapp.bo.system;

import java.util.Date;

import com.wke.webapp.comm.struts.bo.BaseBO;

/**
 * 角色Bo
 * @author gyx
 *
 */
public class RoleBO extends BaseBO {
	
	private int id;
	private String jsmc;
	private String jsms;
	private Date lrsj;
	private int from;
	private int to;
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
	public Date getLrsj() {
		return lrsj;
	}
	public void setLrsj(Date lrsj) {
		this.lrsj = lrsj;
	}
	public int getFrom() {
		return from;
	}
	public void setFrom(int from) {
		this.from = from;
	}
	public int getTo() {
		return to;
	}
	public void setTo(int to) {
		this.to = to;
	}
}
