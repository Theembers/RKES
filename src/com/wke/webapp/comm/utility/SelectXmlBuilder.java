package com.wke.webapp.comm.utility;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.jdom.Document;
import org.jdom.Element;

import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;

/**
 * <p>
 * Title: 上海财税
 * </p>
 * <p>
 * Description: 中国税务税收征管信息系统
 * </p>
 * <p>
 * Copyright: Copyright (c) 2006，中国软件与技术服务股份有限公司
 * </p>
 * <p>
 * Company: 中国软件与技术服务股份有限公司
 * </p>
 *
 * @author 
 * @version 1.0 2006.9.5
 */

public class SelectXmlBuilder {
	
	public static final Logger logger = LoggerFactory.getLogger(SelectXmlBuilder.class);

  private Document doc;

  private Element rootNavi;

  private String dm = "dm";

  private int level;
  
  private StringBuffer suff;

  private SelectXmlBuilder() {
      doc = new Document(); // <?xml version="1.0"//
      // encoding="utf-8"// ?>
      suff =new StringBuffer();
  }

  /**
   * 接口方法
   *@param list List
   *
   *@return String
   */

  public static String process(List list) {
//	long start = java.util.Calendar.getInstance().getTimeInMillis();
    SelectXmlBuilder ci = new SelectXmlBuilder();
    ci.parserFirstList(list);
    String xmlStr = XmlHelper.toXml(ci.doc).replaceAll(">\\s+<", "><");
//    long end = java.util.Calendar.getInstance().getTimeInMillis();
//    log.error("SeclectXmlBuider执行时间为:"+(end-start)+": "+ci.suff.toString());
    return xmlStr;
  }

  /**
   * 解析第一层list
   *
   * @param list List
   *
   * @return
   */
  private void parserFirstList(List list) {
    if (list == null) {
      logger.info("----list=null----");
    }
    else if (!list.isEmpty()) {
      rootNavi = new Element("navi");; // <navi>
      doc.addContent(rootNavi);
      for (Iterator iter = list.iterator(); iter.hasNext(); ) {
        java.util.Map map = (java.util.HashMap) iter.next();
        parseFirstMap(map, rootNavi);
      }
    }
    else {
      logger.info("----list内部为空----");
    }
  }

  /**
   * 解析第一层map
   *
   * @param map Map
   * @param rootNavi Element
   * @return
   */
  private void parseFirstMap(Map map, Element rootNavi) {
    if (map == null) {
      logger.info("----map=null----");
    }
    else if (!map.isEmpty()) {
      Element naviMap1 = new Element("navi");
      level = Integer.parseInt( (String) map.get("level"));
      String id = (String) map.get("id");
      suff.append("id="+id+",");
      List list2 = (List) map.get("list");
      String mc = (String) map.get("mc");
      String extendfield = (String)map.get("ex");
      HashMap dmMap = new HashMap();
      int dmNum = level;
      while (dmNum >= 0) {
        dmMap.put(dm + dmNum, map.get(dm + dmNum));
        dmNum--;
      }
      naviMap1.setAttribute("prikey", id);
      rootNavi.addContent(naviMap1);
      parseSecondList(list2, naviMap1, id, mc, dmMap,extendfield);
    }
    else {
      logger.info("----map内部为空----");
    }
  }

  /**
   * 解析第二层list2
   *
   * @param list2 List
   * @param naviMap1 Element
   * @param prikey String
   * @param mc String
   * @param dmMap dmMap
   *
   * @return
   */
  private void parseSecondList(List list2, Element naviMap1, String prikey,
                               String mc, HashMap dmMap,String extendfield) {
    if (list2 == null) {
      logger.info("----list2=null----");
    }
    else if (!list2.isEmpty()) {
      if (dmMap == null) {
    	  logger.info("----dmMap=null----");
      }
      else if (!dmMap.isEmpty()) {
        List listElem = new ArrayList();
        for (Iterator iter = list2.iterator(); iter.hasNext(); ) {
          java.util.Map map2 = (java.util.HashMap) iter.next();
          if (level == 0) {
            parseSecondMapLevel0(map2, naviMap1, prikey, mc, dmMap, listElem,extendfield);
          }
          else if (level > 0) {
            parseSecondMapLevelN(map2, naviMap1, prikey, mc, dmMap, listElem,extendfield);
          }
          else {
        	  logger.error("level不是一个正整数");
          }
        }
      }
      else {
    	  logger.info("----dmMap内部为空----");
      }
    }
    else {
    	logger.info("----list2内部为空----");
    }
  }

