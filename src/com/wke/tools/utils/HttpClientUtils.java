package com.wke.tools.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.config.RequestConfig.Builder;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

import com.wke.tools.proxy.Proxy;


public class HttpClientUtils {
	/**
	 * 连接超时时间
	 * 
	 */
	public static final int CONNECTION_TIMEOUT_MS = 60000;

	/**
	 * 读取数据超时时间
	 */
	public static final int SO_TIMEOUT_MS = 60000;

	public static final String CONTENT_TYPE_JSON_CHARSET = "application/json;charset=gbk";

	public static final String CONTENT_TYPE_XML_CHARSET = "application/xml;charset=gbk";

	/**
	 * httpclient读取内容时使用的字符集
	 */
	public static final String CHARSET_GBK = "GBK";
	public static final String CHARSET_UTF_8 = "UTF-8";

	public static final Charset UTF_8 = Charset.forName(CHARSET_UTF_8);

	public static final Charset GBK = Charset.forName(CHARSET_GBK);

	
	/**
	 *Description： 简单get调用
	 * 
	 * @author Jadeite.Wang
	 *@param url
	 *@param params
	 *            参数, 不需要即传null
	 *@return
	 *@throws ClientProtocolException
	 *@throws IOException
	 *@throws URISyntaxException
	 */
	public static String getInvoke(String url, Map<String, String> params)
			throws ClientProtocolException, IOException, URISyntaxException {
		return getInvoke(url, params, null, CHARSET_GBK);
	}
	
	/**
	 * @param url
	 * @param params
	 * @param proxy 传入代理
	 * @return
	 * @throws ClientProtocolException
	 * @throws IOException
	 * @throws URISyntaxException
	 */
	public static String getInvoke(String url, Map<String, String> params, Proxy proxy)
		throws ClientProtocolException, IOException, URISyntaxException {
	return getInvoke(url, params, proxy, CHARSET_GBK);
	}

	/**
	 *Description： 简单get调用
	 * 
	 * @author Jadeite.Wang
	 *@param url
	 *@param params
	 *            参数, 不需要即传null
	 *@return
	 *@throws ClientProtocolException
	 *@throws IOException
	 *@throws URISyntaxException
	 */
	public static String getInvoke(String url, Map<String, String> params, Proxy proxy,
			String charset) throws ClientProtocolException, IOException,
			URISyntaxException {

		HttpClient client = buildHttpClient(false);

		HttpGet get = buildHttpGet(url, params, proxy);

		HttpResponse response = client.execute(get);

		assertStatus(response);

		HttpEntity entity = response.getEntity();

		return getContent(entity, charset);
	}

	/**
	 *Description：简单post调用
	 * 
	 * @author Jadeite.Wang
	 *@param url
	 *@param params
	 *            参数, 不需要即传null
	 *@return
	 *@throws URISyntaxException
	 *@throws ClientProtocolException
	 *@throws IOException
	 */
	public static String postInvoke(String url, Map<String, String> params)
			throws URISyntaxException, ClientProtocolException, IOException {
		return postInvoke(url, params, CHARSET_GBK);
	}

	/**
	 *Description：简单post调用
	 * 
	 * @author Jadeite.Wang
	 *@param url
	 *@param params
	 *            参数, 不需要即传null
	 *@return
	 *@throws URISyntaxException
	 *@throws ClientProtocolException
	 *@throws IOException
	 */
	public static String postInvoke(String url, Map<String, String> params,
			String charset) throws URISyntaxException, ClientProtocolException,
			IOException {

		HttpClient client = buildHttpClient(true);

		HttpPost postMethod = buildHttpPost(url, params);

		HttpResponse response = client.execute(postMethod);

		assertStatus(response);

		HttpEntity entity = response.getEntity();

		if (entity != null) {
			String returnStr = EntityUtils.toString(entity, charset);
			return returnStr;
		}
		return null;
	}

