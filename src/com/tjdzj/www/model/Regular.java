package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Regular {
	private String regularId = UUID.randomUUID().toString();
	private String regularNumber;//文件编号
	private String regularTitle;//文件名称
	private String regularContent;//文件文本
	private String regularSTime;//制定时间
	private String regularITime;//实施时间
	private String regularETime;//失效时间
	private String regularPublisher;//颁布机构
	private String regularProvince;//所在单位
	private String regularUTime;//报备日期
	private String regularParentUnit;//上级单位
	private String regularPublishUserId;
	private int numCount;
	
	private String regularField;
	
	
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	public String getRegularId() {
		return regularId;
	}
	public void setRegularId(String regularId) {
		this.regularId = regularId;
	}
	public String getRegularNumber() {
		return regularNumber;
	}
	public void setRegularNumber(String regularNumber) {
		this.regularNumber = regularNumber;
	}
	public String getRegularTitle() {
		return regularTitle;
	}
	public void setRegularTitle(String regularTitle) {
		this.regularTitle = regularTitle;
	}
	public String getRegularContent() {
		return regularContent;
	}
	public void setRegularContent(String regularContent) {
		this.regularContent = regularContent;
	}
	public String getRegularSTime() {
		return regularSTime;
	}
	public void setRegularSTime(String regularSTime) {
		this.regularSTime = regularSTime;
	}
	public String getRegularITime() {
		return regularITime;
	}
	public void setRegularITime(String regularITime) {
		this.regularITime = regularITime;
	}
	public String getRegularETime() {
		return regularETime;
	}
	public void setRegularETime(String regularETime) {
		this.regularETime = regularETime;
	}
	public String getRegularPublisher() {
		return regularPublisher;
	}
	public void setRegularPublisher(String regularPublisher) {
		this.regularPublisher = regularPublisher;
	}
	public String getRegularProvince() {
		return regularProvince;
	}
	public void setRegularProvince(String regularProvince) {
		this.regularProvince = regularProvince;
	}
	public String getRegularUTime() {
		return regularUTime;
	}
	public void setRegularUTime(String regularUTime) {
		this.regularUTime = regularUTime;
	}
	public String getRegularParentUnit() {
		return regularParentUnit;
	}
	public void setRegularParentUnit(String regularParentUnit) {
		this.regularParentUnit = regularParentUnit;
	}
	public String getRegularPublishUserId() {
		return regularPublishUserId;
	}
	public void setRegularPublishUserId(String regularPublishUserId) {
		this.regularPublishUserId = regularPublishUserId;
	}
	public String getRegularField() {
		return regularField;
	}
	public void setRegularField(String regularField) {
		this.regularField = regularField;
	}
	
	
	
}