  /**
   * 解析第二层map2(级联根)
   *
   * @param map2 Map
   * @param naviMap1 Element
   * @param prikey String
   * @param mc String
   * @param dmMap HashMap
   * @param listElem List
   *
   * @return
   */
  private void parseSecondMapLevel0(Map map2, Element naviMap1,
                                    String prikey, String mc, HashMap dmMap,
                                    List listElem,String extendfield) {
    Element nameEle = new Element("name");
    nameEle.setAttribute("value",
                         map2.get( (String) dmMap.get(dm + level))+"");
    nameEle.setAttribute("text", map2.get(mc)+"");
    setEx(nameEle, extendfield, map2);
    naviMap1.addContent(nameEle);
  }

  /**
   * 解析第二层map2(级联N)
   *
   * @param list2 Map
   * @param naviMap1 Element
   * @param prikey String
   * @param mc String
   * @param dmMap HashMap
   * @param listElem List
   * @return
   */
  private void parseSecondMapLevelN(Map map2, Element naviMap1,
                                    String prikey, String mc, HashMap dmMap,
                                    List listElem,String extendfield) {
    StringBuffer parentValue = new StringBuffer();
    for (int i = 0; i < level; i++) {
      parentValue.append(","
                         +  map2.get(dmMap.get(dm + i))+"");
    }
    StringBuffer p = new StringBuffer();
    p = parentValue;
    p = p.deleteCharAt(0);
    int size = listElem.size();
    for (int i = 0; i < size; i++) {
      Element ele = (Element) listElem.get(i);
      if (ele.getAttribute("parentkey").equals(p.toString())) {
        Element nameEle = new Element("name");
        nameEle.setAttribute("value",  map2
                             .get( (String) dmMap.get(dm + level))+"");
        nameEle.setAttribute("text", map2.get(mc)+"");
        setEx(nameEle, extendfield, map2);
        ele.addContent(nameEle);
        naviMap1.addContent(ele);
        return;
      }
    }
    Element naviInner = new Element("navi");
    Element nameEle = new Element("name");
    naviInner.setAttribute("prikey", prikey);
    naviInner.setAttribute("parentkey", p.toString());
    nameEle.setAttribute("value",  map2.get( (String) dmMap
        .get(dm + level))+"");
    nameEle.setAttribute("text",  map2.get(mc)+"");
    setEx(nameEle, extendfield, map2);
    naviInner.addContent(nameEle);
    naviMap1.addContent(naviInner);
    listElem.add(naviInner);
  }
  
  
  /**
   * 新增扩展字段
   * @param nameEle
   * @param extendfield
   * @param map2
   * 2007-6-4上午10:55:38
   */
  public void setEx(Element nameEle,String extendfield,Map map2){
	    if(extendfield!=null){
	      Map exMap = new HashMap();
	  	  String[] extendfields= extendfield.split(",");
	  	  for (int i = 0; i < extendfields.length; i++) {
	  		  String str  = extendfields[i];
	  		  exMap.put(str, map2.get(str));
			}
		    Set set = exMap.keySet();
		    Iterator iter= set.iterator();
		    while(iter.hasNext()){
		    	String key = String.valueOf(iter.next());
		    	  nameEle.setAttribute(key,String.valueOf(exMap.get(key)));
		    }
	    }
  }
  public static String retuMessage(Map map) {
		Document doc = new Document();
		Element element = new Element("root");
		for (Iterator iter = map.keySet().iterator(); iter.hasNext();) {
			String key = (String) iter.next();
			element.setAttribute(key, map.get(key)+"");
		} 
		doc.addContent(element);
		String xmlStr = XmlHelper.toXml(doc);
		return xmlStr;
	}
  
