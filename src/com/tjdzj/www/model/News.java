package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class News {
	private String newsId = UUID.randomUUID().toString();
	private String newsTitle;
	private String newsContent;
	private String newsUTime;
	private String newsProvince;
	private String newsParentUnit;
	private String newsPublishUserId;
	private String submitFlg;
	private String type;
	private int numCount;
	private String newsATime;
	
	public String getNewsATime() {
		return newsATime;
	}
	public void setNewsATime(String newsATime) {
		this.newsATime = newsATime;
	}
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	public String getSubmitFlg() {
		return submitFlg;
	}
	public void setSubmitFlg(String submitFlg) {
		this.submitFlg = submitFlg;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getNewsId() {
		return newsId;
	}
	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getNewsUTime() {
		return newsUTime;
	}
	public void setNewsUTime(String newsUTime) {
		this.newsUTime = newsUTime;
	}
	public String getNewsPublishUserId() {
		return newsPublishUserId;
	}
	public void setNewsPublishUserId(String newsPublishUserId) {
		this.newsPublishUserId = newsPublishUserId;
	}
	public String getNewsProvince() {
		return newsProvince;
	}
	public void setNewsProvince(String newsProvince) {
		this.newsProvince = newsProvince;
	}
	public String getNewsParentUnit() {
		return newsParentUnit;
	}
	public void setNewsParentUnit(String newsParentUnit) {
		this.newsParentUnit = newsParentUnit;
	}
	
	
}
