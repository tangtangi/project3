package com.dominos.domain;

public class OrderVO {

   private int uid;
   private int order_uid;
   private String user_id;
   private int total_price;
   private String pay_type;
   private String signdate;
   private String kind;
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
public int getTotal_price() {
	return total_price;
}
public void setTotal_price(int total_price) {
	this.total_price = total_price;
}
public String getPay_type() {
	return pay_type;
}
public void setPay_type(String pay_type) {
	this.pay_type = pay_type;
}
public String getSigndate() {
	return signdate;
}
public void setSigndate(String signdate) {
	this.signdate = signdate;
}
public String getKind() {
	return kind;
}
public void setKind(String kind) {
	this.kind = kind;
}
@Override
public String toString() {
	return "OrderVO [uid=" + uid + ", order_uid=" + order_uid + ", user_id=" + user_id + ", total_price=" + total_price
			+ ", pay_type=" + pay_type + ", signdate=" + signdate + ", kind=" + kind + "]";
}
   
   
   
   
}