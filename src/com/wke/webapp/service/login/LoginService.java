/**
 * 
 */
package com.wke.webapp.service.login;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wke.webapp.bo.login.LoginBO;
import com.wke.webapp.comm.struts.service.BaseService;
import com.wke.webapp.comm.utility.Security;
import com.wke.webapp.persistence.login.LoginMapper;
import com.wke.webapp.vo.login.LoginVO;

/**
 * @author likai
 * @since 1.0
 */
@Service
public class LoginService extends BaseService {

	/**
	 * 验证用户登录
	 * 
	 * @param user
	 * @return
	 */
	public List<LoginBO> selectLogin(LoginVO loginVO) {
		LoginBO bo = new LoginBO();
		loginVO.convertToBO(bo);
		try {
			bo.setPassword(Security.StringByMD5(bo.getPassword()));
		} catch (NoSuchAlgorithmException e) {
			return null;
		}
		List<LoginBO> result = loginMapper.validateLogin(bo);
		return result;
	}

	// Ioc
	@Autowired
	private LoginMapper loginMapper;

	public LoginMapper getLoginMapper() {
		return loginMapper;
	}

	public void setLoginMapper(LoginMapper loginMapper) {
		this.loginMapper = loginMapper;
	}

}
