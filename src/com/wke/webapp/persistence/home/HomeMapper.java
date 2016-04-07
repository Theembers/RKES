package com.wke.webapp.persistence.home;

import java.util.List;

import com.wke.webapp.bo.home.HomeBO;

public interface HomeMapper {
	/**
	 * 得到作者信息
	 */
	HomeBO getHomeContent(int id);
}
