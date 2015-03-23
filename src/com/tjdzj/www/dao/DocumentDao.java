package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Document;

/**
 * @author wangxiaolei
 *
 */
public interface DocumentDao {

	public  void insertDocument(Document document);

	public  void updateDocument(Document document);

	public  void deleteDocument(String documentId);

	public  Document findDocumentByid(String documentId);

	public  List<Document> findDocumentAll();

	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String DocumentPublishUserId);

	public  List<Document> findDocumentByUser(Map map);
	
	public  List<Document> findByParentUnit(Map map);

	public  List<Document> findDocumentByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Document> findTopTen();
	
	public  List<Document> findByCount(Map map);

}
