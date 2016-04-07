package com.wke.webapp.bo.login;

import com.wke.webapp.comm.struts.bo.BaseBO;

public class LoginBO extends BaseBO {
	
	private String username;
	private String password;
	private String url;
	private String initUrl;
	private int id;
	private int fatherid;
	private String gnmc;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getInitUrl() {
		return initUrl;
	}
	public void setInitUrl(String initUrl) {
		this.initUrl = initUrl;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFatherid() {
		return fatherid;
	}
	public void setFatherid(int fatherid) {
		this.fatherid = fatherid;
	}
	public String getGnmc() {
		return gnmc;
	}
	public void setGnmc(String gnmc) {
		this.gnmc = gnmc;
	}
}
