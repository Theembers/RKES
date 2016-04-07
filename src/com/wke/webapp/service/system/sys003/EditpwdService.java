package com.wke.webapp.service.system.sys003;

import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wke.webapp.comm.exception.InsertZeroException;
import com.wke.webapp.comm.exception.UpdateZeroException;
import com.wke.webapp.comm.struts.service.BaseService;
import com.wke.webapp.comm.utility.Security;
import com.wke.webapp.persistence.system.UserMapper;

@Service
public class EditpwdService extends BaseService {

	/**
	 * 根据用户名修改用户密码
	 * 
	 * @param userName
	 * @param userPwd
	 * @return
	 */
	public int updateUserPwd(String userName, String userPwd) {
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("userName", userName);
		try {
			paramsMap.put("userpwd", Security.StringByMD5(userPwd));
		} catch (NoSuchAlgorithmException e) {
			throw new InsertZeroException("password.exception", "修改密码", e);
		}
		int rows = userMapper.updateUserPwd(paramsMap);
		if (rows == 0) {
			throw new UpdateZeroException("default-exception.properties",
					"修改密码");
		} else if (rows > 1) {
			throw new UpdateZeroException("异常：修改密码返回行数大于1条");
		}
		return rows;
	}

	// Ioc
	@Autowired
	private UserMapper userMapper;

	public UserMapper getUserMapper() {
		return userMapper;
	}

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
}
