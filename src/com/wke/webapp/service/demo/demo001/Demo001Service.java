package com.wke.webapp.service.demo.demo001;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wke.webapp.bo.demo.ContentBO;
import com.wke.webapp.bo.demo.NewsBO;
import com.wke.webapp.comm.exception.InsertZeroException;
import com.wke.webapp.comm.struts.service.BaseService;
import com.wke.webapp.persistence.demo.Demo001Mapper;
import com.wke.webapp.vo.demo.ContentVO;
import com.wke.webapp.vo.demo.NewsVO;

/**
 * DEMO service
 * 
 * @author gyx
 *
 */
@Service
public class Demo001Service extends BaseService {
	/**
	 * 初始化文档输入见面
	 */
	public void delcontent() {
		mapper.delcontent();

	}

	/**
	 * 添加文档
	 * 
	 * @param vo
	 * @return
	 */
	public boolean addcontent(ContentVO vo) {
		// String context = vo.getContent();
		// vo.setContent(HtmlUtil.getTextFromHtml(context));
		ContentBO bo = new ContentBO();
		vo.convertToBO(bo);
		bo.setContent(bo.getContent().replace("<br/>", ""));
		bo.setContent(bo.getContent().replace("　　", ""));
		bo.setContent(bo.getContent().replace(" ", ""));
		int dtResult = getMapper().addcontent(bo);
		if (dtResult == 1) {
			return true;
		} else {
			throw new InsertZeroException("insert.exception", "添加文本");
		}
	}

	/**
	 * 获取content
	 */
	public ContentVO getcontent(int id) {
		ContentVO vo = new ContentVO();
		ContentBO bo = getMapper().getcontent(id);
		bo.convertToVO(vo);
		return vo;
	}

	/**
	 * 获取news
	 */
	public NewsVO getnews(int id) {
		NewsVO vo = new NewsVO();
		NewsBO bo = getMapper().getnews(id);
		bo.convertToVO(vo);
		return vo;
	}

	@Autowired
	private Demo001Mapper mapper;

	public Demo001Mapper getMapper() {
		return mapper;
	}

	public void setMapper(Demo001Mapper mapper) {
		this.mapper = mapper;
	}

}
