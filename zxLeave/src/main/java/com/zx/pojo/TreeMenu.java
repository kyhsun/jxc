package com.zx.pojo;

public class TreeMenu {
	private int TreeMenuID;
	private String Title;
	private String Desc;
	private int ParentID; 
	private String Url;
	public int getTreeMenuID() {
		return TreeMenuID;
	}
	public void setTreeMenuID(int treeMenuID) {
		TreeMenuID = treeMenuID;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getDesc() {
		return Desc;
	}
	public void setDesc(String desc) {
		Desc = desc;
	}
	public int getParentID() {
		return ParentID;
	}
	public void setParentID(int parentID) {
		ParentID = parentID;
	}
	public String getUrl() {
		return Url;
	}
	public void setUrl(String url) {
		Url = url;
	}
	
}
