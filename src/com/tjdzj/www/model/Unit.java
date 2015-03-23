package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Unit {
	private String unitId = UUID.randomUUID().toString();
	private String unitName;
	private String unitParent;
	private String unitUserId;
	public String getUnitId() {
		return unitId;
	}
	public void setUnitId(String unitId) {
		this.unitId = unitId;
	}
	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}
	public String getUnitParent() {
		return unitParent;
	}
	public void setUnitParent(String unitParent) {
		this.unitParent = unitParent;
	}
	public String getUnitUserId() {
		return unitUserId;
	}
	public void setUnitUserId(String unitUserId) {
		this.unitUserId = unitUserId;
	}
	
}