	/**
	 *Description：创建HttpClient
	 * 
	 * @author Jadeite.Wang
	 *@param isMultiThread
	 *@return
	 */
	public static HttpClient buildHttpClient(boolean isMultiThread) {

		CloseableHttpClient client;

		if (isMultiThread) {
			client = HttpClientBuilder.create().setConnectionManager(
					new PoolingHttpClientConnectionManager()).build();
		} else {
			client = HttpClientBuilder.create().build();
		}
		return client;
	}

	/**
	 *Description：构建httpPost对象
	 * 
	 * @author Jadeite.Wang
	 *@param url
	 *@param headers
	 *@return
	 *@throws UnsupportedEncodingException
	 *@throws URISyntaxException
	 */
	public static HttpPost buildHttpPost(String url, Map<String, String> params)
			throws UnsupportedEncodingException, URISyntaxException {
		HttpPost post = new HttpPost(url);
		setCommonHttpMethod(post);
		HttpEntity he = null;
		if (params != null) {
			List<NameValuePair> formparams = new ArrayList<NameValuePair>();
			for (String key : params.keySet()) {
				formparams.add(new BasicNameValuePair(key, params.get(key)));
			}
			he = new UrlEncodedFormEntity(formparams, GBK);
			post.setEntity(he);
		}
		return post;

	}

	/**
	 *Description：构建httpGet对象
	 * 
	 * @author Jadeite.Wang
	 *@param url
	 *@param headers
	 *@return
	 *@throws URISyntaxException
	 */
	public static HttpGet buildHttpGet(String url, Map<String, String> params, Proxy proxy)
			throws URISyntaxException {
		// HttpGet get = new HttpGet(buildGetUrl(url, params));
		HttpGet get = new HttpGet(url);
		if (params != null) {
			for (Map.Entry<String, String> entry : params.entrySet()) {
				get.setHeader(entry.getKey(), entry.getValue());
			}
		}
		get.setConfig(buildRequestConfig(proxy));
		return get;
	}

	/**
	 *Description：build getUrl str
	 * 
	 * @author Jadeite.Wang
	 *@param url
	 *@param params
	 *@return
	 */
	private static String buildGetUrl(String url, Map<String, String> params) {
		StringBuffer uriStr = new StringBuffer(url);
		if (params != null) {
			List<NameValuePair> ps = new ArrayList<NameValuePair>();
			for (String key : params.keySet()) {
				ps.add(new BasicNameValuePair(key, params.get(key)));
			}
			if (uriStr.indexOf("?") < 0) {
				uriStr.append("?");
			} else if (!uriStr.substring(uriStr.length() - 1).equals("&")) {
				uriStr.append("&");
			}
			uriStr.append(URLEncodedUtils.format(ps, UTF_8));
		}
		return uriStr.toString();
	}

	/**
	 *Description：设置HttpMethod通用配置
	 * 
	 * @author Jadeite.Wang
	 *@param httpMethod
	 */
	public static void setCommonHttpMethod(HttpRequestBase httpMethod) {
		httpMethod.setHeader(HTTP.CONTENT_ENCODING, CHARSET_GBK);// setting
		// contextCoding

		// httpMethod.setHeader(HTTP.CHARSET_PARAM, CONTENT_CHARSET);
		// httpMethod.setHeader(HTTP.CONTENT_TYPE, CONTENT_TYPE_JSON_CHARSET);
		// httpMethod.setHeader(HTTP.CONTENT_TYPE, CONTENT_TYPE_XML_CHARSET);
	}

	/**
	 *Description：设置成消息体的长度 setting MessageBody length
	 * 
	 * @author Jadeite.Wang
	 *@param httpMethod
	 *@param he
	 */
	public static void setContentLength(HttpRequestBase httpMethod,
			HttpEntity he) {
		if (he == null) {
			return;
		}
		httpMethod.setHeader(HTTP.CONTENT_LEN, String.valueOf(he
				.getContentLength()));
	}

