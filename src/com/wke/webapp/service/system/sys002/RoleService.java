/**
 * 
 */
package com.wke.webapp.service.system.sys002;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;







import com.wke.webapp.bo.system.RoleBO;
import com.wke.webapp.bo.system.RoleGnsBO;
import com.wke.webapp.bo.system.TreeNode;
import com.wke.webapp.comm.exception.DeleteZeroException;
import com.wke.webapp.comm.exception.InsertZeroException;
import com.wke.webapp.comm.exception.UpdateZeroException;
import com.wke.webapp.comm.struts.service.BaseService;
import com.wke.webapp.persistence.system.RoleMapper;
import com.wke.webapp.vo.system.RoleVO;

/**
 * 后台权限管理 角色管理service
 * @author gyx
 * @since 1.0
 */
@Service
public class RoleService extends BaseService {

	/**
	 * 得到角色具体信息 供列表展示
	 * 
	 * @param role
	 * @param from
	 * @param to
	 * @return
	 */
	public List<RoleBO> getTableContent(RoleBO role, int from, int to) {
		role.setFrom(from);
		role.setTo(to);
		return roleMapper.getRoleContent(role);
	}

	/**
	 * 得到角色信息 条数
	 * 
	 * @param role
	 * @return
	 */
	public int getTableCnt(RoleBO role) {
		return roleMapper.getRoleCnt(role);
	}

	/**
	 * 新增角色
	 * 
	 * @param role
	 * @return
	 */
	public boolean addRole(RoleVO role) {
		RoleBO bo = new RoleBO();
		role.convertToBO(bo);
		int roleResult = roleMapper.addRole(bo);

		RoleGnsBO roleGnsbo = new RoleGnsBO();
		role.convertToBO(roleGnsbo);
		roleGnsbo.setId(bo.getId());
		int roleGnsResult = roleMapper.addRoleGns(roleGnsbo);

		if (roleResult == 1 && roleGnsResult > 0) {
			return true;
		} else {
			throw new InsertZeroException("insert.exception", "角色");
		}
	}

	/**
	 * 删除指定角色
	 * 
	 * @param id
	 * @return
	 */
	public boolean delRole(int id) {

		// 得到使用该角色的用户数
		int userCnt = roleMapper.getUserRole(id);
		if (userCnt > 0) {
			throw new DeleteZeroException("user.exception");
		}

		int roleResult = roleMapper.delRole(id);
		int roleGnsResult = roleMapper.delRoleGns(id);

		if (roleResult == 1 && roleGnsResult > 0) {
			return true;
		} else {
			throw new DeleteZeroException("delete.exception", "用户");
		}
	}

	/**
	 * 根据id得到角色信息
	 * 
	 * @param id
	 * @return
	 */
	public RoleVO getRole(int id) {
		RoleBO bo = roleMapper.getRole(id);
		List<Integer> gnid = roleMapper.getRoleGns(id);
		RoleVO vo = new RoleVO();
		bo.convertToVO(vo);
		vo.setGnid(gnid);
		return vo;
	}

	/**
	 * 得到功能树 
	 * 
	 * @return
	 */
	 public String getgns(List<Integer> checklist) {
		 List<TreeNode> treeList = roleMapper.getGns();
		 
		 StringBuffer sb = new StringBuffer();
	     // 起先遍历父级节点为-1的节点
	     buildTree(treeList, checklist, -1, sb);
	     // 去除空ul
	     return sb.toString().replaceAll("<ul></ul>", "");
	 }
	 
	/**
	 * 递归构建树
	 * 
	 * @param fatherid
	 * @return
	 */
	private StringBuffer buildTree(List<TreeNode> treeList, List<Integer> checkList, int fatherid, StringBuffer sb) {

		if (treeList == null) {
			return sb;
		}

		sb.append("<ul>");

		for (TreeNode node : treeList) {
			if (node.getFatherId() == fatherid) {
				sb.append("<li ").append("gndm='").append(node.getId())
						.append("'>");

				// checkbox
				sb.append(
						"<input type='checkbox' name='gnid' onclick='changeNode(this)'")
						.append("value='").append(node.getId())
						.append("' sjgnid='").append(node.getFatherId())
						.append("'");

				// 是否需要选中
				if(checkList != null && checkList.contains(node.getId())){
					sb.append("checked = 'checked'");
				}

				sb.append("/>").append(node.getContent());

				// 递归遍历
				buildTree(treeList, checkList, node.getId(), sb);
				sb.append("</li>");
			}
		}

		sb.append("</ul>");
		return sb;
	}

	/**
	 * 更新角色信息
	 * 
	 * @param id
	 * @return
	 */
	public boolean updateRole(RoleVO role) {

		RoleBO bo = new RoleBO();
		role.convertToBO(bo);

		RoleGnsBO bo1 = new RoleGnsBO();
		role.convertToBO(bo1);

		int roleResult = roleMapper.updateRole(bo);
		roleMapper.delRoleGns(bo.getId());
		int roleGnsAddResult = roleMapper.addRoleGns(bo1);

		if (roleResult == 1 && roleGnsAddResult > 0) {
			return true;
		} else {
			throw new UpdateZeroException("update.exception", "角色");
		}
	}

	// Ioc
	@Autowired
	private RoleMapper roleMapper;

	public RoleMapper getRoleMapper() {
		return roleMapper;
	}

	public void setRoleMapper(RoleMapper roleMapper) {
		this.roleMapper = roleMapper;
	}
}
