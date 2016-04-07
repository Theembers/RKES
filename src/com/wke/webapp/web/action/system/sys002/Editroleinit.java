package com.wke.webapp.web.action.system.sys002;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.system.sys002.RoleService;
import com.wke.webapp.vo.system.RoleVO;

/**
 * 更新选定用户
 * @author gyx
 */
@ParentPackage(value="default")
@Namespace(value="/system/sys002")
@Results({
	@Result(location="/WEB-INF/system/sys002/editRole.ftl"),
	@Result(name="input", location="/WEB-INF/system/sys002/getRole.ftl")
})
public class Editroleinit extends BaseAction {

	@Override
	public String execute(){
		setRole(getRoleservice().getRole(id));
		setTree(getRoleservice().getgns(role.getGnid()));
		return SUCCESS;
	}
	
	// getter and setter
	private int id;
	private RoleVO role;
	private String tree;

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
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

	// Ioc
	@Autowired
	private RoleService roleservice;

	public RoleService getRoleservice() {
		return roleservice;
	}

	public void setRoleservice(RoleService roleservice) {
		this.roleservice = roleservice;
	}

}
