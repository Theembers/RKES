/**
 * 
 */
package com.wke.webapp.web.action.system.sys001;

import java.util.List;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.bo.system.UserBO;
import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.system.sys001.UserService;

/**
 * 得到用户 表格
 * 
 * @author gyx
 */
@ParentPackage(value = "default")
@Namespace(value = "/system/sys001")
@Results({ @Result(location = "/WEB-INF/system/sys001/getUser.ftl") })
public class Getuser extends BaseAction {

	@Override
	public String execute() {

		int from = page * rows;

		UserBO user = new UserBO();
		if (initusername != null && !"".equals(initusername)) {
			user.setUsername("%" + initusername + "%");
		}
		if (initrname != null && !"".equals(initrname)) {
			user.setUsername("%" + initrname + "%");
		}

		setGridModel(getUserService().getTableContent(user, from, rows));
		setRecords(getUserService().getTableCnt(user));
		setTotal((int) Math.ceil((double) getRecords() / (double) getRows()));

		return SUCCESS;

	}

	// getter and setter
	private List<UserBO> gridModel;

	private Integer rows = 10;

	private Integer page = 0;

	private Integer total = 0;

	private Integer records = 0;

	private String initusername;

	private String initrname;

	public List<UserBO> getGridModel() {
		return gridModel;
	}

	public void setGridModel(List<UserBO> gridModel) {
		this.gridModel = gridModel;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getRecords() {
		return records;
	}

	public void setRecords(Integer records) {
		this.records = records;
	}

	public void setInitusername(String initusername) {
		this.initusername = initusername;
	}

	public String getInitrname() {
		return initrname;
	}

	public String getInitusername() {
		return initusername;
	}

	public void setInitrname(String initrname) {
		this.initrname = initrname;
	}

	// Ioc
	@Autowired
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
