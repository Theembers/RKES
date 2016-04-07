package com.wke.webapp.comm.utility;

import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright:  Copyright (c) 2008  Idea Company</p>
 * <p>Company: Idea</p>
 * @author lifeng
 * @version 1.0
 */

public class FileURL {
    public FileURL() {
    }
    private ClassLoader loader = null;
    /**
     * 得到文件的URL连接 ;
     */
    public URL getFileURL(String fileName){
    	if(loader==null){
    		loader = this.getClass().getClassLoader() ;
    	}
        URL fileUrl = loader.getResource(fileName) ;
        return fileUrl ;
    }
    
    /**
     * 获取以filepattern开头的文件列表
     * @param filepattern
     * @return
     */
    public List<String> getFileList(String filepattern){
    	List<String> list = new ArrayList<String>();
    	if(loader==null){
    		loader = this.getClass().getClassLoader() ;
    	}
    	String classPath = loader.getResource("").getFile();
    	File file = new File(classPath);
    	File[] listFile = file.listFiles();
    	for(File f : listFile){
    		String filename = f.getName();
    		if(filename.startsWith(filepattern)){
    			list.add(filename);
    		}
    	}
    	return list;
    }
    
    public static void main(String[] args){
    	FileURL fileurl = new FileURL();
    	System.out.println(fileurl.getFileList("exception-"));
    }

}
