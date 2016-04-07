package com.wke.webapp.web.action.demo.demo001;

import java.util.Collection;
import java.util.List;

import org.ansj.domain.Term;
import org.ansj.splitWord.analysis.BaseAnalysis;
import org.ansj.splitWord.analysis.IndexAnalysis;
import org.ansj.splitWord.analysis.NlpAnalysis;
import org.ansj.splitWord.analysis.ToAnalysis;
import org.ansj.util.MyStaticValue;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.wke.keyword.KeyWordComputer;
import com.wke.keyword.Keyword;
import com.wke.summary.Summary;
import com.wke.summary.SummaryComputer;
import com.wke.summary.TagContent;
import com.wke.webapp.comm.struts.action.BaseAction;
import com.wke.webapp.service.demo.demo001.Demo001Service;
import com.wke.webapp.vo.demo.ContentVO;
import com.wke.webapp.vo.demo.NewsVO;

/**
 * 关键词demo 展示
 * 
 * @author gyx
 * 
 */
@ParentPackage(value = "default")
@Namespace(value = "/demo/demo001")
@Results({ @Result(location = "/WEB-INF/demo/demo001/wkeshow.ftl") })
public class wkeshow extends BaseAction {
	@Override
	public String execute() {
		MyStaticValue.userLibrary = "E:\\workspace\\wke\\library";
		KeyWordComputer kwc = new KeyWordComputer(30);
		if (id == 0) {
			setDemovo(getService().getcontent(id = 1));
			content = contentvo.getContent();
			keyWords = kwc.computeArticleTfidf(content);
		} else {
			setNewsvo(getService().getnews(id));
			content = newsvo.getContext();
			title = newsvo.getTitle();
			keyWords = kwc.computeArticleTfidf(title, content);
		}

		// nlp分词
		nlpResult = NlpAnalysis.parse(content);
		// to分词
		toResult = ToAnalysis.parse(content);
		// basic分词
		minResult = BaseAnalysis.parse(content);
		// index分词
		indexResult = IndexAnalysis.parse(content);
		// 关键词对照
		SummaryComputer sc = new SummaryComputer(null, content);
		Summary summary = sc.toSummary();
		summaryStr = new TagContent("<font color=\"#FFB800\">", "</font>")
				.tagContent(summary);

		return SUCCESS;
	}

	private ContentVO contentvo;
	private NewsVO newsvo;
	private int id;
	private Collection<Keyword> keyWords;
	private List<Term> toResult;
	private List<Term> nlpResult;
	private List<Term> minResult;
	private List<Term> indexResult;
	private String summaryStr;
	private String title;
	private String content;

	// get And set

	public String getSummaryStr() {
		return summaryStr;
	}

	public ContentVO getContentvo() {
		return contentvo;
	}

	public void setContentvo(ContentVO contentvo) {
		this.contentvo = contentvo;
	}

	public ContentVO getDemovo() {
		return contentvo;
	}

	public void setDemovo(ContentVO demovo) {
		this.contentvo = demovo;
	}

	public void setSummaryStr(String summaryStr) {
		this.summaryStr = summaryStr;
	}

	public List<Term> getNlpResult() {
		return nlpResult;
	}

	public void setNlpResult(List<Term> nlpResult) {
		this.nlpResult = nlpResult;
	}

	public List<Term> getMinResult() {
		return minResult;
	}

	public void setMinResult(List<Term> minResult) {
		this.minResult = minResult;
	}

	public List<Term> getIndexResult() {
		return indexResult;
	}

	public void setIndexResult(List<Term> indexResult) {
		this.indexResult = indexResult;
	}

	public List<Term> getToResult() {
		return toResult;
	}

	public void setToResult(List<Term> toResult) {
		this.toResult = toResult;
	}

	public Collection<Keyword> getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(Collection<Keyword> keyWords) {
		this.keyWords = keyWords;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public NewsVO getNewsvo() {
		return newsvo;
	}

	public void setNewsvo(NewsVO newsvo) {
		this.newsvo = newsvo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Autowired
	private Demo001Service service;

	public Demo001Service getService() {
		return service;
	}

	public void setService(Demo001Service service) {
		this.service = service;
	}
}
