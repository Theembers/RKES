package com.wke.webapp.service.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wke.webapp.bo.home.HomeBO;
import com.wke.webapp.comm.struts.service.BaseService;
import com.wke.webapp.persistence.home.HomeMapper;
import com.wke.webapp.vo.home.HomeVo;

/**
 * 大厅管理service
 * 
 * @author gyx
 *
 */
@Service
public class HomeService extends BaseService {

	/**
	 * 得到作者信息
	 * 
	 * @param vo
	 * @return
	 */
	public HomeVo getOwnerContent(int id) {
		HomeVo homevo = new HomeVo();
		HomeBO homebo = getHomemapper().getHomeContent(id);
		homebo.convertToVO(homevo);
		return homevo;
	}

	@Autowired
	private HomeMapper homemapper;

	public HomeMapper getHomemapper() {
		return homemapper;
	}

	public void setHomemapper(HomeMapper homemapper) {
		this.homemapper = homemapper;
	}

}
