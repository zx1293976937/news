package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Penaltycase {

	private String penaltycaseId = UUID.randomUUID().toString();//id
	private String penaltycaseTitle;//案件名称
	private String penaltycaseSTime;//立案时间
	private String penaltycaseCategory;//案件类别
	private String penaltycaseContent;//案件内容
	private String penaltycaseResult;//执行结果
	private String penaltycaseApply;//是否申请行政复议/提起行政诉讼
	private String penaltycaseProvince;//发布单位
	private String penaltycaseParentUnit;//上级单位
	private String penaltycaseUTime;//上传日期
	private String penaltycasePublishUserId;//发布用户
	private int numCount;
	private String penaltycaseExecute;//是否申请行政复议或提起行政诉讼
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	public String getPenaltycaseId() {
		return penaltycaseId;
	}
	public void setPenaltycaseId(String penaltycaseId) {
		this.penaltycaseId = penaltycaseId;
	}
	public String getPenaltycaseTitle() {
		return penaltycaseTitle;
	}
	public void setPenaltycaseTitle(String penaltycaseTitle) {
		this.penaltycaseTitle = penaltycaseTitle;
	}
	public String getPenaltycaseCategory() {
		return penaltycaseCategory;
	}
	public void setPenaltycaseCategory(String penaltycaseCategory) {
		this.penaltycaseCategory = penaltycaseCategory;
	}
	public String getPenaltycaseContent() {
		return penaltycaseContent;
	}
	public void setPenaltycaseContent(String penaltycaseContent) {
		this.penaltycaseContent = penaltycaseContent;
	}
	public String getPenaltycaseResult() {
		return penaltycaseResult;
	}
	public void setPenaltycaseResult(String penaltycaseResult) {
		this.penaltycaseResult = penaltycaseResult;
	}
	public String getPenaltycaseApply() {
		return penaltycaseApply;
	}
	public void setPenaltycaseApply(String penaltycaseApply) {
		this.penaltycaseApply = penaltycaseApply;
	}
	public String getPenaltycaseProvince() {
		return penaltycaseProvince;
	}
	public void setPenaltycaseProvince(String penaltycaseProvince) {
		this.penaltycaseProvince = penaltycaseProvince;
	}
	public String getPenaltycaseParentUnit() {
		return penaltycaseParentUnit;
	}
	public void setPenaltycaseParentUnit(String penaltycaseParentUnit) {
		this.penaltycaseParentUnit = penaltycaseParentUnit;
	}
	public String getPenaltycaseUTime() {
		return penaltycaseUTime;
	}
	public void setPenaltycaseUTime(String penaltycaseUTime) {
		this.penaltycaseUTime = penaltycaseUTime;
	}
	public String getPenaltycasePublishUserId() {
		return penaltycasePublishUserId;
	}
	public void setPenaltycasePublishUserId(String penaltycasePublishUserId) {
		this.penaltycasePublishUserId = penaltycasePublishUserId;
	}
	public String getPenaltycaseSTime() {
		return penaltycaseSTime;
	}
	public void setPenaltycaseSTime(String penaltycaseSTime) {
		this.penaltycaseSTime = penaltycaseSTime;
	}
	public String getPenaltycaseExecute() {
		return penaltycaseExecute;
	}
	public void setPenaltycaseExecute(String penaltycaseExecute) {
		this.penaltycaseExecute = penaltycaseExecute;
	}

	

}
