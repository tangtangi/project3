package com.dominos.domain;

public class CartVO {
	private Integer uid;
	private Integer cart_id;
	private String user_id;
	private String name;
	private Integer price;
	private String size;
	private Integer count;
	private Integer menu_uid;
	private String category;
	private String state;
	private String session_id2;
	private Integer order_uid;
	private String image;
	private String image_o;
	private String image_s;
	private String dough_name;
	private String dough_price;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getCart_id() {
		return cart_id;
	}
	public void setCart_id(Integer cart_id) {
		this.cart_id = cart_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Integer getMenu_uid() {
		return menu_uid;
	}
	public void setMenu_uid(Integer menu_uid) {
		this.menu_uid = menu_uid;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getSession_id2() {
		return session_id2;
	}
	public void setSession_id2(String session_id2) {
		this.session_id2 = session_id2;
	}
	public Integer getOrder_uid() {
		return order_uid;
	}
	public void setOrder_uid(Integer order_uid) {
		this.order_uid = order_uid;
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
	public String getDough_name() {
		return dough_name;
	}
	public void setDough_name(String dough_name) {
		this.dough_name = dough_name;
	}
	public String getDough_price() {
		return dough_price;
	}
	public void setDough_price(String dough_price) {
		this.dough_price = dough_price;
	}
	@Override
	public String toString() {
		return "CartVO [uid=" + uid + ", cart_id=" + cart_id + ", user_id=" + user_id + ", name=" + name + ", price="
				+ price + ", size=" + size + ", count=" + count + ", menu_uid=" + menu_uid + ", category=" + category
				+ ", state=" + state + ", session_id2=" + session_id2 + ", order_uid=" + order_uid + ", image=" + image
				+ ", image_o=" + image_o + ", image_s=" + image_s + ", dough_name=" + dough_name + ", dough_price="
				+ dough_price + "]";
	}
	
	
}
