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
import com.wke.webapp.vo.demo.WebVO;

/**
 * 编辑web初始化
 * 
 * @author gyx
 *
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo002")
@Results({ @Result(location = "/WEB-INF/demo/demo002/editweb.ftl"),
		@Result(name = "input", location = "/WEB-INF/demo/demo002/editweb.ftl") })
public class Initeditweb extends BaseAction {
	@Override
	public String execute() {
		setList(getService().getcodelist());
		setVo(getService().gettheweb(id));
		return SUCCESS;
	}

	private WebVO vo;
	private int id;
	private int page;
	private List<CodeBO> list;

	// get and set
	public List<CodeBO> getList() {
		return list;
	}

	public void setList(List<CodeBO> list) {
		this.list = list;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getId() {
		return id;
	}

	public WebVO getVo() {
		return vo;
	}

	public void setVo(WebVO vo) {
		this.vo = vo;
	}

	public void setId(int id) {
		this.id = id;
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
