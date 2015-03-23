package com.tjdzj.www.model;

import java.util.UUID;

/*
 *@author作者 王晓磊
 */
public class Department {
	private String departmentId = UUID.randomUUID().toString();
	private String departmentName;
	private String departmentParent;
	private String departmentEmployee;
	public String getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getDepartmentParent() {
		return departmentParent;
	}
	public void setDepartmentParent(String departmentParent) {
		this.departmentParent = departmentParent;
	}
	public String getDepartmentEmployee() {
		return departmentEmployee;
	}
	public void setDepartmentEmployee(String departmentEmployee) {
		this.departmentEmployee = departmentEmployee;
	}
	
	
}
