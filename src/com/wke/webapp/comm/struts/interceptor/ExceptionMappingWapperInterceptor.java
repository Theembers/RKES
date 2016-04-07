package com.wke.webapp.comm.struts.interceptor;

import java.util.List;
import java.util.Set;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ValidationAware;
import com.opensymphony.xwork2.config.entities.ExceptionMappingConfig;
import com.opensymphony.xwork2.interceptor.ExceptionHolder;
import com.opensymphony.xwork2.interceptor.ExceptionMappingInterceptor;
import com.opensymphony.xwork2.util.TextParseUtil;
import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;

/**
 * 自定义异常包装类 检查 如果是自定义异常 则返回至前台页面 不抛出异常 
 * @author likai
 * @version 1.0
 */
public class ExceptionMappingWapperInterceptor extends ExceptionMappingInterceptor {

	private static final long serialVersionUID = 4231922163980128593L;

	protected static final Logger LOG = LoggerFactory.getLogger(ExceptionMappingWapperInterceptor.class);

	protected Set<String> exceptionNameSet = null;

	public void setExceptionNames(String exceptionNames) {
		this.exceptionNameSet = TextParseUtil.commaDelimitedStringToSet(exceptionNames);;
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		String result;
		ValidationAware validation = null;

		try {
			result = invocation.invoke();
		} catch (Exception e) {

			Action action = (Action) invocation.getAction();
			
			if (isLogEnabled()) {
				handleLogging(e);
			}

			if (exceptionNameSet != null && action instanceof ValidationAware) {
				validation = (ValidationAware) action;
				String exceptionName = e.getClass().getName();

				if(exceptionNameSet.contains(exceptionName)){
					validation.addActionError(e.getMessage());
					return Action.INPUT;
				}
			}
			
			List<ExceptionMappingConfig> exceptionMappings = invocation.getProxy().getConfig().getExceptionMappings();
			String mappedResult = this.findResultFromExceptions(exceptionMappings, e);
			if (mappedResult != null) {
				result = mappedResult;
				if(e.getMessage() == null || "".equals(e.getMessage())){					
					invocation.getStack().push(new ExceptionMessage(String.valueOf(e)));
				} else {
					invocation.getStack().push(new ExceptionMessage(e.getMessage()));
				}
				publishException(invocation, new ExceptionHolder(e));
			} else {
				throw e;
			}
		}

		return result;
	}

}
