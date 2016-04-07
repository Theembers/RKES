/**
 * 
 */
package com.wke.webapp.web.action.system.sys002;

import java.util.List;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.bo.system.RoleBO;
import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.system.sys002.RoleService;

/**
 * 得到所有角色 表格
 * 
 * @author gyx
 */
@ParentPackage(value = "default")
@Namespace(value = "/system/sys002")
@Results({ @Result(location = "/WEB-INF/system/sys002/getRole.ftl") })
public class Getrole extends BaseAction {

	@Override
	public String execute() {

		int from = page * rows;

		RoleBO role = new RoleBO();
		if (initrolename != null && !"".equals(initrolename)) {
			role.setJsmc("%" + initrolename + "%");
		}

		setGridModel(getRoleService().getTableContent(role, from, rows));
		setRecords(getRoleService().getTableCnt(role));
		setTotal((int) Math.ceil((double) getRecords() / (double) getRows()));

		return SUCCESS;
	}

	// getter and setter
	private List<RoleBO> gridModel;

	private int rows = 10;

	private int page = 0;

	private int total = 0;

	private int records = 0;

	private String initrolename;

	public List<RoleBO> getGridModel() {
		return gridModel;
	}

	public void setGridModel(List<RoleBO> gridModel) {
		this.gridModel = gridModel;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getRecords() {
		return records;
	}

	public void setRecords(int records) {
		this.records = records;
	}

	public String getInitrolename() {
		return initrolename;
	}

	public void setInitrolename(String initrolename) {
		this.initrolename = initrolename;
	}

	// Ioc
	@Autowired
	private RoleService roleService;

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

}
