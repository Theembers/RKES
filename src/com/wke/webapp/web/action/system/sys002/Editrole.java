/**
 * 
 */
package com.wke.webapp.web.action.system.sys002;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.system.sys002.RoleService;
import com.wke.webapp.vo.system.RoleVO;
import com.opensymphony.xwork2.interceptor.annotations.Before;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

/**
 * 编辑角色
 * 
 * @author gyx
 */
@ParentPackage(value = "default")
@Namespace(value = "/system/sys002")
@Results({
		@Result(name = "success", location = "/WEB-INF/comm/goto.ftl"),
		@Result(name = "input", location = "/WEB-INF/system/sys002/editRole.ftl") })
public class Editrole extends BaseAction {

	@Override
	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "role.jsmc", type = ValidatorType.FIELD, message = "请输入角色名称"),
			@RequiredStringValidator(fieldName = "role.jsms", type = ValidatorType.FIELD, message = "请输入角色描述"),
			@RequiredStringValidator(fieldName = "gnid", type = ValidatorType.FIELD, message = "请选择角色功能") })
	public String execute() {
		String[] array = gnid.substring(1, gnid.length() - 1).split(",");
		List<Integer> list = new ArrayList<Integer>();
		for (String temp : array) {
			list.add(Integer.valueOf(temp));
		}
		role.setGnid(list);

		if (getRoleService().updateRole(role)) {
			addActionMessage("更新角色成功");
			setLocation("/system/sys002/getrole.do");
		}

		return SUCCESS;

	}

	@Before
	public void doBefore() {
		setTree(getRoleService().getgns(role.getGnid()));
	}

	// getter and setter
	private RoleVO role;
	private String tree;
	private String location;
	private String gnid;

	public RoleVO getRole() {
		return role;
	}

	public void setRole(RoleVO role) {
		this.role = role;
	}

	public String getTree() {
		return tree;
	}

	public void setTree(String tree) {
		this.tree = tree;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getGnid() {
		return gnid;
	}

	public void setGnid(String gnid) {
		this.gnid = gnid;
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
