package com.wke.webapp.web.action.demo.demo002;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.demo.demo002.Demo002Service;

/**
 * 删除WEB
 * 
 * @author gyx
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo002")
@Results({ @Result(location = "/WEB-INF/comm/goto.ftl"), })
public class Deleteweb extends BaseAction {

	@Override
	public String execute() {
		service.delWeb(id);
		addActionMessage("删除成功");
		setLocation("/demo/demo002/getcwm.do");

		return SUCCESS;
	}

	// getter and setter
	private int id;
	private String location;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	// Ioc
	@Autowired
	private Demo002Service service;

	public Demo002Service getService() {
		return service;
	}

	public void setService(Demo002Service service) {
		this.service = service;
	}

}
