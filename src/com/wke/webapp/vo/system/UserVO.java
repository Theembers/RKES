package com.wke.webapp.vo.system;

import java.util.List;

import com.wke.webapp.comm.struts.bo.BaseVO;

public class UserVO extends BaseVO {
	
	private int id;
	private String username;
	private String rname;
	private String password;
	private String password1;
	private String email;
	private String phone;
	private List<Integer> jsid;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public List<Integer> getJsid() {
		return jsid;
	}
	public void setJsid(List<Integer> jsid) {
		this.jsid = jsid;
	}
	public String getPassword1() {
		return password1;
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
