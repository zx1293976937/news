package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Laws {
	
	private String lawsId = UUID.randomUUID().toString();//id
	private String lawsTitle;//规章名称
	private String lawsContent;//规章文本
	private String lawsSTime;//制定时间
	private String lawsITime;//实施时间
	private String lawsETime;//失效时间
	private String lawsPublisher;//颁布机构
	private String lawsProvince;//所在单位
	private String lawsParentUint;//上级单位
	private String lawsUTime;//上传时间
	private String lawsPublishUserId;
	private String lawsDepartmentId;
	private int numCount;
	private String lawsField;//领域、分类
	
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	public String getLawsId() {
		return lawsId;
	}
	public void setLawsId(String lawsId) {
		this.lawsId = lawsId;
	}
	public String getLawsTitle() {
		return lawsTitle;
	}
	public void setLawsTitle(String lawsTitle) {
		this.lawsTitle = lawsTitle;
	}
	public String getLawsContent() {
		return lawsContent;
	}
	public void setLawsContent(String lawsContent) {
		this.lawsContent = lawsContent;
	}
	public String getLawsSTime() {
		return lawsSTime;
	}
	public void setLawsSTime(String lawsSTime) {
		this.lawsSTime = lawsSTime;
	}
	public String getLawsITime() {
		return lawsITime;
	}
	public void setLawsITime(String lawsITime) {
		this.lawsITime = lawsITime;
	}
	public String getLawsETime() {
		return lawsETime;
	}
	public void setLawsETime(String lawsETime) {
		this.lawsETime = lawsETime;
	}
	public String getLawsPublisher() {
		return lawsPublisher;
	}
	public void setLawsPublisher(String lawsPublisher) {
		this.lawsPublisher = lawsPublisher;
	}
	public String getLawsProvince() {
		return lawsProvince;
	}
	public void setLawsProvince(String lawsProvince) {
		this.lawsProvince = lawsProvince;
	}
	public String getLawsParentUint() {
		return lawsParentUint;
	}
	public void setLawsParentUint(String lawsParentUint) {
		this.lawsParentUint = lawsParentUint;
	}
	public String getLawsUTime() {
		return lawsUTime;
	}
	public void setLawsUTime(String lawsUTime) {
		this.lawsUTime = lawsUTime;
	}
	public String getLawsPublishUserId() {
		return lawsPublishUserId;
	}
	public void setLawsPublishUserId(String lawsPublishUserId) {
		this.lawsPublishUserId = lawsPublishUserId;
	}
	public String getLawsDepartmentId() {
		return lawsDepartmentId;
	}
	public void setLawsDepartmentId(String lawsDepartmentId) {
		this.lawsDepartmentId = lawsDepartmentId;
	}
	public String getLawsField() {
		return lawsField;
	}
	public void setLawsField(String lawsField) {
		this.lawsField = lawsField;
	}
	
	
	
	
}
