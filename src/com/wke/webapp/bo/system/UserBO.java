package com.wke.webapp.bo.system;

import java.util.Date;

import com.wke.webapp.comm.struts.bo.BaseBO;

/**
 * 用户BO
 * @author gyx
 *
 */
public class UserBO extends BaseBO {
	
	private int id;
	private String username;
	private String rname;
	private String password;
	private String email;
	private String phone;
	private Date zcsj;
	private int from;
	private int to;
	
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public Date getZcsj() {
		return zcsj;
	}
	public void setZcsj(Date zcsj) {
		this.zcsj = zcsj;
	}
}
