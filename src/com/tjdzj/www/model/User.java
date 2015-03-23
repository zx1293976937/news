package com.tjdzj.www.model;

import java.io.Serializable;
import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class User implements Serializable {
	private static final long serialVersionUID = -4415990281535582814L;
	private String userId = UUID.randomUUID().toString();
	private String userName;
	private String trueName;
	private String passWord;
	private String phone;
	private String address;
	private String zipcode;
	private String privilege;
	private String inchargeMent;
	private String departmentId;
	private String parentUnit;
	private String userCode;
	private String proName;
	private String userSex;
	private String mobilePhone;
	private String mailBox;
	
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getMailBox() {
		return mailBox;
	}
	public void setMailBox(String mailBox) {
		this.mailBox = mailBox;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTrueName() {
		return trueName;
	}
	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getPrivilege() {
		return privilege;
	}
	public void setPrivilege(String privilege) {
		this.privilege = privilege;
	}
	public String getInchargeMent() {
		return inchargeMent;
	}
	public void setInchargeMent(String inchargeMent) {
		this.inchargeMent = inchargeMent;
	}
	public String getParentUnit() {
		return parentUnit;
	}
	public void setParentUnit(String parentUnit) {
		this.parentUnit = parentUnit;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	
	
}
