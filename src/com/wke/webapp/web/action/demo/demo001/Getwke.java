package com.wke.webapp.web.action.demo.demo001;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.demo.demo001.Demo001Service;

/**
 * 关键词demo 初始化文档输入界面
 * 
 * @author gyx
 * 
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo001")
@Results({ @Result(location = "/WEB-INF/demo/demo001/getwke.ftl") })
public class Getwke extends BaseAction {

	@Override
	public String execute() {
		/**
		 * 初始化文档输入见面
		 */
		service.delcontent();
		return SUCCESS;
	}

	@Autowired
	private Demo001Service service;

	public Demo001Service getService() {
		return service;
	}

	public void setService(Demo001Service service) {
		this.service = service;
	}

}
