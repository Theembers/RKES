package com.wke.webapp.persistence.demo;

import java.util.List;
import java.util.Map;

import com.wke.webapp.bo.demo.CodeBO;
import com.wke.webapp.bo.demo.NewsBO;
import com.wke.webapp.bo.demo.WebBO;

public interface Demo002Mapper {

	/**
	 * 得到web列表
	 * 
	 * @param bo
	 * @return
	 */
	List<WebBO> getWeb(WebBO bo);

	/**
	 * 得到web总数
	 * 
	 * @param bo
	 * @return
	 */
	int getWebCnt(WebBO bo);

	/**
	 * add web
	 */
	int addWeb(WebBO bo);

	/**
	 * 删除web
	 */
	int delWeb(int id);

	/**
	 * 修改状态
	 */
	int workWeb(Map params);

	/**
	 * 根据ID获取web
	 */
	WebBO gettheweb(int id);

	/**
	 * 修改web
	 */
	int editWeb(WebBO bo);

	/**
	 * GET CODE LIST
	 * 
	 * @return
	 */
	List<CodeBO> getcodelist();

	/**
	 * 得到news列表
	 * 
	 * @param bo
	 * @return
	 */
	List<NewsBO> getNews(NewsBO bo);

	/**
	 * 得到news总数
	 * 
	 * @param bo
	 * @return
	 */
	int getNewsCnt(NewsBO bo);

	/**
	 * 根据id得到news详细信息
	 */
	NewsBO gettheNews(int id);

}
