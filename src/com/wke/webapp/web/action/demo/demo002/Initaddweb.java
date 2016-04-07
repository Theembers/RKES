package com.wke.webapp.web.action.demo.demo002;

import java.util.List;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.bo.demo.CodeBO;
import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.demo.demo002.Demo002Service;

/**
 * 新增Web初始化.获取编码list
 * 
 * @author gyx
 *
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo002")
@Results({ @Result(location = "/WEB-INF/demo/demo002/addweb.ftl"),
		@Result(name = "input", location = "/WEB-INF/demo/demo/addweb.ftl") })
public class Initaddweb extends BaseAction {
	@Override
	public String execute() {
		setList(getService().getcodelist());
		return SUCCESS;
	}

	private List<CodeBO> list;

	public List<CodeBO> getList() {
		return list;
	}

	public void setList(List<CodeBO> list) {
		this.list = list;
	}

	@Autowired
	private Demo002Service service;

	public Demo002Service getService() {
		return service;
	}

	public void setService(Demo002Service service) {
		this.service = service;
	}

}
