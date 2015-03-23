package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.ReconsiderationcaseDao;
import com.tjdzj.www.model.Reconsiderationcase;
import com.tjdzj.www.service.ReconsiderationcaseService;

/**
 * @author wangxiaolei
 *
 */
public class ReconsiderationcaseServiceImpl implements ReconsiderationcaseService{
	
	
	ReconsiderationcaseDao reconsiderationcaseDao;
	
	public ReconsiderationcaseDao getReconsiderationcaseDao() {
		return reconsiderationcaseDao;
	}

	public void setReconsiderationcaseDao(
			ReconsiderationcaseDao reconsiderationcaseDao) {
		this.reconsiderationcaseDao = reconsiderationcaseDao;
	}

	
	@Override
	public void addReconsiderationcase(Reconsiderationcase reconsiderationcase) {
		System.out.println(reconsiderationcase.getReconsiderationcaseTitle());
		reconsiderationcaseDao.insertReconsiderationcase(reconsiderationcase);
		
	}

	@Override
	public void updateReconsiderationcase(Reconsiderationcase reconsiderationcase) {
		reconsiderationcaseDao.updateReconsiderationcase(reconsiderationcase);
		
	}

	@Override
	public void deleteReconsiderationcase(String reconsiderationcaseId) {
		reconsiderationcaseDao.deleteReconsiderationcase(reconsiderationcaseId);
		
	}

	@Override
	public Reconsiderationcase findReconsiderationcaseById(String reconsiderationcaseId) {
		
		return reconsiderationcaseDao.findReconsiderationcaseByid(reconsiderationcaseId);
	}

	@Override
	public List<Reconsiderationcase> findAllReconsiderationcase() {
		return reconsiderationcaseDao.findReconsiderationcaseAll();
	}

	@Override
	public int findAllCount() {
		return reconsiderationcaseDao.findAllCount();
	}

	@Override
	public int findUserCount(String reconsiderationcasePublishUserId) {
		return reconsiderationcaseDao.findUserCount(reconsiderationcasePublishUserId);
	}

	@Override
	public List<Reconsiderationcase> findReconsiderationcaseByUser(Map map) {
		return reconsiderationcaseDao.findReconsiderationcaseByUser(map);
	}

	@Override
	public List<Reconsiderationcase> findReconsiderationcaseByAll(Map map) {
		return reconsiderationcaseDao.findReconsiderationcaseByAll(map);
	}

	@Override
	public List<Reconsiderationcase> findTopTen() {
		return reconsiderationcaseDao.findTopTen();
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return reconsiderationcaseDao.findByParentUnitCount(map);
	}

	@Override
	public List<Reconsiderationcase> findByParentUnit(Map map) {
		return reconsiderationcaseDao.findByParentUnit(map);
	}

	@Override
	public int findProvinceCount(String inchargeMent) {
		return reconsiderationcaseDao.findProvinceCount(inchargeMent);
	}
	
	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<Reconsiderationcase> list = reconsiderationcaseDao.findByCount(map);
		if(list!=null){
			for(Reconsiderationcase l:list){
				map1.put(l.getReconsiderationcaseProvince(), l.getNumCount());
			}
		}
		return map1;
	}

}
