package com.wke.webapp.comm.utility;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.StopWatch;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class MethodTimeAdvice implements MethodInterceptor {   
    protected final Log log = LogFactory.getLog(MethodTimeAdvice.class);      
         
    /**    
     * 拦截要执行的目标方法    
     */     
    public Object invoke(MethodInvocation invocation) throws Throwable {      
        //用 commons-lang 提供的 StopWatch 计时，Spring 也提供了一个 StopWatch      
      
    	long start = System.currentTimeMillis();
        Object result = invocation.proceed();    
        long stop = System.currentTimeMillis();
              
       /* //方法参数类型，转换成简单类型      
        Class[] params = invocation.getMethod().getParameterTypes();      
        String[] simpleParams = new String[params.length];      
        for (int i = 0; i < params.length; i++) {      
            simpleParams[i] = params[i].getSimpleName();      
        }      
              
        log.info("Takes:" + clock.getTime() + " ms ["     
                + invocation.getThis().getClass().getName() + "."     
                + invocation.getMethod().getName() + "("+StringUtils.join(simpleParams,",")+")] ");      */
        return result;      
    }      
  
  
}  
