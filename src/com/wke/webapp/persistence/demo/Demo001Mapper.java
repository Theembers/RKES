package com.wke.webapp.persistence.demo;

import com.wke.webapp.bo.demo.ContentBO;
import com.wke.webapp.bo.demo.NewsBO;

public interface Demo001Mapper {

	/**
	 * 初始化文档输入见面
	 */
	int delcontent();

	/**
	 * 添加文档
	 */
	int addcontent(ContentBO bo);

	/**
	 * 获取content
	 */
	ContentBO getcontent(int id);

	/**
	 * 获取news
	 */
	NewsBO getnews(int id);
}
