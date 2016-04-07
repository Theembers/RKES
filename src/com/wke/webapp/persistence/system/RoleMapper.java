package com.wke.webapp.persistence.system;

import java.util.List;

import com.wke.webapp.bo.system.RoleBO;
import com.wke.webapp.bo.system.RoleGnsBO;
import com.wke.webapp.bo.system.TreeNode;

public interface RoleMapper {

	/**
	 * 得到角色列表
	 * 
	 * @param role
	 * @return
	 */
	List<RoleBO> getRoleContent(RoleBO role);

	/**
	 * 得到角色信息 条数
	 * 
	 * @param role
	 * @return
	 */
	int getRoleCnt(RoleBO role);

	/**
	 * 新增角色
	 * 
	 * @param bo
	 * @return
	 */
	int addRole(RoleBO bo);

	/**
	 * 新增角色功能表
	 * 
	 * @param roleGnsbo
	 * @return
	 */
	int addRoleGns(RoleGnsBO roleGnsbo);

	/**
	 * 根据id 删除指定角色
	 * 
	 * @param id
	 * @return
	 */
	int delRole(int id);

	/**
	 * 根据id 删除指定角色功能
	 * 
	 * @param id
	 * @return
	 */
	int delRoleGns(int id);

	/**
	 * 根据id得到角色信息
	 * 
	 * @param id
	 * @return
	 */
	RoleBO getRole(int id);

	/**
	 * 根据id得到角色功能信息
	 * 
	 * @param id
	 * @return
	 */
	List<Integer> getRoleGns(int id);

	/**
	 * 得到功能树
	 * 
	 * @return
	 */
	List<TreeNode> getGns();

	/**
	 * 更新角色
	 * 
	 * @param bo
	 * @return
	 */
	int updateRole(RoleBO bo);

	/**
	 * 得到使用该角色的用户数
	 * 
	 * @param id
	 * @return
	 */
	int getUserRole(int id);

}
