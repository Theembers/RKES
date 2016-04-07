/**
 * 
 */
package com.wke.webapp.web.action.home;

import java.util.List;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.bo.home.HomeBO;
import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.home.HomeService;
import com.wke.webapp.vo.home.HomeVo;

/**
 * 登录成功跳转页(主页)
 * 
 * @author GYX
 * 
 */
@ParentPackage(value = "default")
@Namespace(value = "/home")
@Result(location = "/WEB-INF/home/index.ftl")
public class Init extends BaseAction {

	@Override
	public String execute() {
		setHomevo(getService().getOwnerContent(id));
		return SUCCESS;
	}

	private HomeVo homevo = new HomeVo();
	private int id = 1;

	// get and set
	public HomeVo getHomevo() {
		return homevo;
	}

	public void setHomevo(HomeVo homevo) {
		this.homevo = homevo;
	}

	@Autowired
	private HomeService service;

	public HomeService getService() {
		return service;
	}

	public void setService(HomeService service) {
		this.service = service;
	}

}
