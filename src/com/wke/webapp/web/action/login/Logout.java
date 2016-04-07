package com.wke.webapp.web.action.login;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.login.LoginConstants;

/**
 * 退出登录释放session
 * @author gyx
 *
 */
@ParentPackage(value="default")
@Namespace(value="/login")
@Result(name="success", type="redirect", location="init.do")
public class Logout extends BaseAction{
	@Override
	public String execute() throws Exception {
		getSession().remove(LoginConstants.LOGIN_PRINCIPLE);
		getSession().remove(LoginConstants.LOGIN_USERNAME);
		getSession().remove(LoginConstants.LOGIN_WXGL);
		getSession().remove(LoginConstants.LOGIN_DEMO);
		getSession().remove(LoginConstants.LOGIN_SYS);
		return SUCCESS;
	}
}
