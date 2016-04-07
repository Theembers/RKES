package com.wke.webapp.web.action.demo.demo002;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.demo.demo002.Demo002Service;

/**
 * 修改状态
 * 
 * @author gyx
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo002")
@Results({ @Result(location = "/WEB-INF/comm/goto.ftl"), })
public class Workweb extends BaseAction {

	@Override
	public String execute() throws Exception {
		Map params = new HashMap();
		params.put("id", id);
		params.put("yxbj", yxbj);
		service.workWeb(params);
		setLocation("/demo/demo002/getcwm.do");

		return SUCCESS;
	}

	// getter and setter
	private int id;
	private int yxbj;
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

	public int getYxbj() {
		return yxbj;
	}

	public void setYxbj(int yxbj) {
		this.yxbj = yxbj;
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
