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
import com.wke.webapp.vo.system.UserVO;
import com.opensymphony.xwork2.interceptor.annotations.Before;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.ExpressionValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

/**
 * 新增用户
 * 
 * @author gyx
 */
@ParentPackage(value = "default")
@Namespace(value = "/system/sys001")
@Results({
		@Result(name = "success", location = "/WEB-INF/comm/goto.ftl"),
		@Result(name = "input", location = "/WEB-INF/system/sys001/addUser.ftl") })
public class Adduser extends BaseAction {

	@Override
	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "user.username", type = ValidatorType.FIELD, message = "请输入用户名", shortCircuit = true),
			@RequiredStringValidator(fieldName = "user.rname", type = ValidatorType.FIELD, message = "请输入真实用户姓名", shortCircuit = true),
			@RequiredStringValidator(fieldName = "user.password", type = ValidatorType.FIELD, message = "请输入密码", shortCircuit = true),
			@RequiredStringValidator(fieldName = "user.password1", type = ValidatorType.FIELD, message = "请输入确认密码", shortCircuit = true),
			@RequiredStringValidator(fieldName = "user.email", type = ValidatorType.FIELD, message = "请输入email", shortCircuit = true),
			@RequiredStringValidator(fieldName = "user.phone", type = ValidatorType.FIELD, message = "请输入联系电话", shortCircuit = true), }, requiredFields = { @RequiredFieldValidator(fieldName = "user.jsid", type = ValidatorType.FIELD, message = "请选择用户角色", shortCircuit = true) }, emails = { @EmailValidator(fieldName = "user.email", type = ValidatorType.FIELD, message = "请输入正确的email", shortCircuit = true) }, expressions = { @ExpressionValidator(expression = "user.password == user.password1", message = "密码两次密码输入不一致", shortCircuit = true) })
	public String execute() {

		if (getUserService().addUser(getUser())) {
			addActionMessage("更新用户成功");
			setLocation("/system/sys001/getuser.do");
		}

		return SUCCESS;

	}

	@Before
	public void doBefore() {
		setRoleList(getUserService().getRoleList());
	}

	@Override
	public void validate() {
		if (!hasFieldErrors()) {
			String phone = user.getPhone();
			try {
				if (phone.length() == 11) {
					Long.parseLong(phone);
				} else if (phone.length() == 8) {
					Integer.parseInt(phone);
				} else {
					addFieldError("user.phone", "请输入手机号码或者8位座机号码");
				}
			} catch (Exception e) {
				addFieldError("user.phone", "请输入手机号码或者8位座机号码");
			}

			// 验证用户名是否已经使用
			if (getUserService().getUsername(user)) {
				addFieldError("user.username", "用户名已经被使用");
			}
		}

	}

	// getter and setter
	private UserVO user;
	private List<YhRole> roleList;
	private String location;

	public UserVO getUser() {
		return user;
	}

	public void setUser(UserVO user) {
		this.user = user;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public List<YhRole> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<YhRole> roleList) {
		this.roleList = roleList;
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

}