	/**
	 *Description：构建公用RequestConfig
	 * 
	 * @author Jadeite.Wang
	 *@return
	 */
	public static RequestConfig buildRequestConfig(Proxy proxy) {
		// 设置请求和传输超时时间
		Builder builder = RequestConfig.custom();
		builder.setSocketTimeout(SO_TIMEOUT_MS).setConnectTimeout(CONNECTION_TIMEOUT_MS);
		// 设置代理服务器地址和端口
		if (proxy != null) {
			builder.setProxy(new HttpHost(proxy.getHostIp(), proxy.getPort()));
		}
		RequestConfig requestConfig = builder.build();
		return requestConfig;
	}

	/**
	 *Description：强验证必须是200状态否则报异常
	 * 
	 * @author Jadeite.Wang
	 *@param res
	 *@throws HttpException
	 */
	private static void assertStatus(HttpResponse res) throws IOException {
		switch (res.getStatusLine().getStatusCode()) {
		case HttpStatus.SC_OK:
			// case HttpStatus.SC_CREATED:
			// case HttpStatus.SC_ACCEPTED:
			// case HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION:
			// case HttpStatus.SC_NO_CONTENT:
			// case HttpStatus.SC_RESET_CONTENT:
			// case HttpStatus.SC_PARTIAL_CONTENT:
			// case HttpStatus.SC_MULTI_STATUS:
			break;
		default:
			throw new IOException("服务器响应状态异常,失败!");
		}
	}

	public static HashMap<String, String> paramsMap() {
		HashMap<String, String> hashMap = new HashMap<String, String>();
		hashMap
				.put("Accept",
						"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
		hashMap
				.put(
						"User-Agent",
						"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36 LBBROWSER");
		hashMap.put("Accept-Language", "zh-CN,zh;q=0.8");
		hashMap.put("Cache-Control", "max-age=0");
		hashMap.put("Connection", "keep-alive");
		return hashMap;
	}

	/**
	 *Description：获取页面内容
	 * 
	 * @author Jadeite.Wang
	 *@param httpEntity
	 *@param charset
	 *            页面编码类型
	 *@return
	 *@throws IOException
	 */
	public static String getContent(HttpEntity httpEntity, String charset)
			throws IOException {
		String content = "";
		if (httpEntity != null) {
			byte[] bytes = EntityUtils.toByteArray(httpEntity);
			if (charset == null || "".equals(charset)) {
				String regEx = "<meta[^>]*?charset=['\"\\s]*(.*?)['\"\\s>]+";
				Matcher matcher = RegexUtils.getMatcher(new String(bytes),
						regEx, Pattern.CASE_INSENSITIVE);
				if (matcher.find()) {
					charset = matcher.group(1);
				}
			}
			content = new String(bytes, charset);
		}
		return content;
	}

	private HttpClientUtils() {
	}

	public static void main(String[] args) throws ClientProtocolException,
			IOException, URISyntaxException {
		HashMap<String, String> params = HttpClientUtils.paramsMap();
//		params.put("Host", "www.dianping.com");
//		params.put("Accept-Encoding", "gzip,deflate,sdch");
//		params.put(
//						"Cookie",
//						"_hc.v=\"\\\"8f93e2b9-0244-4bb5-a52c-85b4d656ba96.1412061476\\\"\\\"; abtest=\"48,124\\|52,133\\|47,122\\|44,106\\|45,115\\\"; hunyanhistory=1798201; userParamsCookie=trace=g164; PHOENIX_ID=0a01023d-1490d5d130e-1d4da6d; tc=1; __utma=1.1125904456.1412061478.1413167846.1413267526.32; __utmc=1; __utmz=1.1412991303.20.4.utmcsr=baidu|utmccn=(organic)|utmcmd=organic|utmctr=%E5%A4%A7%E4%BC%97%E7%82%B9%E8%AF%84; s_ViewType=10; JSESSIONID=7828CBA7148A933833FD0B0DFF2B16C1; aburl=1; cy=25; cye=tangshan");
		Proxy proxy = new Proxy("183.230.53.162", 8123);
		String url = "http://www.dianping.com/shop/4458397";
		String html = getInvoke(url, params,proxy,"UTF-8");
		System.err.println(html);
	}
}
