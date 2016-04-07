package com.wke.webapp.web.action.demo.demo001;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.demo.demo001.Demo001Service;
import com.wke.webapp.vo.demo.ContentVO;

/**
 * 关键词demo 初始化文档输入界面
 * 
 * @author gyx
 * 
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo001")
@Results({ @Result(name = "success", location = "/WEB-INF/comm/goto.ftl"),
		@Result(name = "input", location = "/WEB-INF/demo/demo001/getwke.ftl") })
public class Doadd extends BaseAction {

	@Override
	public String execute() {
		if (getService().addcontent(getDemovo())) {
			addActionMessage("新增文档成功");
			setLocation("/demo/demo001/wkeshow.do");
		}

		return SUCCESS;
	}

	private ContentVO demovo = new ContentVO();
	private String location;

	// GET AND SET

	public String getLocation() {
		return location;
	}

	public ContentVO getDemovo() {
		return demovo;
	}

	public void setDemovo(ContentVO demovo) {
		this.demovo = demovo;
	}

	public void setLocation(String location) {
		this.location = location;
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
