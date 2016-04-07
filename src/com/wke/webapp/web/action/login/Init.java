/**
 * 
 */
package com.wke.webapp.web.action.login;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.wke.webapp.comm.struts.action.BaseAction;

/**
 * 用户登录初始化
 * @author likai
 * @version 1.0
 */
@ParentPackage(value="default")
@Namespace(value="/login")
@Result(location="/WEB-INF/login/login.ftl")
public class Init extends BaseAction {

}
