package com.dominos.domain;

public class AddressVO {
	private Integer uid;
	private String user_id;
	private String category;
	private String store_name;
	private String address;
	private String phone;
	private String event;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	@Override
	public String toString() {
		return "AddressVO [uid=" + uid + ", user_id=" + user_id + ", category=" + category + ", store_name="
				+ store_name + ", address=" + address + ", phone=" + phone + ", event=" + event + "]";
	}

	
}
