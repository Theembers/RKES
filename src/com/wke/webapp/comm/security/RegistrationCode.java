package com.wke.webapp.comm.security;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import com.wke.webapp.comm.utility.DateUtils;

/**
 * 产品注册码解析,单例
 * @author ZhangBing
 */
public class RegistrationCode {
	/** 注册码文件名，存放在web工程中的WEB-INF文件夹下 */
	private static final String keyFileName = "shcsszscq.key";
	
	private static RegistrationCode registrationCode = null;
	
	
	/** 保存key中的参数 */
	private Map<String,String> context = null;
	
	private RegistrationCode(){
		context = new HashMap<String, String>();
		loadKeyProperties();
	}
	
	/**
	 * 返回单例
	 * @return
	 */
	public static RegistrationCode Singleton(){
		if(registrationCode==null){
			registrationCode = new RegistrationCode();
		}
		return registrationCode;
	}
	
	/**
	 * 注册码注册
	 * @param registrationCode
	 */
	public void register(String registrationCode){
		//先把这串字符写到文件中
		String keyFilePath = getKeyFilePath();
		try {
			FileOutputStream fos = new FileOutputStream(keyFilePath);
			fos.write(registrationCode.getBytes());
			fos.close();
			loadKeyProperties();
		} catch (Exception e) { 
			e.printStackTrace();
		}
	}
	
	/**
	 * 加载注册码key文件
	 */
	private void loadKeyProperties(){
		BufferedReader br = null;
		try{
			String keyFilePath = getKeyFilePath();
			if(!new File(keyFilePath).exists()){
				//假如key文件不存在
				return;
			}
			br = new BufferedReader(new InputStreamReader(new FileInputStream(keyFilePath)));
			StringBuilder sb = new StringBuilder();
			String str = br.readLine();
			while(str!=null){
				sb.append(str);
				str = br.readLine();
			}
			String code = sb.toString();
			context.putAll(parseRegistCode(code));
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				if(br!=null){
					br.close();
				}
			} catch (Exception e) {
					// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 解析注册码
	 * @param code
	 * @return
	 */
	public Map<String,String> parseRegistCode(String code){
		Map<String,String> map = new HashMap<String, String>();
		try{
			if(code!=null && !"".equals(code)){
				code = DES.getInstance(DES.keyword).decryptStr(code);
				String[] arr = code.split(";");
				for(String pair : arr){
					String[] arr1 = pair.split(":");
					if(arr1.length>1){
						map.put(arr1[0], arr1[1]);
					}else{
						map.put(arr1[0], "");
					}
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return map;
	}
	
	
	/**
	 * 返回keyFile的路径
	 * @return
	 */
	private String getKeyFilePath(){
		return RegistrationCode.class.getResource("/").getPath().replaceAll("%20", " ")+".."+File.separator+keyFileName;
	}
	
	/**
	 * 返回用户名
	 * @return
	 */
	public String getUsername(){
		return context.get("username");
	}
	
	/**
	 * 返回密码
	 * @return
	 */
	public String getPassword(){
		return context.get("password");
	}
	
	/**
	 * 获取今天的密码
	 * @return
	 */
	public String getTodayPassword(){
		if(context.get("password")==null){
			return null;
		}
		try{
			return DES.getInstance(DES.keyword).encryptStr(context.get("password")+DateUtils.toDateStr(Calendar.getInstance()));
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 返回软件更新期限
	 * @return
	 */
	public String getRjgxqx(){
		return context.get("rjgxqx");
	}
	
	/**
	 * 返回数据更新期限
	 * @return
	 */
	public String getSjgxqx(){
		return context.get("sjgxqx");
	}
	
	/**
	 * 返回软件使用期限
	 * @return
	 */
	public String getRjsyqx(){
		return context.get("rjsyqx");
	}
	
	/**
	 * 返回注册码
	 * @return
	 */
	public String getMac(){
		return context.get("mac");
	}
	
}
