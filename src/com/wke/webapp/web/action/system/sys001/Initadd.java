/**
 * 
 */
package com.wke.webapp.web.action.system.sys001;

import java.util.List;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.bo.system.YhRole;
import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.system.sys001.UserService;

/**
 * 新增用户初始化
 * 
 * @author xz
 * @version 1.0
 */
@ParentPackage(value = "default")
@Namespace(value = "/system/sys001")
@Results({
		@Result(location = "/WEB-INF/system/sys001/addUser.ftl"),
		@Result(name = "input", location = "/WEB-INF/system/sys001/getUser.ftl") })
public class Initadd extends BaseAction {

	@Override
	public String execute() {
		setRoleList(getUserService().getRoleList());
		return SUCCESS;
	}

	// Ioc
	@Autowired
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	// getter and setter
	private List<YhRole> roleList;
	private String initusername;
	private String initrname;

	public List<YhRole> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<YhRole> roleList) {
		this.roleList = roleList;
	}

	public String getInitusername() {
		return initusername;
	}

	public void setInitusername(String initusername) {
		this.initusername = initusername;
	}

	public String getInitrname() {
		return initrname;
	}

	public void setInitrname(String initrname) {
		this.initrname = initrname;
	}

}
