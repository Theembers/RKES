package com.wke.webapp.web.action.system.sys003;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.wke.webapp.comm.struts.action.BaseAction;

/**
 * 修改用户密码入口
 * @author gxz
 *
 */
@ParentPackage(value="default")
@Namespace(value="/system/sys003")
@Result(name="success",location="/WEB-INF/system/sys003/editPwd.ftl")
public class Editpwdinit extends BaseAction{

	
}
