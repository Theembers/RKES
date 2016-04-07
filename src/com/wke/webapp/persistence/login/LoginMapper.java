package com.wke.webapp.persistence.login;

import java.util.List;

import com.wke.webapp.bo.login.LoginBO;


public interface LoginMapper {

	/**
	 * 验证用户登录
	 * @return
	 */
	List<LoginBO> validateLogin(LoginBO bo);

}
