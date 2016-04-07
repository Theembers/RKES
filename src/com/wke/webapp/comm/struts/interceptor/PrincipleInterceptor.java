/**
 * 
 */
package com.wke.webapp.comm.struts.interceptor;

import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ValidationAware;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.util.TextParseUtil;
import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;
import com.wke.webapp.service.login.LoginConstants;

/**
 * 权限拦截器
 * 
 * @author likai
 * @version 1.0
 */
public class PrincipleInterceptor extends AbstractInterceptor {

	protected static final Logger LOG = LoggerFactory
			.getLogger(ExceptionMappingWapperInterceptor.class);

	protected Set<String> ignoreUrlSet = null;

	public void setIgnoreUrlSet(String ignoreUrlSet) {
		this.ignoreUrlSet = TextParseUtil
				.commaDelimitedStringToSet(ignoreUrlSet);
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		String result;
		boolean flag = false;

		ActionContext actionContext = invocation.getInvocationContext();
		HttpServletRequest request = (HttpServletRequest) actionContext
				.get(StrutsStatics.HTTP_REQUEST);
		Map<String, Object> session = actionContext.getSession();
		Set<String> urls = (Set<String>) session
				.get(LoginConstants.LOGIN_PRINCIPLE);
		if (urls == null) {
			urls = ignoreUrlSet;
		} else {
			urls.addAll(ignoreUrlSet);
		}

		for (String url : urls) {
			if (request.getRequestURI().indexOf(url) != -1) {
				flag = true;
				break;
			}
		}

		if (flag) {
			result = invocation.invoke();
		} else {
			Action action = (Action) invocation.getAction();

			if (action instanceof ValidationAware) {
				ValidationAware validation = (ValidationAware) action;

				// 判断用户名
				String username = (String) session
						.get(LoginConstants.LOGIN_USERNAME);

				// 用户名不存在，重新登录
				// 用户名存在，则为无权访问
				if (username == null || "".equals(username)) {
					result = Action.LOGIN;
				} else {
					throw new Exception("您的权限不足，无法权访问该页面,url:"
							+ request.getRequestURI());
				}
			} else {
				result = Action.LOGIN;
			}

		}

		return result;
	}

}
