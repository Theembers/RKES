package com.wke.webapp.bo.system;

/**
 * 树菜单节点
 * @author gyx
 */
public class TreeNode {

	private String content;
	private int id;
	private int fatherId = -1;
	private int level;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFatherId() {
		return fatherId;
	}
	public void setFatherId(int fatherId) {
		this.fatherId = fatherId;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
}
