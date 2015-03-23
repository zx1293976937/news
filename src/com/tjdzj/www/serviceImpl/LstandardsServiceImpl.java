package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.LstandardsDao;
import com.tjdzj.www.model.Lstandards;
import com.tjdzj.www.service.LstandardsService;


/**
 * @author wangxiaolei
 *
 */
public class LstandardsServiceImpl implements  LstandardsService{
	 LstandardsDao  lstandardsDao;
	
	
	public LstandardsDao getLstandardsDao() {
		return lstandardsDao;
	}

	public void setLstandardsDao(LstandardsDao lstandardsDao) {
		this.lstandardsDao = lstandardsDao;
	}
	
	

	@Override
	public void addLstandards(Lstandards lstandards) {
		lstandardsDao.insertLstandards(lstandards);
	}

	@Override
	public void updateLstandards(Lstandards lstandards) {
		lstandardsDao.updateLstandards(lstandards);		
	}

	@Override
	public void deleteLstandards(String lstandardsId) {
		lstandardsDao.deleteLstandards(lstandardsId);		
	}

	@Override
	public Lstandards findLstandardsById(String lstandardsId) {
		return lstandardsDao.findLstandardsByid(lstandardsId);
	}

	@Override
	public List<Lstandards> findAllLstandards() {
		return lstandardsDao.findLstandardsAll();
	}

	@Override
	public int findAllCount() {
		return lstandardsDao.findAllCount();
	}

	@Override
	public int findUserCount(String lstandardsPublishUserId) {
		return lstandardsDao.findUserCount(lstandardsPublishUserId);
	}

	@Override
	public List<Lstandards> findLstandardsByUser(Map map) {
		return lstandardsDao.findLstandardsByUser(map);
	}

	@Override
	public List<Lstandards> findLstandardsByAll(Map map) {
		return lstandardsDao.findLstandardsByAll(map);
	}

	@Override
	public List<Lstandards> findTopTen() {
		return lstandardsDao.findTopTen();
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return lstandardsDao.findByParentUnitCount(map);
	}

	@Override
	public List<Lstandards> findByParentUnit(Map map) {
		return lstandardsDao.findByParentUnit(map);
	}

	@Override
	public int findProvinceCount(String inchargeMent) {
		return lstandardsDao.findProvinceCount(inchargeMent);
	}

	
	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<Lstandards> list = lstandardsDao.findByCount(map);
		if(list!=null){
			for(Lstandards l:list){
				map1.put(l.getLstandardsProvince(), l.getNumCount());
			}
		}
		return map1;
	}
	

	


}
