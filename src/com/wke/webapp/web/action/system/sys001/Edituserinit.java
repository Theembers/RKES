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
import com.wke.webapp.vo.system.UserVO;

/**
 * 编辑用户初始化
 * 
 * @author gxz
 */
@ParentPackage(value = "default")
@Namespace(value = "/system/sys001")
@Results({
		@Result(location = "/WEB-INF/system/sys001/editUser.ftl"),
		@Result(name = "input", location = "/WEB-INF/system/sys001/getUser.ftl") })
public class Edituserinit extends BaseAction {

	@Override
	public String execute() {
		setRoleList(getService().getRoleList());
		setUser(getService().getUser(id));
		return SUCCESS;
	}

	// getter and setter
	private int id;
	private UserVO user;
	private List<YhRole> roleList;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public UserVO getUser() {
		return user;
	}

	public void setUser(UserVO user) {
		this.user = user;
	}

	public List<YhRole> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<YhRole> roleList) {
		this.roleList = roleList;
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
