package com.tjdzj.www.model;

import java.util.List;
import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Propaganda {
	private String propagandaId = UUID.randomUUID().toString();
	private String propagandaTitle;
	private String propagandaContent;//主要内容和形式
	private String propagandaSTime;//开始时间
	private String propagandaETime;//结束时间
	private String propagandaLocation;//活动地点
	private String propagandaRange;//活动范围
	private String propagandaPeople;//受众人数
	private String propagandaOrgnizor;//组织者
	private String propagandaProvince;
	private String propagandaUTime;
	private String propagandaParentUnit;
	private String propagandaPublishUserId;
	private int numCount;
	
	
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	public String getPropagandaId() {
		return propagandaId;
	}
	public void setPropagandaId(String propagandaId) {
		this.propagandaId = propagandaId;
	}
	public String getPropagandaTitle() {
		return propagandaTitle;
	}
	public void setPropagandaTitle(String propagandaTitle) {
		this.propagandaTitle = propagandaTitle;
	}
	public String getPropagandaContent() {
		return propagandaContent;
	}
	public void setPropagandaContent(String propagandaContent) {
		this.propagandaContent = propagandaContent;
	}
	public String getPropagandaSTime() {
		return propagandaSTime;
	}
	public void setPropagandaSTime(String propagandaSTime) {
		this.propagandaSTime = propagandaSTime;
	}
	public String getPropagandaETime() {
		return propagandaETime;
	}
	public void setPropagandaETime(String propagandaETime) {
		this.propagandaETime = propagandaETime;
	}
	public String getPropagandaLocation() {
		return propagandaLocation;
	}
	public void setPropagandaLocation(String propagandaLocation) {
		this.propagandaLocation = propagandaLocation;
	}
	public String getPropagandaRange() {
		return propagandaRange;
	}
	public void setPropagandaRange(String propagandaRange) {
		this.propagandaRange = propagandaRange;
	}
	public String getPropagandaPeople() {
		return propagandaPeople;
	}
	public void setPropagandaPeople(String propagandaPeople) {
		this.propagandaPeople = propagandaPeople;
	}
	public String getPropagandaOrgnizor() {
		return propagandaOrgnizor;
	}
	public void setPropagandaOrgnizor(String propagandaOrgnizor) {
		this.propagandaOrgnizor = propagandaOrgnizor;
	}
	public String getPropagandaProvince() {
		return propagandaProvince;
	}
	public void setPropagandaProvince(String propagandaProvince) {
		this.propagandaProvince = propagandaProvince;
	}
	public String getPropagandaUTime() {
		return propagandaUTime;
	}
	public void setPropagandaUTime(String propagandaUTime) {
		this.propagandaUTime = propagandaUTime;
	}
	public String getPropagandaParentUnit() {
		return propagandaParentUnit;
	}
	public void setPropagandaParentUnit(String propagandaParentUnit) {
		this.propagandaParentUnit = propagandaParentUnit;
	}
	public String getPropagandaPublishUserId() {
		return propagandaPublishUserId;
	}
	public void setPropagandaPublishUserId(String propagandaPublishUserId) {
		this.propagandaPublishUserId = propagandaPublishUserId;
	}
	
	
}
