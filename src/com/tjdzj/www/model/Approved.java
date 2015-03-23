package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Approved {
	private String approvedId = UUID.randomUUID().toString();
	private String approvedCategoryA;//类别
	private String approvedCategoryB;
	private String approvedCategoryC;
	private String approvedTitle;//许可事项名称
	private String approvedName;//申请人
	private String approvedApplicant;//许可主体名称
	private String approvedContent;//许可文本
	private String approvedSTime;//受理日期
	private String approvedETime;//批复日期
	private String approvedUTime;//上传日期
	private String approvedProvince;
	private String approvedPriority;//发布单位编号
	private String approvedParentUnit;//批复日期
	private String approvedPublishUserId;
	private String lawBasic;
	private int numCount;
	private String approvedMainTitle;//职权名称
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	public String getLawBasic() {
		return lawBasic;
	}
	public void setLawBasic(String lawBasic) {
		this.lawBasic = lawBasic;
	}
	public String getApprovedId() {
		return approvedId;
	}
	public void setApprovedId(String approvedId) {
		this.approvedId = approvedId;
	}
	public String getApprovedCategoryA() {
		return approvedCategoryA;
	}
	public void setApprovedCategoryA(String approvedCategoryA) {
		this.approvedCategoryA = approvedCategoryA;
	}
	public String getApprovedCategoryB() {
		return approvedCategoryB;
	}
	public void setApprovedCategoryB(String approvedCategoryB) {
		this.approvedCategoryB = approvedCategoryB;
	}
	public String getApprovedCategoryC() {
		return approvedCategoryC;
	}
	public void setApprovedCategoryC(String approvedCategoryC) {
		this.approvedCategoryC = approvedCategoryC;
	}
	public String getApprovedTitle() {
		return approvedTitle;
	}
	public void setApprovedTitle(String approvedTitle) {
		this.approvedTitle = approvedTitle;
	}
	public String getApprovedName() {
		return approvedName;
	}
	public void setApprovedName(String approvedName) {
		this.approvedName = approvedName;
	}
	public String getApprovedApplicant() {
		return approvedApplicant;
	}
	public void setApprovedApplicant(String approvedApplicant) {
		this.approvedApplicant = approvedApplicant;
	}
	public String getApprovedContent() {
		return approvedContent;
	}
	public void setApprovedContent(String approvedContent) {
		this.approvedContent = approvedContent;
	}
	public String getApprovedSTime() {
		return approvedSTime;
	}
	public void setApprovedSTime(String approvedSTime) {
		this.approvedSTime = approvedSTime;
	}
	public String getApprovedETime() {
		return approvedETime;
	}
	public void setApprovedETime(String approvedETime) {
		this.approvedETime = approvedETime;
	}
	public String getApprovedUTime() {
		return approvedUTime;
	}
	public void setApprovedUTime(String approvedUTime) {
		this.approvedUTime = approvedUTime;
	}
	public String getApprovedProvince() {
		return approvedProvince;
	}
	public void setApprovedProvince(String approvedProvince) {
		this.approvedProvince = approvedProvince;
	}
	public String getApprovedParentUnit() {
		return approvedParentUnit;
	}
	public void setApprovedParentUnit(String approvedParentUnit) {
		this.approvedParentUnit = approvedParentUnit;
	}
	public String getApprovedPublishUserId() {
		return approvedPublishUserId;
	}
	public void setApprovedPublishUserId(String approvedPublishUserId) {
		this.approvedPublishUserId = approvedPublishUserId;
	}
	public String getApprovedPriority() {
		return approvedPriority;
	}
	public void setApprovedPriority(String approvedPriority) {
		this.approvedPriority = approvedPriority;
	}
	public String getApprovedMainTitle() {
		return approvedMainTitle;
	}
	public void setApprovedMainTitle(String approvedMainTitle) {
		this.approvedMainTitle = approvedMainTitle;
	}
	
	
}
