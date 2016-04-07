package com.wke.webapp.web.action.system.sys001;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.system.sys001.UserService;

/**
 * 删除选定用户
 * 
 * @author gyx
 */
@ParentPackage(value = "default")
@Namespace(value = "/system/sys001")
@Results({ @Result(location = "/WEB-INF/comm/goto.ftl"), })
public class Deleteuser extends BaseAction {

	@Override
	public String execute() {
		if (getService().delUser(this.id)) {
			addActionMessage("删除用户成功");
			setLocation("/system/sys001/getuser.do");
		}
		return SUCCESS;
	}

	// getter and setter
	private int id;
	private String location;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	// Ioc
	@Autowired
	private UserService service;

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}

}
