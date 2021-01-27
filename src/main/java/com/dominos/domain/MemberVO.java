package com.dominos.domain;

public class MemberVO {

	private String id;
	private String pass;
	private String name;
	private String gender;
	private String email;
	private String phone;
	private String birth;
	private String address;
	private int level;
	private String address_uid;
	
	
	public String getAddress_uid() {
		return address_uid;
	}
	public void setAddress_uid(String address_uid) {
		this.address_uid = address_uid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pass=" + pass + ", name=" + name + ", gender=" + gender + ", email=" + email
				+ ", phone=" + phone + ", birth=" + birth + ", address=" + address + ", level=" + level
				+ ", address_uid=" + address_uid + "]";
	}
	
	
	
}
