package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.DocumentDao;
import com.tjdzj.www.model.Document;
import com.tjdzj.www.model.Laws;
import com.tjdzj.www.service.DocumentService;

/**
 * @author wangxiaolei
 *
 */
public class DocumentServiceImpl implements DocumentService{
	 DocumentDao documentDao;
	

	public DocumentDao getDocumentDao() {
		return documentDao;
	}

	public void setDocumentDao(DocumentDao documentDao) {
		this.documentDao = documentDao;
	}

	
	
	@Override
	public void addDocument(Document document) {
		documentDao.insertDocument(document);
	}

	@Override
	public void updateDocument(Document document) {
		documentDao.updateDocument(document);
		
	}

	@Override
	public void deleteDocument(String documentId) {
		documentDao.deleteDocument(documentId);
		
	}

	@Override
	public Document findDocumentById(String documentId) {
		return documentDao.findDocumentByid(documentId);
	}

	@Override
	public List<Document> findAllDocument() {
		return documentDao.findDocumentAll();
	}

	@Override
	public List<Document> findDocumentByUser(Map map) {
		return documentDao.findDocumentByUser(map);
	}

	@Override
	public int findAllCount() {
		return documentDao.findAllCount();
	}

	@Override
	public int findUserCount(String DocumentPublishUserId) {
		return documentDao.findUserCount(DocumentPublishUserId);
	}

	@Override
	public List<Document> findDocumentByAll(Map map) {
		return documentDao.findDocumentByAll(map);
	}

	@Override
	public List<Document> findTopTen() {
		return documentDao.findTopTen();
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return documentDao.findByParentUnitCount(map);
	}

	@Override
	public List<Document> findByParentUnit(Map map) {
		return documentDao.findByParentUnit(map);
	}

	@Override
	public int findProvinceCount(String inchargeMent) {
		return documentDao.findProvinceCount(inchargeMent);
	}
	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<Document> list = documentDao.findByCount(map);
		if(list!=null){
			for(Document l:list){
				map1.put(l.getDocumentProvince(), l.getNumCount());
			}
		}
		return map1;
	}
	


}
