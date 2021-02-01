package com.dominos.domain;

public class OrderGiftVO {

	private int uid;
	private int order_uid;
	private String user_id;
	private String total_price;
	private int price_L;
	private String signdate;
	private String pay_type;
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getOrder_uid() {
		return order_uid;
	}
	public void setOrder_uid(int order_uid) {
		this.order_uid = order_uid;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTotal_price() {
		return total_price;
	}
	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}
	public int getPrice_L() {
		return price_L;
	}
	public void setPrice_L(int price_L) {
		this.price_L = price_L;
	}
	public String getSigndate() {
		return signdate;
	}
	public void setSigndate(String signdate) {
		this.signdate = signdate;
	}
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	@Override
	public String toString() {
		return "OrderGiftVO [uid=" + uid + ", order_uid=" + order_uid + ", user_id=" + user_id + ", total_price="
				+ total_price + ", price_L=" + price_L + ", signdate=" + signdate + ", pay_type=" + pay_type + "]";
	}
	
	
	
	
}
