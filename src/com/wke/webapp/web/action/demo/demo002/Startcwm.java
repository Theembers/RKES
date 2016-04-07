package com.wke.webapp.web.action.demo.demo002;

import java.util.List;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.bo.demo.UrllistBO;
import com.wke.webapp.bo.demo.WebBO;
import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.demo.demo002.StartcwmService;

/**
 * 启动后台爬虫程序
 * 
 * @author gyx
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo002")
@Results({ @Result(location = "/WEB-INF/comm/goto.ftl"), })
public class Startcwm extends BaseAction {

	@Override
	public String execute() throws Exception {
		// 获取web任务列
		setWlist(service.getWeb());
		// 添加url任务
		while (wlist.size() > 0) {
			setWbo(wlist.remove(0));
			service.getURL(wbo.getId(), wbo.getUrl_re(), wbo.getWeburl(),
					wbo.getCode());

		}
		// 获取url任务
		setUlist(service.getulist());
		// 获取context

		while (ulist.size() > 0) {
			setuBo(ulist.remove(0));
			service.getcontext(uBo.getId(), uBo.getHostid(), uBo.getTitle_re(),
					uBo.getContext_re(), uBo.getUrl(), uBo.getCode());
		}

		addActionMessage("Web抓去完成！");
		setLocation("/demo/demo002/getnews.do");
		return SUCCESS;
	}

	private List<WebBO> wlist;
	private WebBO wbo;
	private List<UrllistBO> ulist;
	private UrllistBO uBo;
	private String location;

	// get and set

	public WebBO getWbo() {
		return wbo;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setWbo(WebBO wbo) {
		this.wbo = wbo;
	}

	public UrllistBO getuBo() {
		return uBo;
	}

	public void setuBo(UrllistBO uBo) {
		this.uBo = uBo;
	}

	public List<WebBO> getWlist() {
		return wlist;
	}

	public void setWlist(List<WebBO> wlist) {
		this.wlist = wlist;
	}

	public List<UrllistBO> getUlist() {
		return ulist;
	}

	public void setUlist(List<UrllistBO> ulist) {
		this.ulist = ulist;
	}

	@Autowired
	private StartcwmService service;

	public StartcwmService getService() {
		return service;
	}

	public void setService(StartcwmService service) {
		this.service = service;
	}

}
