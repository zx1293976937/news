package com.tjdzj.www.model;

import java.util.UUID;

/*
 *@author作者 王晓磊
 */
public class Province {
	private String provinceId = UUID.randomUUID().toString();
	private String provinceName;
	private String parentUnit;
	private String priority;
	private String privilege;
	
	public String getPrivilege() {
		return privilege;
	}
	public void setPrivilege(String privilege) {
		this.privilege = privilege;
	}
	public String getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	public String getParentUnit() {
		return parentUnit;
	}
	public void setParentUnit(String parentUnit) {
		this.parentUnit = parentUnit;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	
}
