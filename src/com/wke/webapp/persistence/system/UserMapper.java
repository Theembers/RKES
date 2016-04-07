package com.wke.webapp.persistence.system;

import java.util.List;
import java.util.Map;

import com.wke.webapp.bo.system.UserBO;
import com.wke.webapp.bo.system.UserRoleBO;
import com.wke.webapp.bo.system.YhRole;

public interface UserMapper {

	/**
	 * 新增用户
	 * 
	 * @param userbo
	 * @return
	 */
	int addAccount(UserBO userbo);

	/**
	 * 插入用户角色关系
	 * 
	 * @param userbo
	 * @return
	 */
	int addUserRole(UserRoleBO userbo);

	/**
	 * 得到用户详细信息列表 供展示
	 * 
	 * @param bo
	 * @return
	 */
	List<UserBO> getUserContent(UserBO bo);

	/**
	 * 得到查询用户总数
	 * 
	 * @return
	 */
	int getUserCnt(UserBO bo);

	/**
	 * 得到所有角色列表
	 * 
	 * @return
	 */
	List<YhRole> getRoleList();

	/**
	 * 删除指定用户
	 * 
	 * @param id
	 * @return
	 */
	int delUser(int id);

	/**
	 * 删除指定用户的用户角色表
	 * 
	 * @param id
	 * @return
	 */
	int delUserRole(int id);

	/**
	 * 根据id得到用户详细信息
	 * 
	 * @param id
	 * @return
	 */
	UserBO getUserDetail(int id);

	/**
	 * 根据id得到用户对应角色
	 * 
	 * @param id
	 * @return
	 */
	List<Integer> getUserRole(int id);

	/**
	 * 更新用户信息
	 * 
	 * @param bo
	 * @return
	 */
	int updateUser(UserBO bo);

	/**
	 * 验证用户名是否被使用
	 * 
	 * @param username
	 * @return
	 */
	int checkUsername(String username);

	/**
	 * 根据用户名修改用户密码
	 * 
	 * @param username
	 * @return
	 */
	int updateUserPwd(Map<String, String> paramMap);

}
