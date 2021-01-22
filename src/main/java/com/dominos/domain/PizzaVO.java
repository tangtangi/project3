package com.dominos.domain;

import java.util.Arrays;

public class PizzaVO {
	private Integer	uid;
	private String name;
	private Integer price_L;
	private String size_L;
	private Integer price_M;
	private String size_M;
	private String signdate;
	private String dough;
	private String topping;
	private String image;
	private String image_o;
	private String image_s;
	private String info;
	private String kind;
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
	public Integer getPrice_L() {
		return price_L;
	}
	public void setPrice_L(Integer price_L) {
		this.price_L = price_L;
	}
	public String getSize_L() {
		return size_L;
	}
	public void setSize_L(String size_L) {
		this.size_L = size_L;
	}
	public Integer getPrice_M() {
		return price_M;
	}
	public void setPrice_M(Integer price_M) {
		this.price_M = price_M;
	}
	public String getSize_M() {
		return size_M;
	}
	public void setSize_M(String size_M) {
		this.size_M = size_M;
	}
	public String getSigndate() {
		return signdate;
	}
	public void setSigndate(String signdate) {
		this.signdate = signdate;
	}
	public String getDough() {
		return dough;
	}
	public void setDough(String dough) {
		this.dough = dough;
	}
	public String getTopping() {
		return topping;
	}
	public void setTopping(String topping) {
		this.topping = topping;
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
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	@Override
	public String toString() {
		return "PizzaVO [uid=" + uid + ", name=" + name + ", price_L=" + price_L + ", size_L=" + size_L + ", price_M="
				+ price_M + ", size_M=" + size_M + ", signdate=" + signdate + ", dough=" + dough + ", topping="
				+ topping + ", image=" + image + ", image_o=" + image_o + ", image_s=" + image_s + ", info=" + info
				+ ", kind=" + kind + "]";
	}
	
	
	
	
	
	
	
	
}
