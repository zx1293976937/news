package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Employee {
	private String employeeId = UUID.randomUUID().toString();
	private String employeeNumber;//证件编号
	private String employeeName;//执法队员姓名
	private String employeeBirthday;//出生日期
	private String employeePhone;//工作
	private String employeeCell;//手机
	private String employeeEmail;//电子邮箱
	private String employeeIssuedBy;//证件颁发机构
	private String employeeIssuedTime;//证件办法日期
	private String employeeEffectiveDate;//证件有效日期
	private String employeeFPTime;//证件有效日期
	private String employeeUTime;//上传时间
	private String employeeProvince;
	private String employeeParentUnit;
	private String employeePublishUserId;
	private String employeeEnforcement;
	private String employeeJob;//所属单位
	
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeNumber() {
		return employeeNumber;
	}
	public void setEmployeeNumber(String employeeNumber) {
		this.employeeNumber = employeeNumber;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeBirthday() {
		return employeeBirthday;
	}
	public void setEmployeeBirthday(String employeeBirthday) {
		this.employeeBirthday = employeeBirthday;
	}
	public String getEmployeePhone() {
		return employeePhone;
	}
	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}
	public String getEmployeeCell() {
		return employeeCell;
	}
	public void setEmployeeCell(String employeeCell) {
		this.employeeCell = employeeCell;
	}
	public String getEmployeeEmail() {
		return employeeEmail;
	}
	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}
	public String getEmployeeIssuedBy() {
		return employeeIssuedBy;
	}
	public void setEmployeeIssuedBy(String employeeIssuedBy) {
		this.employeeIssuedBy = employeeIssuedBy;
	}
	public String getEmployeeIssuedTime() {
		return employeeIssuedTime;
	}
	public void setEmployeeIssuedTime(String employeeIssuedTime) {
		this.employeeIssuedTime = employeeIssuedTime;
	}
	public String getEmployeeEffectiveDate() {
		return employeeEffectiveDate;
	}
	public void setEmployeeEffectiveDate(String employeeEffectiveDate) {
		this.employeeEffectiveDate = employeeEffectiveDate;
	}
	public String getEmployeeUTime() {
		return employeeUTime;
	}
	public void setEmployeeUTime(String employeeUTime) {
		this.employeeUTime = employeeUTime;
	}
	public String getEmployeeProvince() {
		return employeeProvince;
	}
	public void setEmployeeProvince(String employeeProvince) {
		this.employeeProvince = employeeProvince;
	}
	public String getEmployeeParentUnit() {
		return employeeParentUnit;
	}
	public void setEmployeeParentUnit(String employeeParentUnit) {
		this.employeeParentUnit = employeeParentUnit;
	}
	public String getEmployeePublishUserId() {
		return employeePublishUserId;
	}
	public void setEmployeePublishUserId(String employeePublishUserId) {
		this.employeePublishUserId = employeePublishUserId;
	}
	public String getEmployeeFPTime() {
		return employeeFPTime;
	}
	public void setEmployeeFPTime(String employeeFPTime) {
		this.employeeFPTime = employeeFPTime;
	}
	public String getEmployeeEnforcement() {
		return employeeEnforcement;
	}
	public void setEmployeeEnforcement(String employeeEnforcement) {
		this.employeeEnforcement = employeeEnforcement;
	}
	public String getEmployeeJob() {
		return employeeJob;
	}
	public void setEmployeeJob(String employeeJob) {
		this.employeeJob = employeeJob;
	}
	
	
}
