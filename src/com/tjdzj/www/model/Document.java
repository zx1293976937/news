package com.tjdzj.www.model;

import java.util.UUID;

/**
 * @author wangxiaolei
 *
 */
public class Document {
	private String documentId = UUID.randomUUID().toString();
	private String documentNumber;//文件编号
	private String documentTitle;//文件名称
	private String documentContent;//文件文本
	private String documentSTime;//制定时间
	private String documentITime;//实施时间
	private String documentETime;//失效时间
	private String documentPublisher;//颁布机关
	private String documentProvince;//所在单位
	private String documentParentUnit;//所在单位
	private String documentPublishUserId;
	private String documentUTime;//上传时间
	private int numCount;
	
	private String documentField;
	public int getNumCount() {
		return numCount;
	}
	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}
	
	
	
	public String getDocumentId() {
		return documentId;
	}
	public void setDocumentId(String documentId) {
		this.documentId = documentId;
	}
	public String getDocumentNumber() {
		return documentNumber;
	}
	public void setDocumentNumber(String documentNumber) {
		this.documentNumber = documentNumber;
	}
	public String getDocumentTitle() {
		return documentTitle;
	}
	public void setDocumentTitle(String documentTitle) {
		this.documentTitle = documentTitle;
	}
	public String getDocumentContent() {
		return documentContent;
	}
	public void setDocumentContent(String documentContent) {
		this.documentContent = documentContent;
	}
	public String getDocumentSTime() {
		return documentSTime;
	}
	public void setDocumentSTime(String documentSTime) {
		this.documentSTime = documentSTime;
	}
	public String getDocumentITime() {
		return documentITime;
	}
	public void setDocumentITime(String documentITime) {
		this.documentITime = documentITime;
	}
	public String getDocumentETime() {
		return documentETime;
	}
	public void setDocumentETime(String documentETime) {
		this.documentETime = documentETime;
	}
	public String getDocumentPublisher() {
		return documentPublisher;
	}
	public void setDocumentPublisher(String documentPublisher) {
		this.documentPublisher = documentPublisher;
	}
	public String getDocumentProvince() {
		return documentProvince;
	}
	public void setDocumentProvince(String documentProvince) {
		this.documentProvince = documentProvince;
	}
	public String getDocumentParentUnit() {
		return documentParentUnit;
	}
	public void setDocumentParentUnit(String documentParentUnit) {
		this.documentParentUnit = documentParentUnit;
	}
	public String getDocumentPublishUserId() {
		return documentPublishUserId;
	}
	public void setDocumentPublishUserId(String documentPublishUserId) {
		this.documentPublishUserId = documentPublishUserId;
	}
	public String getDocumentUTime() {
		return documentUTime;
	}
	public void setDocumentUTime(String documentUTime) {
		this.documentUTime = documentUTime;
	}
	public String getDocumentField() {
		return documentField;
	}
	public void setDocumentField(String documentField) {
		this.documentField = documentField;
	}
	
	
}
