/**
 * 
 */
package com.wke.webapp.web.action.system.sys002;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.system.sys002.RoleService;

/**
 * 新增用户初始化
 * 
 * @author gyx
 */
@ParentPackage(value = "default")
@Namespace(value = "/system/sys002")
@Results({ @Result(location = "/WEB-INF/system/sys002/addRole.ftl") })
public class Initadd extends BaseAction {

	@Override
	public String execute() {

		setTree(roleService.getgns(null));

		return SUCCESS;
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

	// getter and setter
	private String initrolename;
	private String tree;

	public String getInitrolename() {
		return initrolename;
	}

	public void setInitrolename(String initrolename) {
		this.initrolename = initrolename;
	}

	public String getTree() {
		return tree;
	}

	public void setTree(String tree) {
		this.tree = tree;
	}

}