	/**
	 * 将listMap 转换xml
	 * @param listMap
	 * @return
	 * 2007-6-22上午10:46:55
	 */
	public static Document parserListMapToXml(List listMap){
		Document doc = new Document();
		Element root = new Element("rows");
		if(listMap !=null && listMap.size()>0){
			for (int i = 0; i < listMap.size(); i++) {
				Element sub = new Element("row");
				Map row =  (Map)listMap.get(i);
				Set set = row.keySet();
				for (Iterator iter = set.iterator(); iter.hasNext();) {
					String key = (String) iter.next();
					String value = String.valueOf(row.get(key)==null?"":row.get(key));
					try {
						value = java.net.URLEncoder.encode(value, "UTF-8");
					} catch (Exception e) {
						e.printStackTrace();
					}
					sub.setAttribute(key, value);
				}
				root.addContent(sub);
			}
		}
		doc.addContent(root);
		return doc;
	}
	
	public static void main(String[] args){
		Object obj = null;
		System.out.println(String.valueOf(obj));
//		List list = new ArrayList();
//		Map map1 = new HashMap();
//		map1.put("zsxmDm","01");
//		map1.put("zspmDm","0100");
//		map1.put("thirdDm", "999999");
//		map1.put("mc", "营业税");
//		Map map2 = new HashMap();
//		map2.put("zsxmDm","01");
//		map2.put("zspmDm","0101");
//		map2.put("thirdDm", "888888");
//		map2.put("mc", "营业税2");
//		Map map3 = new HashMap();
//		map3.put("zsxmDm","02");
//		map3.put("zspmDm","0103");
//		map3.put("thirdDm", "7777777");
//		map3.put("mc", "企业所得税");
//		list.add(map1);
//		list.add(map2);
//		list.add(map3);		
//		Map csMap = new HashMap();
//		csMap.put("id", "thirdDm");
//		csMap.put("level", "2");
//		csMap.put("list", list);
//		csMap.put("dm0", "zsxmDm");
//		csMap.put("dm1", "zspmDm");
//		csMap.put("dm2", "thirdDm");
//		csMap.put("mc", "mc");
//		List xmlList = new ArrayList();
//		xmlList.add(csMap);
//		
//		
//		List list2 = new ArrayList();
//		Map m1 = new HashMap();
//		m1.put("zsxmDm", "01");
//		m1.put("mc", "征收项目01");
//		Map m2 = new HashMap();
//		m2.put("zsxmDm", "02");
//		m2.put("mc", "征收项目02");
//		list2.add(m1);
//		list2.add(m2);		
//		Map csMap2 = new HashMap();
//		csMap2.put("id", "zsxmDm");
//		csMap2.put("level", "0");
//		csMap2.put("list", list2);
//		csMap2.put("dm0", "zsxmDm");
//		csMap2.put("mc", "mc");
//		xmlList.add(csMap2);
//		
//		
//		List list3 = new ArrayList();
//		Map mm1 = new HashMap();
//		Map mm2 = new HashMap();
//		Map mm3 = new HashMap();
//		mm1.put("zsxmDm", "01");
//		mm1.put("zspmDm", "0100");
//		mm1.put("mc", "征收品目0100");
//		mm2.put("zsxmDm", "01");
//		mm2.put("zspmDm", "0101");
//		mm2.put("mc", "征收品目0101");
//		mm3.put("zsxmDm", "02");
//		mm3.put("zspmDm", "0103");
//		mm3.put("mc", "征收品目0103");
//		list3.add(mm1);
//		list3.add(mm2);
//		list3.add(mm3);
//		Map csMap3 = new HashMap();
//		csMap3.put("id", "zspmDm");
//		csMap3.put("level", "1");
//		csMap3.put("list", list3);
//		csMap3.put("dm0", "zsxmDm");
//		csMap3.put("dm1", "zspmDm");
//		csMap3.put("mc", "mc");
//		xmlList.add(csMap3);
//		
//		
//		String xmlStr = SelectXmlBuilder.process(xmlList);
		//System.out.println(xmlStr);
	}
	
}
