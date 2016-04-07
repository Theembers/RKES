/**
 * 
 */
package com.wke.webapp.service.system.sys001;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;








import com.wke.webapp.bo.system.UserBO;
import com.wke.webapp.bo.system.UserRoleBO;
import com.wke.webapp.bo.system.YhRole;
import com.wke.webapp.comm.exception.DeleteZeroException;
import com.wke.webapp.comm.exception.InsertZeroException;
import com.wke.webapp.comm.exception.UpdateZeroException;
import com.wke.webapp.comm.struts.service.BaseService;
import com.wke.webapp.comm.utility.Security;
import com.wke.webapp.persistence.system.UserMapper;
import com.wke.webapp.vo.system.UserVO;


/**
 * 后台权限管理 用户管理Service
 * 
 * @author gyx
 * @since 1.0
 */
@Service
public class UserService extends BaseService {

	/**
	 * 新增用户
	 * 
	 * @param user
	 * @return
	 */
	public boolean addUser(UserVO user) {
		UserBO bo = new UserBO();
		user.convertToBO(bo);
		try {
			bo.setPassword(Security.StringByMD5(bo.getPassword()));
		} catch (NoSuchAlgorithmException e) {
			throw new InsertZeroException("password.exception", "新增用户", e);
		}

		UserRoleBO bo1 = new UserRoleBO();
		user.convertToBO(bo1);

		int userResult = getUserMapper().addAccount(bo);
		bo1.setId(bo.getId());
		int userRoleResult = getUserMapper().addUserRole(bo1);

		if (userResult == 1 && userRoleResult > 0) {
			return true;
		} else {
			throw new InsertZeroException("insert.exception", "用户");
		}

	}

	/**
	 * 得到所有角色
	 * 
	 * @return
	 */
	public List<YhRole> getRoleList() {
		return getUserMapper().getRoleList();
	}

	/**
	 * 得到用户的表单内容
	 * 
	 * @param user
	 * @param from
	 * @param to
	 * @return
	 */
	public List<UserBO> getTableContent(UserBO user, int from, int to) {
		user.setFrom(from);
		user.setTo(to);
		return getUserMapper().getUserContent(user);
	}

	/**
	 * 得到表单的总条数
	 * 
	 * @param user
	 * @return
	 */
	public int getTableCnt(UserBO user) {
		return getUserMapper().getUserCnt(user);
	}

	/**
	 * 删除指定用户
	 * 
	 * @param id
	 * @return
	 */
	public boolean delUser(int id) {
		int userResult = getUserMapper().delUser(id);
		int userRoleResult = getUserMapper().delUserRole(id);

		if (userResult == 1 && userRoleResult > 0) {
			return true;
		} else {
			throw new DeleteZeroException("delete.exception", "用户");
		}
	}

	/**
	 * 查询指定用户信息
	 * 
	 * @param id
	 * @return
	 */
	public UserVO getUser(int id) {
		UserBO bo = getUserMapper().getUserDetail(id);
		List<Integer> jsid = getUserMapper().getUserRole(id);
		UserVO user = new UserVO();
		bo.convertToVO(user);
		user.setJsid(jsid);
		return user;
	}

	/**
	 * 编辑用户信息
	 * 
	 * @param user
	 * @return
	 */
	public boolean updateUser(UserVO user) {
		UserBO bo = new UserBO();
		user.convertToBO(bo);

		UserRoleBO bo1 = new UserRoleBO();
		user.convertToBO(bo1);

		int userResult = getUserMapper().updateUser(bo);
		getUserMapper().delUserRole(user.getId());
		int userRoleAddResult = getUserMapper().addUserRole(bo1);

		if (userResult == 1 && userRoleAddResult > 0) {
			return true;
		} else {
			throw new UpdateZeroException("update.exception", "用户");
		}
	}

	/**
	 * 验证用户名是否被使用
	 * 
	 * @param user
	 * @return
	 */
	public boolean getUsername(UserVO user) {
		int result = userMapper.checkUsername(user.getUsername());
		if (result == 0) {
			return false;
		} else {
			return true;
		}
	}

	@Autowired
	private UserMapper userMapper;

	public UserMapper getUserMapper() {
		return userMapper;
	}

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

}
