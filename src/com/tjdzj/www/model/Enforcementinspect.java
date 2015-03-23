package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Enforcementinspect {
	private String enforcementinspectId = UUID.randomUUID().toString();
	private String enforcementinspectTitle;//检查名称
	private String enforcementinspectContent;//检查内容
	private String enforcementinspectTime;//检查日期
	private String enforcementinspectResult;//检查结果
	private String enforcementinspectUTime;
	private String enforcementinspectProvince;
	private String enforcementinspectParentUnit;
	private String enforcementinspectPublishUserId;
	private String enforcementinspectSubject;
	private int numCount;
	private String enforcementinspectCategory;//检查类别 add by css
	
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	public String getEnforcementinspectId() {
		return enforcementinspectId;
	}
	public void setEnforcementinspectId(String enforcementinspectId) {
		this.enforcementinspectId = enforcementinspectId;
	}
	public String getEnforcementinspectTitle() {
		return enforcementinspectTitle;
	}
	public void setEnforcementinspectTitle(String enforcementinspectTitle) {
		this.enforcementinspectTitle = enforcementinspectTitle;
	}
	public String getEnforcementinspectContent() {
		return enforcementinspectContent;
	}
	public void setEnforcementinspectContent(String enforcementinspectContent) {
		this.enforcementinspectContent = enforcementinspectContent;
	}
	public String getEnforcementinspectTime() {
		return enforcementinspectTime;
	}
	public void setEnforcementinspectTime(String enforcementinspectTime) {
		this.enforcementinspectTime = enforcementinspectTime;
	}
	public String getEnforcementinspectResult() {
		return enforcementinspectResult;
	}
	public void setEnforcementinspectResult(String enforcementinspectResult) {
		this.enforcementinspectResult = enforcementinspectResult;
	}
	public String getEnforcementinspectUTime() {
		return enforcementinspectUTime;
	}
	public void setEnforcementinspectUTime(String enforcementinspectUTime) {
		this.enforcementinspectUTime = enforcementinspectUTime;
	}
	public String getEnforcementinspectProvince() {
		return enforcementinspectProvince;
	}
	public void setEnforcementinspectProvince(String enforcementinspectProvince) {
		this.enforcementinspectProvince = enforcementinspectProvince;
	}
	public String getEnforcementinspectParentUnit() {
		return enforcementinspectParentUnit;
	}
	public void setEnforcementinspectParentUnit(String enforcementinspectParentUnit) {
		this.enforcementinspectParentUnit = enforcementinspectParentUnit;
	}
	public String getEnforcementinspectPublishUserId() {
		return enforcementinspectPublishUserId;
	}
	public void setEnforcementinspectPublishUserId(
			String enforcementinspectPublishUserId) {
		this.enforcementinspectPublishUserId = enforcementinspectPublishUserId;
	}
	public String getEnforcementinspectSubject() {
		return enforcementinspectSubject;
	}
	public void setEnforcementinspectSubject(String enforcementinspectSubject) {
		this.enforcementinspectSubject = enforcementinspectSubject;
	}
	public String getEnforcementinspectCategory() {
		return enforcementinspectCategory;
	}
	public void setEnforcementinspectCategory(String enforcementinspectCategory) {
		this.enforcementinspectCategory = enforcementinspectCategory;
	}

	
}
