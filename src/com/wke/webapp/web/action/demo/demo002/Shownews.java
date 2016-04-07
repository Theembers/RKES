package com.wke.webapp.web.action.demo.demo002;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.demo.demo002.Demo002Service;
import com.wke.webapp.vo.demo.NewsVO;

/**
 * 编辑用户初始化
 * 
 * @author likai
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo002")
@Results({ @Result(location = "/WEB-INF/demo/demo002/shownews.ftl"),
		@Result(name = "input", location = "/WEB-INF/demo/demo002/getnews.ftl") })
public class Shownews extends BaseAction {

	@Override
	public String execute() {
		setVo(getService().gettheNews(id));
		return SUCCESS;
	}

	// getter and setter
	private int id;
	private NewsVO vo;
	private int page;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public NewsVO getVo() {
		return vo;
	}

	public void setVo(NewsVO vo) {
		this.vo = vo;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
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
