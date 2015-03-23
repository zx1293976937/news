package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Reconsiderationcase {
	
	private String reconsiderationcaseId = UUID.randomUUID().toString();//Id
	private String reconsiderationcaseTitle;//案件名称
	private String reconsiderationcaseApplicant;//申请人名称
	private String reconsiderationcaseDapplicant;//被申请人名称
	private String reconsiderationcaseReceivingUnit;//受理单位
	private String reconsiderationcaseApplicationItems;//申请事项
	private String reconsiderationcaseSTime;//申请日期
	private String reconsiderationcaseIsaccept;//是否受理
	private String reconsiderationcaseITime;//受理日期
	private String reconsiderationcaseDecide;//复议决定
	private String reconsiderationcaseETime;//结案日期
	private String reconsiderationcaseUTime;//上传日期
	private String reconsiderationcaseProvince;//发布单位
	private String reconsiderationcaseParentUnit;//上级单位
	private String reconsiderationcasePublishUserId;//发布用户
	private int numCount;
	
	
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	public String getReconsiderationcaseId() {
		return reconsiderationcaseId;
	}
	public void setReconsiderationcaseId(String reconsiderationcaseId) {
		this.reconsiderationcaseId = reconsiderationcaseId;
	}
	public String getReconsiderationcaseTitle() {
		return reconsiderationcaseTitle;
	}
	public void setReconsiderationcaseTitle(String reconsiderationcaseTitle) {
		this.reconsiderationcaseTitle = reconsiderationcaseTitle;
	}
	public String getReconsiderationcaseApplicant() {
		return reconsiderationcaseApplicant;
	}
	public void setReconsiderationcaseApplicant(String reconsiderationcaseApplicant) {
		this.reconsiderationcaseApplicant = reconsiderationcaseApplicant;
	}
	public String getReconsiderationcaseDapplicant() {
		return reconsiderationcaseDapplicant;
	}
	public void setReconsiderationcaseDapplicant(
			String reconsiderationcaseDapplicant) {
		this.reconsiderationcaseDapplicant = reconsiderationcaseDapplicant;
	}
	public String getReconsiderationcaseReceivingUnit() {
		return reconsiderationcaseReceivingUnit;
	}
	public void setReconsiderationcaseReceivingUnit(
			String reconsiderationcaseReceivingUnit) {
		this.reconsiderationcaseReceivingUnit = reconsiderationcaseReceivingUnit;
	}
	public String getReconsiderationcaseApplicationItems() {
		return reconsiderationcaseApplicationItems;
	}
	public void setReconsiderationcaseApplicationItems(
			String reconsiderationcaseApplicationItems) {
		this.reconsiderationcaseApplicationItems = reconsiderationcaseApplicationItems;
	}
	public String getReconsiderationcaseSTime() {
		return reconsiderationcaseSTime;
	}
	public void setReconsiderationcaseSTime(String reconsiderationcaseSTime) {
		this.reconsiderationcaseSTime = reconsiderationcaseSTime;
	}
	public String getReconsiderationcaseIsaccept() {
		return reconsiderationcaseIsaccept;
	}
	public void setReconsiderationcaseIsaccept(String reconsiderationcaseIsaccept) {
		this.reconsiderationcaseIsaccept = reconsiderationcaseIsaccept;
	}
	public String getReconsiderationcaseITime() {
		return reconsiderationcaseITime;
	}
	public void setReconsiderationcaseITime(String reconsiderationcaseITime) {
		this.reconsiderationcaseITime = reconsiderationcaseITime;
	}
	public String getReconsiderationcaseDecide() {
		return reconsiderationcaseDecide;
	}
	public void setReconsiderationcaseDecide(String reconsiderationcaseDecide) {
		this.reconsiderationcaseDecide = reconsiderationcaseDecide;
	}
	public String getReconsiderationcaseETime() {
		return reconsiderationcaseETime;
	}
	public void setReconsiderationcaseETime(String reconsiderationcaseETime) {
		this.reconsiderationcaseETime = reconsiderationcaseETime;
	}
	public String getReconsiderationcaseUTime() {
		return reconsiderationcaseUTime;
	}
	public void setReconsiderationcaseUTime(String reconsiderationcaseUTime) {
		this.reconsiderationcaseUTime = reconsiderationcaseUTime;
	}
	public String getReconsiderationcaseProvince() {
		return reconsiderationcaseProvince;
	}
	public void setReconsiderationcaseProvince(String reconsiderationcaseProvince) {
		this.reconsiderationcaseProvince = reconsiderationcaseProvince;
	}
	public String getReconsiderationcaseParentUnit() {
		return reconsiderationcaseParentUnit;
	}
	public void setReconsiderationcaseParentUnit(
			String reconsiderationcaseParentUnit) {
		this.reconsiderationcaseParentUnit = reconsiderationcaseParentUnit;
	}
	public String getReconsiderationcasePublishUserId() {
		return reconsiderationcasePublishUserId;
	}
	public void setReconsiderationcasePublishUserId(
			String reconsiderationcasePublishUserId) {
		this.reconsiderationcasePublishUserId = reconsiderationcasePublishUserId;
	}
	
	
	
}
