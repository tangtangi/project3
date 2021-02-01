package com.dominos.domain;

public class CouponVO {

	private String name;
	private int rate;
	private int price;
	private String exdate;
	private String user_id;
	private String e_coupon;
	private String state;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getExdate() {
		return exdate;
	}
	public void setExdate(String exdate) {
		this.exdate = exdate;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getE_coupon() {
		return e_coupon;
	}
	public void setE_coupon(String e_coupon) {
		this.e_coupon = e_coupon;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "CouponVO [name=" + name + ", rate=" + rate + ", price=" + price + ", exdate=" + exdate + ", user_id="
				+ user_id + ", e_coupon=" + e_coupon + ", state=" + state + "]";
	}
	
	
}
