/**
 * 
 */
package com.wke.webapp.comm.struts.interceptor;

import java.util.Map;
import java.util.Map.Entry;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.wke.webapp.comm.utility.StringUtils;

/**
 * 特殊字符拦截器
 * @author King
 *
 */
public class IllegalCharacterInterceptor extends AbstractInterceptor {


	private static final long serialVersionUID = -7884163566177172997L;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.opensymphony.xwork2.interceptor.AbstractInterceptor#intercept(com
	 * .opensymphony.xwork2.ActionInvocation)
	 */
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext ac = invocation.getInvocationContext();
		
		Map<String, Object> params = ac.getParameters();
		// 下面开始遍历组装
		for(Entry<String, Object> entry : params.entrySet()) {
			String key = entry.getKey();

			String[] oldValues = null;
			if (entry.getValue() instanceof String) {
				oldValues = new String[] { entry.getValue().toString() };
			} else {
				oldValues = (String[]) entry.getValue();
			}

			String newValueStr = null;// 新值
			if (oldValues.length > 1) {
				newValueStr = "{";
				for (int i = 0; i < oldValues.length; i++) {
					newValueStr += StringUtils.filtrateString(oldValues[i].toString());// 字符转义处理
					if (i != oldValues.length - 1) {
						newValueStr += ",";
					}
				}
				newValueStr += "}";
			} else if (oldValues.length == 1) {
				newValueStr = StringUtils.filtrateString(oldValues[0].toString());// 字符转义处理
			} else {
				newValueStr = "null";
			}

			params.put(key, newValueStr);

		}

		return invocation.invoke();
	}

}
