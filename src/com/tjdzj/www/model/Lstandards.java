package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Lstandards {
	private String lstandardsId = UUID.randomUUID().toString();;
	private String lstandardsNumber;//标准编号
	private String lstandardsTitle;//标准标题
	private String lstandardsETitle;
	private String lstandardsContent;//标准文本
	private String lstandardsSTime;//制定时间
	private String lstandardsITime;//实施时间
	private String lstandardsETime;//实施时间
	private String lstandardsUTime;//失效时间
	private String lstandardsPublishUser;//颁布机关
	private String lstandardsProvince;//所在单位
	private String lstandardsParentUnit;//上级单位
	private String lstandardsPublishUserId;
	private int numCount;
	private String lstandardsCategory;//地方标准分类
	
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	
	public String getLstandardsId() {
		return lstandardsId;
	}
	
	public String getLstandardsETitle() {
		return lstandardsETitle;
	}

	public void setLstandardsETitle(String lstandardsETitle) {
		this.lstandardsETitle = lstandardsETitle;
	}

	public String getLstandardsETime() {
		return lstandardsETime;
	}
	public void setLstandardsETime(String lstandardsETime) {
		this.lstandardsETime = lstandardsETime;
	}
	public void setLstandardsId(String lstandardsId) {
		this.lstandardsId = lstandardsId;
	}
	public String getLstandardsNumber() {
		return lstandardsNumber;
	}
	public void setLstandardsNumber(String lstandardsNumber) {
		this.lstandardsNumber = lstandardsNumber;
	}
	public String getLstandardsTitle() {
		return lstandardsTitle;
	}
	public void setLstandardsTitle(String lstandardsTitle) {
		this.lstandardsTitle = lstandardsTitle;
	}
	public String getLstandardsContent() {
		return lstandardsContent;
	}
	public void setLstandardsContent(String lstandardsContent) {
		this.lstandardsContent = lstandardsContent;
	}
	public String getLstandardsSTime() {
		return lstandardsSTime;
	}
	public void setLstandardsSTime(String lstandardsSTime) {
		this.lstandardsSTime = lstandardsSTime;
	}
	public String getLstandardsITime() {
		return lstandardsITime;
	}
	public void setLstandardsITime(String lstandardsITime) {
		this.lstandardsITime = lstandardsITime;
	}
	public String getLstandardsUTime() {
		return lstandardsUTime;
	}
	public void setLstandardsUTime(String lstandardsUTime) {
		this.lstandardsUTime = lstandardsUTime;
	}
	public String getLstandardsPublishUser() {
		return lstandardsPublishUser;
	}
	public void setLstandardsPublishUser(String lstandardsPublishUser) {
		this.lstandardsPublishUser = lstandardsPublishUser;
	}
	public String getLstandardsProvince() {
		return lstandardsProvince;
	}
	public void setLstandardsProvince(String lstandardsProvince) {
		this.lstandardsProvince = lstandardsProvince;
	}
	public String getLstandardsParentUnit() {
		return lstandardsParentUnit;
	}
	public void setLstandardsParentUnit(String lstandardsParentUnit) {
		this.lstandardsParentUnit = lstandardsParentUnit;
	}
	public String getLstandardsPublishUserId() {
		return lstandardsPublishUserId;
	}
	public void setLstandardsPublishUserId(String lstandardsPublishUserId) {
		this.lstandardsPublishUserId = lstandardsPublishUserId;
	}
	public String getLstandardsCategory() {
		return lstandardsCategory;
	}
	public void setLstandardsCategory(String lstandardsCategory) {
		this.lstandardsCategory = lstandardsCategory;
	}
	
}
