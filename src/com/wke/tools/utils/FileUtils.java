package com.wke.tools.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.Queue;

import org.apache.log4j.Logger;

public class FileUtils {
	private static final Logger logger = Logger.getLogger(FileUtils.class);

	/**
	 * 新建文件夹
	 * @param folderPath	文件夹路径
	 * @return File
	 */
	public static File newFolder(String folderPath) {
		try {
			File file = new File(folderPath);
			if (!file.exists()) {
				file.mkdirs();
			}
			return file;
		} catch (Exception e) {
			logger.error("创建文件夹出错 : " + folderPath);
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 删除文件
	 * @param filePath 文件路径
	 * @return boolean
	 */
	public static boolean deleteFile(String filePath) {
		File file = new File(filePath);
		if (file.isFile() && file.exists()) {
			file.delete();
			return true;
		} else {
			logger.error("删除文件" + filePath + "失败 , 该文件不存在");
			return false;
		}
	}
	
	/**
	 * 删除文件
	 * @param file	File
	 * @return boolean
	 */
	public static boolean deleteFile(File file) {
		if (file.isFile() && file.exists()) {
			file.delete();
			return true;
		} else {
			logger.error("删除文件" + file.getAbsolutePath() + "失败 , 该文件不存在");
			return false;
		}
	}

	/**
	 * 删除文件夹
	 * @param folderPath 文件夹路径
	 * @return boolean
	 */
	public static boolean deleteFolder(String folderPath) {
		File file = new File(folderPath);
		if (file.isDirectory()) {
			deleteDirectory(folderPath);
			return true;
		} else {
			logger.error("删除" + folderPath + "失败 , 该文件夹不存在");
			return false;
		}
	}

	/**
	 * 删除文件夹以及文件夹下的文件
	 * @param folderPath 文件夹路径
	 * @return boolean
	 */
	public static boolean deleteDirectory(String folderPath) {
		// 如果sPath不以文件分隔符结尾，自动添加文件分隔符
		if (!folderPath.endsWith(File.separator)) {
			folderPath = folderPath + File.separator;
		}
		File dirFile = new File(folderPath);
		// 如果dir对应的文件不存在，或者不是一个目录，则退出
		if (!dirFile.exists() || !dirFile.isDirectory()) {
			logger.error("删除" + folderPath + "失败 , 该文件夹不存在");
			return false;
		}
		boolean flag = true;
		// 删除文件夹下的所有文件(包括子目录)
		File[] files = dirFile.listFiles();
		for (int i = 0; i < files.length; i++) {
			// 删除子文件
			if (files[i].isFile()) {
				flag = deleteFile(files[i].getAbsolutePath());
				if (!flag) {
					break;
				}
			} else {
				// 删除子目录
				flag = deleteDirectory(files[i].getAbsolutePath());
				if (!flag) {
					break;
				}
			}
		}
		if (!flag) {
			return false;
		}
		// 删除当前目录
		if (dirFile.delete()) {
			return true;
		} else {
			return false;
		}
	}
	/**
	 * 重命名文件
	 * @param resFilePath 待修改的文件路径
	 * @param newFileName 新文件名称
	 * @return boolean
	 */
    public static boolean renameFile(String resFilePath, String newFileName) {
    	try {
    		File resFile = new File(resFilePath);
        	String newFilePath = resFile.getParent() + File.separator + newFileName;
        	File newFile = new File(newFilePath);
        	if (newFile.exists()) {
				logger.error("重命名失败! 已存在与目标文件名相同的文件!");
				return false;
			}
        	return resFile.renameTo(newFile);
		} catch (Exception e) {
			logger.error("重命名失败 : "+resFilePath+" To : "+newFileName + " ; " +e.getMessage());
			return false;
		}
    	
    }
    
    /**
     * 获取文件夹下的所有文件
     * @param folderPath 路径
     * @param Enum 是否遍历子文件夹
     * @return LinkedList<String>
     */
    public static LinkedList<String> getFiles(String folderPath , boolean Enum) {
		if (Enum) {
			return getFilesByEnumFolders(folderPath , null);
		} else {
			return getFilesFromFolder(folderPath, null);
		}
	}
    
    /**
     * 获取文件夹下的所有文件
     * @param folderPath 路径
     * @param Enum 是否遍历子文件夹
     * @param skipExtension	跳过该后缀名的文件
     * @return LinkedList<String>
     */
    public static LinkedList<String> getFiles(String folderPath , boolean Enum , String skipExtension) {
		if (Enum) {
			return getFilesByEnumFolders(folderPath , skipExtension);
		} else {
			return getFilesFromFolder(folderPath, skipExtension);
		}
	}
    
	/**
	 * 获取文件夹下的所有文件 , 不包含子文件夹
	 * @param folderPath 路径
	 * @param skipExtension	跳过该后缀名的文件
	 * @return LinkedList<String>
	 */
	private static LinkedList<String> getFilesFromFolder(String folderPath , String skipExtension) {
		LinkedList<String> filesName = new LinkedList<String>();
		File folder = new File(folderPath);
		File files[] = folder.listFiles();
		for (int i = 0; i < files.length; i++) {
			if (files[i].isFile()) {
				String path = files[i].getAbsolutePath();
				if (!BlankUtils.isBlank(skipExtension) && path.endsWith(skipExtension)) {
					continue;
				}
				filesName.add(path);
			}
		}
		return filesName;
	}
	
	/**
	 * 遍历文件夹下所有文件, 包含子文件夹
	 * @param folderPath 路径
	 * @param skipExtension 跳过该后缀名的文件
	 * @return LinkedList<String>
	 */
	private static LinkedList<String> getFilesByEnumFolders(String folderPath , String skipExtension) {
		LinkedList<String> filesName = new LinkedList<String>();
		Queue<String> folderQueue = new LinkedList<String>();
		folderQueue.offer(folderPath);
		while (folderQueue.size() > 0 && folderQueue.peek() != null) {
			File folder = new File(folderQueue.poll());
			File files[] = folder.listFiles();
			for (int i = 0; i < files.length; i++) {
				if (files[i].isDirectory()) {
					folderQueue.offer(files[i].getAbsolutePath());
				} else if (files[i].isFile()) {
					String path = files[i].getAbsolutePath();
					if (!BlankUtils.isBlank(skipExtension) && path.endsWith(skipExtension)) {
						continue;
					}
					filesName.add(path);
				}
			}
		}
		return filesName;
	}
	
	/**
	 * 保存文件
	 * @param folderPath 文件夹路径
	 * @param fileName 文件名
	 * @param s_content 保存内容
	 * @param append 是否附加 , true 表示附加写入 , false 表示覆盖写入
	 * @return File
	 */
	public static File saveToFile(String folderPath , String fileName , String s_content , boolean append) {
		if (!folderPath.endsWith(File.separator)) {
			folderPath = folderPath + File.separator;
		}
		File file = new File(folderPath);
		if (!file.exists()) {
			file.mkdirs();
		}
		String filePath = folderPath + fileName;
		if (BlankUtils.isBlank(s_content)) {
			return new File(filePath);
		}
		try {
	        BufferedWriter bWriter = new BufferedWriter(new FileWriter(filePath,append)); 
	        bWriter.write(s_content);
	        bWriter.newLine(); 
	        bWriter.close(); 
	        bWriter = null;
	        file = null; 
	        return new File(filePath);
		} catch (IOException ioe) {
			logger.error("写入文件出错 : "+filePath + " ; " + ioe.getMessage());
			return new File(filePath);
		}
	}
	
	/**
	 * 读取文本类型, TXT、HTML等
	 * @param filePath 文件路径
	 * @param charsetName 编码类型，utf-8/gbk
	 * @return String
	 */
	public static String readTextFile(String filePath, String charsetName) {
		StringBuffer sBuffer = new StringBuffer();
		try {
			BufferedReader bReader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath),charsetName));
			String line = null;
			while ((line=bReader.readLine())!=null) {
				sBuffer.append(line);
			}
			bReader.close();
			bReader = null;
			return sBuffer.toString();
		} catch (FileNotFoundException e) {
			logger.error("读取失败 : " + filePath + " , 该文件不存在");
			return null;
		} catch (IOException e) {
			logger.error("读取失败! " + e.getMessage());
			return null;
		}
	}
	
	/**
	 * 读取文本类型, TXT、HTML等
	 * @author Jadeite.Wang
	 * Jul 25, 2013
	 * @param file
	 * @param charsetName	编码类型，utf-8/gbk
	 * @return
	 */
	public static String readTextFile(File file , String charsetName) {
		if (file == null) {
			return null;
		}
		StringBuffer sBuffer = new StringBuffer();
		try {
			BufferedReader bReader = new BufferedReader(new InputStreamReader(new FileInputStream(file),charsetName));
			String line = null;
			while ((line=bReader.readLine())!=null) {
				sBuffer.append(line);
			}
			bReader.close();
			bReader = null;
			return sBuffer.toString();
		} catch (FileNotFoundException e) {
			logger.error("读取失败 : " + file.getAbsolutePath() + " , 该文件不存在");
			return null;
		} catch (IOException e) {
			logger.error("读取失败! " + e.getMessage());
			return null;
		}
	}
}
