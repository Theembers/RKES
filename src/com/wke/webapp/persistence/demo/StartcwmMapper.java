package com.wke.webapp.persistence.demo;

import java.util.List;
import java.util.Map;

import com.wke.webapp.bo.demo.UrllistBO;
import com.wke.webapp.bo.demo.WebBO;

public interface StartcwmMapper {

	/**
	 * 得到web列表
	 */
	List<WebBO> getWeb(WebBO bo);

	/**
	 * 得到urllist未完成数量
	 */
	int getulistnum();

	/**
	 * 获取urllist
	 */
	List<UrllistBO> getulist(UrllistBO bo);

	/**
	 * 添加新闻url
	 */
	int Addurl(Map params);

	/**
	 * 添加新闻
	 */
	int Addcontext(Map params);

	/**
	 * 修改成功url状态
	 */
	int Sucurl(int id);

	/**
	 * 修改失败url状态
	 */
	int Skipurl(int id);
}
