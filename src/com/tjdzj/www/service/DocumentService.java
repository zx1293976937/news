package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Document;
import com.tjdzj.www.model.Document;

/**
 * @author wangxiaolei
 *
 */
public interface DocumentService {

	public  void addDocument(Document document);

	public  void updateDocument(Document document);

	public  void deleteDocument(String documentId);

	public  Document findDocumentById(String documentId);

	public  List<Document> findAllDocument();

	public  List<Document> findDocumentByUser(Map map);

	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);


	public  int findUserCount(String documentPublishUserId);
	
	public  List<Document> findByParentUnit(Map map);

	public  List<Document> findDocumentByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Document> findTopTen();
	public  Map<String, Integer> findByCount(Map map);

}
