package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.RegularDao;
import com.tjdzj.www.model.Regular;
import com.tjdzj.www.service.RegularService;

/**
 * @author wangxiaolei
 *
 */
public class RegularServiceImpl implements RegularService{
	
	RegularDao regularDao;
	
	
	public RegularDao getRegularDao() {
		return regularDao;
	}

	public void setRegularDao(RegularDao regularDao) {
		this.regularDao = regularDao;
	}

	
	
	@Override
	public void addRegular(Regular regular) {
		regularDao.insertRegular(regular);
		
	}

	@Override
	public void updateRegular(Regular regular) {
		regularDao.updateRegular(regular);
		
	}

	@Override
	public void deleteRegular(String regularId) {
		regularDao.deleteRegular(regularId);
		
	}

	@Override
	public Regular findRegularById(String regularId) {
		return regularDao.findRegularByid(regularId);
	}

	@Override
	public List<Regular> findAllRegular() {
		return regularDao.findRegularAll();
	}

	@Override
	public int findAllCount() {
		return regularDao.findAllCount();
	}

	@Override
	public int findUserCount(String regularPublishUserId) {
		return regularDao.findUserCount(regularPublishUserId);
	}

	@Override
	public List<Regular> findRegularByUser(Map map) {
		return regularDao.findRegularByUser(map);
	}

	@Override
	public List<Regular> findRegularByAll(Map map) {
		return regularDao.findRegularByAll(map);
	}

	@Override
	public List<Regular> findTopTen() {
		return regularDao.findTopTen();
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return regularDao.findByParentUnitCount(map);
	}

	@Override
	public List<Regular> findByParentUnit(Map map) {
		return regularDao.findByParentUnit(map);
	}

	@Override
	public int findProvinceCount(String inchargeMent) {
		return regularDao.findProvinceCount(inchargeMent);
	}

	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<Regular> list = regularDao.findByCount(map);
		if(list!=null){
			for(Regular l:list){
				map1.put(l.getRegularProvince(), l.getNumCount());
			}
		}
		return map1;
	}

	

}
