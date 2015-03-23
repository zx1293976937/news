package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Train {
	private String trainId = UUID.randomUUID().toString();
	private String trainTitle;
	private String trainSTime;
	private String trainETime;
	private String trainLocation;
	private String trainContent;
	private String trainPeople;
	private String trainStatics;
	private String trainHost;
	private String trainUTime;
	private String trainProvince;
	private String trainParentUnit;
	private String trainPublishUserId;
	private int numCount;
	
	
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	public String getTrainId() {
		return trainId;
	}
	public void setTrainId(String trainId) {
		this.trainId = trainId;
	}
	public String getTrainTitle() {
		return trainTitle;
	}
	public void setTrainTitle(String trainTitle) {
		this.trainTitle = trainTitle;
	}
	public String getTrainSTime() {
		return trainSTime;
	}
	public void setTrainSTime(String trainSTime) {
		this.trainSTime = trainSTime;
	}
	public String getTrainETime() {
		return trainETime;
	}
	public void setTrainETime(String trainETime) {
		this.trainETime = trainETime;
	}
	public String getTrainLocation() {
		return trainLocation;
	}
	public void setTrainLocation(String trainLocation) {
		this.trainLocation = trainLocation;
	}
	public String getTrainContent() {
		return trainContent;
	}
	public void setTrainContent(String trainContent) {
		this.trainContent = trainContent;
	}
	public String getTrainPeople() {
		return trainPeople;
	}
	public void setTrainPeople(String trainPeople) {
		this.trainPeople = trainPeople;
	}
	public String getTrainStatics() {
		return trainStatics;
	}
	public void setTrainStatics(String trainStatics) {
		this.trainStatics = trainStatics;
	}
	public String getTrainHost() {
		return trainHost;
	}
	public void setTrainHost(String trainHost) {
		this.trainHost = trainHost;
	}
	public String getTrainUTime() {
		return trainUTime;
	}
	public void setTrainUTime(String trainUTime) {
		this.trainUTime = trainUTime;
	}
	public String getTrainProvince() {
		return trainProvince;
	}
	public void setTrainProvince(String trainProvince) {
		this.trainProvince = trainProvince;
	}
	public String getTrainParentUnit() {
		return trainParentUnit;
	}
	public void setTrainParentUnit(String trainParentUnit) {
		this.trainParentUnit = trainParentUnit;
	}
	public String getTrainPublishUserId() {
		return trainPublishUserId;
	}
	public void setTrainPublishUserId(String trainPublishUserId) {
		this.trainPublishUserId = trainPublishUserId;
	}
	
}
