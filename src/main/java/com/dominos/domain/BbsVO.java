package com.dominos.domain;

public class BbsVO {

	private String title;
	private String content;
	private String signdate;
	private String category;
	private String user_id;
	private String state;
	private String answer;
	private int views;
	private int uid;
	
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
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "BbsVO [title=" + title + ", content=" + content + ", signdate=" + signdate + ", category=" + category
				+ ", user_id=" + user_id + ", state=" + state + ", answer=" + answer + ", views=" + views + ", uid="
				+ uid + "]";
	}
	
	
		
}
