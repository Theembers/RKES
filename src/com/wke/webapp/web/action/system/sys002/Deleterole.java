package com.wke.webapp.web.action.system.sys002;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.system.sys002.RoleService;

/**
 * 删除选定角色
 * 
 * @author gyx
 */
@ParentPackage(value = "default")
@Namespace(value = "/system/sys002")
@Results({ @Result(location = "/WEB-INF/comm/goto.ftl") })
public class Deleterole extends BaseAction {

	@Override
	public String execute() {
		if (getRoleService().delRole(this.id)) {
			addActionMessage("删除角色成功");
			setLocation("/system/sys002/getrole.do");
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
	private RoleService roleService;

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

}
