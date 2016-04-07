package com.wke.webapp.comm.utility;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;

import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;



/**
 * XML工具类
 * <p>Title: XmlHelper</p>
 * <p>Description: 中国税务税收征管信息系统</p>
 * <p>Copyright: 中国软件与技术服务股份有限公司 Copyright (c) 2006</p>
 * <p>Company: 中国软件与技术服务股份有限公司</p>
 * @author 架构部提供  增加注释 by css
 * @version 1.0
 * 
 */
public class XmlHelper implements Serializable {
	
	public static final Logger logger = LoggerFactory.getLogger(XmlHelper.class);
	
	public XmlHelper() {
	}       
	/**
	 * 判断一个字符串是否是只有数字符号
	 * @param str
	 * @return
	 */
	public boolean isNumeric(String str) {
		try {
			Float.parseFloat(str);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
    /**
     * 判断第一个字符串中是否包含第二个字符串
     * @param str1
     * @param str2
     * @return
     */
	public boolean InStr(String str1, String str2) {
		String[] str3 = str1.split(str2);
		return (str3.length > 1) ? true : false;
	}

	/**
	 * 将Document转换成xml字符串
	 * @param Document SrcDoc
	 * @return String
	 */
	public static String toXml(Document doc) {
		StringBuffer sb = new StringBuffer();
		StringWriter sw = new StringWriter();
		try {
			Format format = Format.getPrettyFormat();
			format.setEncoding("UTF-8");
			XMLOutputter outputter = new XMLOutputter(format);
			outputter.output(doc, sw);
		} catch (Exception e) {
			logger.error("构建Xml字符串失败！");
			return "<ERR/>";
		}
		sb = sw.getBuffer();
		return sb.toString();
	} 
	
	/**
	 * 创建一个根节点，属性status和message
	 * @param status 状态value
	 * @param message 信息value
	 * @return
	 */
	public static Element buildRootElement(String status,String message){
		Element root = new Element("root");
		root.setAttribute("status",status);
		root.setAttribute("message",message);
		return root;
	}
	
	public static String rootElementToXml(Element e){
		Document doc = new Document();
		doc.addContent(e);
		return toXml(doc);
	}
	
	public static Document parseStringToDocument(String xmlStr) {
		SAXBuilder saxBuilder = new SAXBuilder();
		ByteArrayInputStream is = null;
		try {
			is = new ByteArrayInputStream(xmlStr.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return null;
		}
		Document doc = null;
		try {
			doc = saxBuilder.build(is);
		} catch (JDOMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return doc;
	}
	
	/**
	 * 根据xml文件建立Document对象
	 * @param xmlFile
	 * @return
	 * @throws Exception
	 */
	public static Document buildXMLDocument(File xmlFile)throws Exception{
		return buildXMLDocument(new FileInputStream(xmlFile));
	}
	
	/**
	 * 根据xml的输入流建立Document对象
	 * @param is
	 * @return
	 * @throws Exception
	 */
	public static Document buildXMLDocument(InputStream is)throws Exception{
		SAXBuilder builder = new SAXBuilder();
		return builder.build(is);
	}
	
	/**
	 * 创建一个根节点，属性status
	 * @param status 状态value
	 * @return
	 */
	public static Element buildRootElement(String status){
		Element root = new Element("root");
		root.setAttribute("status",status);
		return root;
	}
	
	public static void main(String[] args) throws JDOMException, IOException{
		String xml = "<root status='info'/>";
		SAXBuilder   saxBuilder   =   new   SAXBuilder();
		ByteArrayInputStream is = new ByteArrayInputStream(xml.getBytes());
		Document doc = saxBuilder.build(is);
		Element root = doc.getRootElement();
		System.out.println(root.getAttributeValue("status"));
	}
}
