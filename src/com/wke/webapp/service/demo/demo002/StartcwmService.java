package com.wke.webapp.service.demo.demo002;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.client.ClientProtocolException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wke.keyword.KeyWordComputer;
import com.wke.keyword.Keyword;
import com.wke.tools.utils.HttpClientUtils;
import com.wke.webapp.bo.demo.UrllistBO;
import com.wke.webapp.bo.demo.WebBO;
import com.wke.webapp.comm.struts.service.BaseService;
import com.wke.webapp.persistence.demo.StartcwmMapper;
import com.wke.tools.utils.HtmlUtil;

/**
 * CWM service
 * 
 * @author gyx
 *
 */
@Service
public class StartcwmService extends BaseService {
	private WebBO bo = new WebBO();
	private UrllistBO ubo = new UrllistBO();
	private List<Keyword> keyWords;
	private String keyWordsStr;
	private String title;
	private String context;

	/**
	 * 获取WEB任务列
	 */
	public List<WebBO> getWeb() {
		return mapper.getWeb(bo);
	}

	/**
	 * 获取urllist
	 */
	public List<UrllistBO> getulist() {
		return mapper.getulist(ubo);
	}

	/**
	 * 提取URL: regex crawlUrl proxy code
	 */
	public void getURL(int id, String regex, String crawlUrl, String code) {
		String webContent = "";
		try {
			webContent = HttpClientUtils.getInvoke(crawlUrl,
					HttpClientUtils.paramsMap(), null, code);
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		Pattern webpattern = Pattern.compile(regex, Pattern.DOTALL);
		Matcher matcher = webpattern.matcher(webContent);
		while (matcher.find()) {
			String url = "";
			url = matcher.group(1);
			if (url != "") {
				Map params = new HashMap();
				params.put("hostid", id);
				params.put("url", url);
				mapper.Addurl(params);
				System.out.println("加入任务：" + url);
			}
		}
		return;
	}

	/**
	 * 提取context: Title_re, Context_re, Url, Code
	 */
	public void getcontext(int id, int hostid, String Title_re,
			String Context_re, String crawlUrl, String Code) {
		System.out.println("当前任务：" + crawlUrl);
		String webContent = "";
		try {
			webContent = HttpClientUtils.getInvoke(crawlUrl,
					HttpClientUtils.paramsMap(), null, Code);
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			System.err.println("请求超时暂停3秒！");
			try {
				Thread.sleep(3000);
			} catch (InterruptedException ie) {
				e.printStackTrace();
			}
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		Pattern webpattern = Pattern.compile(Title_re, Pattern.DOTALL);
		Matcher matcher = webpattern.matcher(webContent);
		if (matcher.find()) {
			title = "";
			title = matcher.group(1);
		} else {
			title = "";
		}
		webpattern = Pattern.compile(Context_re, Pattern.DOTALL);
		matcher = webpattern.matcher(webContent);
		if (matcher.find()) {
			context = "";
			context = matcher.group(1);
			context = HtmlUtil.getTextFromHtml(context);
		} else {
			context = "";
		}

		if (title != null && title != "" && context != null && context != "") {
			// get keywords
			getKeywords(5, title, context);
			// insert server
			Map params = new HashMap();
			params.put("hostid", hostid);
			params.put("title", title);
			params.put("context", context);
			params.put("keywords", keyWordsStr);
			params.put("url", crawlUrl);
			mapper.Addcontext(params);
			mapper.Sucurl(id);
			System.out.println("抓去成功：" + title);
		} else {
			mapper.Skipurl(id);
		}

		return;
	}

	/**
	 * change keywords_list to string
	 * 
	 */
	public String getKeywords(int num, String title, String content) {
		KeyWordComputer kwc = new KeyWordComputer(num);
		keyWords = kwc.computeArticleTfidf(title, content);
		keyWordsStr = "";
		for (int i = 0; i != keyWords.size(); i++) {
			keyWordsStr += keyWords.get(i).getName() + "	";
		}
		return keyWordsStr;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	@Autowired
	private StartcwmMapper mapper;

	public StartcwmMapper getMapper() {
		return mapper;
	}

	public void setMapper(StartcwmMapper mapper) {
		this.mapper = mapper;
	}

}
