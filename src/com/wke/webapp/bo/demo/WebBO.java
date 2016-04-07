package com.wke.webapp.bo.demo;

import com.wke.webapp.comm.struts.bo.BaseBO;

/**
 * t_pt_demo_web的BO
 * 
 * @author gyx
 */
public class WebBO extends BaseBO {

	private int id;
	private String webname;
	private String weburl;
	private String code;
	private String url_re;
	private String title_re;
	private String context_re;
	private int yxbj;
	private int from;
	private int to;

	// get and set

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getFrom() {
		return from;
	}

	public void setFrom(int from) {
		this.from = from;
	}

	public int getTo() {
		return to;
	}

	public void setTo(int to) {
		this.to = to;
	}

	public String getWebname() {
		return webname;
	}

	public void setWebname(String webname) {
		this.webname = webname;
	}

	public String getWeburl() {
		return weburl;
	}

	public void setWeburl(String weburl) {
		this.weburl = weburl;
	}

	public String getUrl_re() {
		return url_re;
	}

	public void setUrl_re(String url_re) {
		this.url_re = url_re;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getYxbj() {
		return yxbj;
	}

	public void setYxbj(int yxbj) {
		this.yxbj = yxbj;
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
