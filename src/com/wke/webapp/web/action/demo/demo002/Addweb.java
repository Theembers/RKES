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
import com.opensymphony.xwork2.interceptor.annotations.Before;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;

/**
 * add web
 * 
 * @author gyx
 * 
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo002")
@Results({ @Result(name = "success", location = "/WEB-INF/comm/goto.ftl"),
		@Result(name = "input", location = "/WEB-INF/demo/demo002/addweb.ftl") })
public class Addweb extends BaseAction {

	@Override
	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "vo.webname", message = "Web名称不能为空!"),
			@RequiredStringValidator(fieldName = "vo.weburl", message = "Web域名不能为空!"),
			@RequiredStringValidator(fieldName = "vo.code", message = "编码规则不能为空!"),
			@RequiredStringValidator(fieldName = "vo.url_re", message = "URL规则不能为空!"),
			@RequiredStringValidator(fieldName = "vo.title_re", message = "标题规则不能为空!"),
			@RequiredStringValidator(fieldName = "vo.context_re", message = "正文规则不能为空!")})
	public String execute() {

		if (getService().addWeb(getVo())) {
			addActionMessage("新增Web成功");
			setLocation("/demo/demo002/getcwm.do");
		}

		return SUCCESS;

	}

	@Before
	public void doBefore() {
		setList(getService().getcodelist());
	}

	// getter and setter
	private WebVO vo;
	private String location;
	private List<CodeBO> list;

	public WebVO getVo() {
		return vo;
	}

	public List<CodeBO> getList() {
		return list;
	}

	public void setList(List<CodeBO> list) {
		this.list = list;
	}

	public void setVo(WebVO vo) {
		this.vo = vo;
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
