package com.dominos.domain;

public class GiftVO {

	
	private String pizza;
	private String user_id;
	private int price_L;
	private String size_L;
	private String image;
	private String image_o;
	private String image_s;
	private int count;
	private int uid;
	private int pizza_uid;
	private int order_uid;
	private String state;
	private String e_coupon;
	private int total_price;
	public String getPizza() {
		return pizza;
	}
	public void setPizza(String pizza) {
		this.pizza = pizza;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getPrice_L() {
		return price_L;
	}
	public void setPrice_L(int price_L) {
		this.price_L = price_L;
	}
	public String getSize_L() {
		return size_L;
	}
	public void setSize_L(String size_L) {
		this.size_L = size_L;
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
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getPizza_uid() {
		return pizza_uid;
	}
	public void setPizza_uid(int pizza_uid) {
		this.pizza_uid = pizza_uid;
	}
	public int getOrder_uid() {
		return order_uid;
	}
	public void setOrder_uid(int order_uid) {
		this.order_uid = order_uid;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getE_coupon() {
		return e_coupon;
	}
	public void setE_coupon(String e_coupon) {
		this.e_coupon = e_coupon;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	
	@Override
	public String toString() {
		return "GiftVO [pizza=" + pizza + ", user_id=" + user_id + ", price_L=" + price_L + ", size_L=" + size_L
				+ ", image=" + image + ", image_o=" + image_o + ", image_s=" + image_s + ", count=" + count + ", uid="
				+ uid + ", pizza_uid=" + pizza_uid + ", order_uid=" + order_uid + ", state=" + state + ", e_coupon="
				+ e_coupon + ", total_price=" + total_price + "]";
	}
	
	
	
	
}