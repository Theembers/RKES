/**
 * 
 */
package com.wke.webapp.web.action.login;

import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.bo.login.LoginBO;
import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.login.LoginConstants;
import com.wke.webapp.service.login.LoginService;
import com.wke.webapp.vo.login.LoginVO;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

/**
 * 用户登录
 * 
 * @author gyx
 * @version 1.0
 */
@ParentPackage(value = "default")
@Namespace(value = "/login")
@Results({
		@Result(name = "success", type = "redirect", location = "/home/init.do"),
		@Result(name = "input", location = "/WEB-INF/login/login.ftl") })
public class Login extends BaseAction {

	@Override
	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "loginvo.username", type = ValidatorType.FIELD, message = "请输入用户名", shortCircuit = true),
			@RequiredStringValidator(fieldName = "loginvo.password", type = ValidatorType.FIELD, message = "请输入密码", shortCircuit = true) })
	public String execute() {
		List<LoginBO> result = loginService.selectLogin(loginvo);
		if (result == null || result.size() == 0) {
			addFieldError("login.vo.username", "用户名或密码不正确");
			return INPUT;
		} else {
			Set<String> urls = new HashSet<String>();
			// 系统管理
			Map<String, String> sys = new LinkedHashMap<String, String>();
			// 说明管理
			Map<String, String> wxgl = new LinkedHashMap<String, String>();
			// demo管理
			Map<String, String> demo = new LinkedHashMap<String, String>();

			for (LoginBO bo : result) {
				if (bo.getUrl() != null) {
					for (String spliturl : bo.getUrl().split("\\|")) {
						urls.add(spliturl);
					}
				}

				// 初始菜单
				if (bo.getInitUrl() != null && bo.getFatherid() == 1) {
					sys.put(bo.getGnmc(), bo.getInitUrl());
				} else if (bo.getInitUrl() != null && bo.getFatherid() == 4) {
					wxgl.put(bo.getGnmc(), bo.getInitUrl());
				} else if (bo.getInitUrl() != null && bo.getFatherid() == 8) {
					demo.put(bo.getGnmc(), bo.getInitUrl());
				}
			}
			getSession().put(LoginConstants.LOGIN_PRINCIPLE, urls);
			getSession().put(LoginConstants.LOGIN_USERNAME,
					result.get(0).getUsername());
			getSession().put(LoginConstants.LOGIN_WXGL, wxgl);
			getSession().put(LoginConstants.LOGIN_SYS, sys);
			getSession().put(LoginConstants.LOGIN_DEMO, demo);

			return SUCCESS;
		}
	}

	// getter and setter
	private LoginVO loginvo;

	public LoginVO getLoginvo() {
		return loginvo;
	}

	public void setLoginvo(LoginVO loginvo) {
		this.loginvo = loginvo;
	}

	// Ioc
	@Autowired
	private LoginService loginService;

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

}
