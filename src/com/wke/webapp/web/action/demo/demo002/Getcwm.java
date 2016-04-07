package com.wke.webapp.web.action.demo.demo002;

import java.util.List;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.webapp.bo.demo.WebBO;
import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.demo.demo002.Demo002Service;
import com.wke.webapp.vo.demo.WebVO;

/**
 * 爬虫demo 初始化配置界面.获取weblist
 * 
 * @author gyx
 * 
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo002")
@Results({ @Result(location = "/WEB-INF/demo/demo002/getcwm.ftl") })
public class Getcwm extends BaseAction {

	@Override
	public String execute() {

		int from = page * rows;
		setList(service.getWeb(vo, from, rows));
		setRecords(service.getWebCnt(vo));
		setTotal((int) Math.ceil((double) getRecords() / (double) getRows()));

		return SUCCESS;

	}

	// getter and setter

	private List<WebBO> list;
	private Integer rows = 10;
	private Integer page = 0;
	private Integer total = 0;
	private Integer records = 0;
	private WebVO vo = new WebVO();

	// get and set
	public List<WebBO> getList() {
		return list;
	}

	public void setList(List<WebBO> list) {
		this.list = list;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getRecords() {
		return records;
	}

	public void setRecords(Integer records) {
		this.records = records;
	}

	public WebVO getVo() {
		return vo;
	}

	public void setVo(WebVO vo) {
		this.vo = vo;
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
