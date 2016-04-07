package com.wke.webapp.web.action.system.sys003;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.system.sys003.EditpwdService;
import com.opensymphony.xwork2.validator.annotations.ExpressionValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

/**
 * 修改用户密码
 * 
 * @author xz
 *
 */
@ParentPackage(value = "default")
@Namespace(value = "/system/sys003")
@Results({
		@Result(name = "success", location = "/WEB-INF/comm/goto.ftl"),
		@Result(name = "input", location = "/WEB-INF/system/sys003/editPwd.ftl") })
public class Editpwd extends BaseAction {
	@Override
	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "username", type = ValidatorType.FIELD, message = "请输入用户名", shortCircuit = true),
			@RequiredStringValidator(fieldName = "newpwd", type = ValidatorType.FIELD, message = "请输入密码", shortCircuit = true),
			@RequiredStringValidator(fieldName = "newpwd1", type = ValidatorType.FIELD, message = "请确认密码", shortCircuit = true) }, expressions = { @ExpressionValidator(expression = "newpwd == newpwd1", message = "密码两次密码输入不一致", shortCircuit = true) })
	public String execute() {
		editpwdService.updateUserPwd(username, newpwd);
		addActionMessage("修改密码成功,请重新登录");
		setLocation("/login/logout.do");
		return SUCCESS;
	}

	// getter and setter
	private String username;
	private String newpwd;
	private String newpwd1;
	private String location;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getNewpwd() {
		return newpwd;
	}

	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
	}

	public String getNewpwd1() {
		return newpwd1;
	}

	public void setNewpwd1(String newpwd1) {
		this.newpwd1 = newpwd1;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	// Ioc
	@Autowired
	private EditpwdService editpwdService;

	public EditpwdService getEditpwdService() {
		return editpwdService;
	}

	public void setEditpwdService(EditpwdService editpwdService) {
		this.editpwdService = editpwdService;
	}
}
