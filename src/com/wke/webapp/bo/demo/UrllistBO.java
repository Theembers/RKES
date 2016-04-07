package com.wke.webapp.bo.demo;

import com.wke.webapp.comm.struts.bo.BaseBO;

/**
 * Urllist的BO
 * 
 * @author gyx
 */
public class UrllistBO extends BaseBO {

	private int id;
	private int hostid;
	private String url;
	private int yxbj;
	private String title_re;
	private String context_re;
	private String code;

	// get and set

	public int getId() {
		return id;
	}

	public int getHostid() {
		return hostid;
	}

	public void setHostid(int hostid) {
		this.hostid = hostid;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getYxbj() {
		return yxbj;
	}

	public void setYxbj(int yxbj) {
		this.yxbj = yxbj;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTitle_re() {
		return title_re;
	}

	public void setTitle_re(String title_re) {
		this.title_re = title_re;
	}

	public String getContext_re() {
		return context_re;
	}

	public void setContext_re(String context_re) {
		this.context_re = context_re;
	}

}
