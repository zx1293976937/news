package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Policy {
	private String policyId = UUID.randomUUID().toString();
	private String policyName;
	private String policyCategory;
	private String policyProvince;
	private String policyIncharger;
	private String policySDate;
	private String policyEDate;
	private String policyUDate;
	private String policyADate;
	private String policyThesis;
	private String policyPublishUserId;
	public String getPolicyId() {
		return policyId;
	}
	public void setPolicyId(String policyId) {
		this.policyId = policyId;
	}
	public String getPolicyName() {
		return policyName;
	}
	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}
	public String getPolicyCategory() {
		return policyCategory;
	}
	public void setPolicyCategory(String policyCategory) {
		this.policyCategory = policyCategory;
	}
	public String getPolicyProvince() {
		return policyProvince;
	}
	public void setPolicyProvince(String policyProvince) {
		this.policyProvince = policyProvince;
	}
	public String getPolicyIncharger() {
		return policyIncharger;
	}
	public void setPolicyIncharger(String policyIncharger) {
		this.policyIncharger = policyIncharger;
	}
	public String getPolicySDate() {
		return policySDate;
	}
	public void setPolicySDate(String policySDate) {
		this.policySDate = policySDate;
	}
	public String getPolicyEDate() {
		return policyEDate;
	}
	public void setPolicyEDate(String policyEDate) {
		this.policyEDate = policyEDate;
	}
	public String getPolicyUDate() {
		return policyUDate;
	}
	public void setPolicyUDate(String policyUDate) {
		this.policyUDate = policyUDate;
	}
	public String getPolicyADate() {
		return policyADate;
	}
	public void setPolicyADate(String policyADate) {
		this.policyADate = policyADate;
	}
	public String getPolicyThesis() {
		return policyThesis;
	}
	public void setPolicyThesis(String policyThesis) {
		this.policyThesis = policyThesis;
	}
	public String getPolicyPublishUserId() {
		return policyPublishUserId;
	}
	public void setPolicyPublishUserId(String policyPublishUserId) {
		this.policyPublishUserId = policyPublishUserId;
	}
	
	
}
