package com.wke.webapp.service.demo.demo002;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wke.webapp.bo.demo.CodeBO;
import com.wke.webapp.bo.demo.NewsBO;
import com.wke.webapp.bo.demo.WebBO;
import com.wke.webapp.comm.exception.InsertZeroException;
import com.wke.webapp.comm.struts.service.BaseService;
import com.wke.webapp.persistence.demo.Demo002Mapper;
import com.wke.webapp.vo.demo.NewsVO;
import com.wke.webapp.vo.demo.WebVO;

/**
 * DEMO service
 * 
 * @author gyx
 *
 */
@Service
public class Demo002Service extends BaseService {
	/**
	 * get web list
	 */
	public List<WebBO> getWeb(WebVO vo, int from, int to) {
		WebBO bo = new WebBO();
		vo.convertToBO(bo);
		bo.setFrom(from);
		bo.setTo(to);
		return mapper.getWeb(bo);
	}

	/**
	 * get web cnt
	 */
	public int getWebCnt(WebVO vo) {
		WebBO bo = new WebBO();
		vo.convertToBO(bo);
		return mapper.getWebCnt(bo);
	}

	/**
	 * add web
	 */
	public boolean addWeb(WebVO vo) {
		WebBO bo = new WebBO();
		vo.convertToBO(bo);

		bo.setUrl_re(bo.getUrl_re().replace("&lt;", "<"));
		bo.setUrl_re(bo.getUrl_re().replace("&quot;", "\""));
		bo.setUrl_re(bo.getUrl_re().replace("&gt;", ">"));

		bo.setTitle_re(bo.getTitle_re().replace("&lt;", "<"));
		bo.setTitle_re(bo.getTitle_re().replace("&quot;", "\""));
		bo.setTitle_re(bo.getTitle_re().replace("&gt;", ">"));

		bo.setContext_re(bo.getContext_re().replace("&lt;", "<"));
		bo.setContext_re(bo.getContext_re().replace("&quot;", "\""));
		bo.setContext_re(bo.getContext_re().replace("&gt;", ">"));

		int dtResult = getMapper().addWeb(bo);

		if (dtResult == 1) {
			return true;
		}
		return false;
	}

	/**
	 * 删除web
	 */
	public void delWeb(int id) {

		int result = mapper.delWeb(id);

		if (result != 1) {
			throw new InsertZeroException("delete.exception", "Web");
		}
	}

	/**
	 * 修改状态
	 */
	public int workWeb(Map params) throws Exception {
		return mapper.workWeb(params);
	}

	/**
	 * 根据ID获取web
	 */
	public WebVO gettheweb(int id) {
		WebVO vo = new WebVO();
		WebBO bo = getMapper().gettheweb(id);
		bo.convertToVO(vo);
		return vo;
	}

	/**
	 * 修改web
	 */
	public boolean editWeb(WebVO vo) {
		WebBO bo = new WebBO();
		vo.convertToBO(bo);
		bo.setUrl_re(bo.getUrl_re().replace("&lt;", "<"));
		bo.setUrl_re(bo.getUrl_re().replace("&quot;", "\""));
		bo.setUrl_re(bo.getUrl_re().replace("&gt;", ">"));

		bo.setTitle_re(bo.getTitle_re().replace("&lt;", "<"));
		bo.setTitle_re(bo.getTitle_re().replace("&quot;", "\""));
		bo.setTitle_re(bo.getTitle_re().replace("&gt;", ">"));

		bo.setContext_re(bo.getContext_re().replace("&lt;", "<"));
		bo.setContext_re(bo.getContext_re().replace("&quot;", "\""));
		bo.setContext_re(bo.getContext_re().replace("&gt;", ">"));
		int Result = getMapper().editWeb(bo);

		if (Result == 1) {
			return true;
		} else {
			throw new InsertZeroException("update.exception", "Web");
		}

	}

	/**
	 * get code list
	 */
	public List<CodeBO> getcodelist() {
		return getMapper().getcodelist();
	}

	/**
	 * get news list
	 */
	public List<NewsBO> getNews(NewsVO vo, int from, int to) {
		NewsBO bo = new NewsBO();
		vo.convertToBO(bo);
		bo.setFrom(from);
		bo.setTo(to);
		return mapper.getNews(bo);
	}

	/**
	 * get news cnt
	 */
	public int getNewsCnt(NewsVO vo) {
		NewsBO bo = new NewsBO();
		vo.convertToBO(bo);
		return mapper.getNewsCnt(bo);
	}

	/**
	 * get news
	 */

	public NewsVO gettheNews(int id) {
		NewsBO bo = getMapper().gettheNews(id);
		NewsVO vo = new NewsVO();
		bo.convertToVO(vo);
		return vo;
	}

	@Autowired
	private Demo002Mapper mapper;

	public Demo002Mapper getMapper() {
		return mapper;
	}

	public void setMapper(Demo002Mapper mapper) {
		this.mapper = mapper;
	}
}
