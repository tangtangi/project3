package com.dominos.domain;

public class SideVO {
	
	private Integer uid;
	private String name;
	private Integer price;
	private String category;
	private String signdate;
	private String image;
	private String image_o;
	private String image_s;
	
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSigndate() {
		return signdate;
	}
	public void setSigndate(String signdate) {
		this.signdate = signdate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getImage_o() {
		return image_o;
	}
	public void setImage_o(String image_o) {
		this.image_o = image_o;
	}
	public String getImage_s() {
		return image_s;
	}
	public void setImage_s(String image_s) {
		this.image_s = image_s;
	}
	@Override
	public String toString() {
		return "SideVO [uid=" + uid + ", name=" + name + ", price=" + price + ", category=" + category + ", signdate="
				+ signdate + ", image=" + image + ", image_o=" + image_o + ", image_s=" + image_s + "]";
	}
	
	

	
}
