package com.dominos.domain;

public class BbsVO {
	private int uid;
	private String title;
	private String content;
	private String signdate;
	private String category;
	private int views;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSigndate() {
		return signdate;
	}
	public void setSigndate(String signdate) {
		this.signdate = signdate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	@Override
	public String toString() {
		return "BbsVO [uid=" + uid + ", title=" + title + ", content=" + content + ", signdate=" + signdate
				+ ", category=" + category + ", views=" + views + "]";
	}
	
	
}
