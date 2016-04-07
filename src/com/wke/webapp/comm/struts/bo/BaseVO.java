package com.wke.webapp.comm.struts.bo;

import java.util.Map;

import com.wke.webapp.comm.utility.PojoUtils;

/**
 * 基础vo类
 * @author likai
 * @version 1.0
 */
public abstract class BaseVO {

	/**
	 * VO转换成BO 根据名称与返回类型判断 一致将进行复制
	 * @param target
	 * @param newInstance 如果该值为true则会创建一个对象并进行修改 否则只在原对象上修改
	 * @param nullcopy 如果该值为true 则VO中的null值也会被复制到BO中 false不会
	 */
	public void convertToBO(BaseBO target, boolean newInstance, boolean nullcopy) {
		PojoUtils.convertPOJO(this, target, newInstance, nullcopy);
	}
	
	/**
	 * 重载方法
	 * @param target
	 */
	public void  convertToBO(BaseBO target) {
		convertToBO(target, false, false);
	}
	
	/**
	 * @see PojoUtils#pojoToHashMap(Object)
	 */
	public Map<String, Object> toHashMap(){
		return PojoUtils.pojoToHashMap(this);
	}
	
}
