/**
 * 
 */
package com.wke.webapp.comm.utility;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/**
 * pojo转换帮助类
 * @author King
 * @version 1.0
 *
 */
public class PojoUtils {
	
	/**
	 * pojo复制 来源 oringinal 目标target
	 * @param oringinal
	 * @param target
	 * @param newInstance 是否返回全新对象
	 * @param nullcopy null值是否拷贝
	 */
	public static void convertPOJO(Object oringinal, Object target, boolean newInstance, boolean nullcopy) {
		try {
			Class clazz = oringinal.getClass();
			Class clazzTar = target.getClass();

			BeanInfo info = Introspector.getBeanInfo(clazz, clazz.getSuperclass());
			PropertyDescriptor[] props = info.getPropertyDescriptors();
			
			BeanInfo infoTar = Introspector.getBeanInfo(clazzTar, clazzTar.getSuperclass());
			PropertyDescriptor[] propsTar = infoTar.getPropertyDescriptors();
			
			// 将目标对象值清空
			if(newInstance){
				Object result = null;
				for(PropertyDescriptor propTar : propsTar){
					Method accessorTar = propTar.getWriteMethod();
					accessorTar.invoke(target, result);
				}
			}
			
			for(PropertyDescriptor prop : props){
				String field = prop.getName();
				Method accessor = prop.getReadMethod();
				Object result = accessor.invoke(oringinal);
				for(PropertyDescriptor propTar : propsTar){
					String fieldTar = propTar.getName();
					if(fieldTar.equals(field) && (nullcopy || result != null) ){
						Method accessorTar = propTar.getWriteMethod();
						accessorTar.invoke(target, result);
						break;
					}
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("can not convert pojo");
		}
	}
	
	/**
	 * pojo转换成hashMap
	 * @param pojo
	 * @return key=属性名 value=属性值
	 */
	public static Map<String, Object> pojoToHashMap(Object pojo){
		
		Map<String, Object> pojoMap = new HashMap<String, Object>();
		
		Class clazz = pojo.getClass();
		
		BeanInfo info;
		try {
			
			info = Introspector.getBeanInfo(clazz, clazz.getSuperclass());
			PropertyDescriptor[] props = info.getPropertyDescriptors();
			
			for(PropertyDescriptor prop : props){
				String field = prop.getName();
				Method accessor = prop.getReadMethod();
				pojoMap.put(field, accessor.invoke(pojo));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("can not convert pojo to hashmap");
		}
		
		return pojoMap;
	}
	
	/**
	 * pojo用于显示pojo属性，值
	 * @param pojo
	 * @return
	 */
	public static String getPojoProperty(Object pojo){
		
		StringBuffer sb = new StringBuffer();
		
		Class clazz = pojo.getClass();
			
		try {
			BeanInfo info = Introspector.getBeanInfo(clazz, clazz.getSuperclass());
			PropertyDescriptor[] props = info.getPropertyDescriptors();
			
			Object obj;
			
			for(PropertyDescriptor prop : props){
				String field = prop.getName();
				Method accessor = prop.getReadMethod();
				obj = accessor.invoke(pojo);
				sb.append(field).append(" : ").append(obj).append("\n");
			}
			
		} catch (IntrospectionException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
		return sb.toString();
			
	}
}
