package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.PenaltycaseDao;
import com.tjdzj.www.model.Penaltycase;
import com.tjdzj.www.service.PenaltycaseService;

/**
 * @author wangxiaolei
 *
 */
public class PenaltycaseServiceImpl implements PenaltycaseService{
	
	
	PenaltycaseDao penaltycaseDao;
	
	public PenaltycaseDao getPenaltycaseDao() {
		return penaltycaseDao;
	}

	public void setPenaltycaseDao(PenaltycaseDao penaltycaseDao) {
		this.penaltycaseDao = penaltycaseDao;
	}

	
	
	@Override
	public void addPenaltycase(Penaltycase penaltycase) {
		penaltycaseDao.insertpenaltycase(penaltycase);
		
	}

	@Override
	public void updatePenaltycase(Penaltycase penaltycase) {
		penaltycaseDao.updatepenaltycase(penaltycase);
		
	}

	@Override
	public void deletePenaltycase(String penaltycaseId) {
		penaltycaseDao.deletepenaltycase(penaltycaseId);
		
	}

	@Override
	public Penaltycase findPenaltycaseById(String penaltycaseId) {
		
		return penaltycaseDao.findpenaltycaseByid(penaltycaseId);
	}

	@Override
	public List<Penaltycase> findAllPenaltycase() {
		
		return penaltycaseDao.findpenaltycaseAll();
	}

	@Override
	public int findAllCount() {
		return penaltycaseDao.findAllCount();
	}

	@Override
	public int findUserCount(String penaltycasePublishUserId) {
		return penaltycaseDao.findUserCount(penaltycasePublishUserId);
	}

	@Override
	public List<Penaltycase> findPenaltycaseByUser(Map map) {
		return penaltycaseDao.findPenaltycaseByUser(map);
	}

	@Override
	public List<Penaltycase> findPenaltycaseByAll(Map map) {
		return penaltycaseDao.findPenaltycaseByAll(map);
	}

	@Override
	public List<Penaltycase> findTopTen() {
		return penaltycaseDao.findTopTen();
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return penaltycaseDao.findByParentUnitCount(map);
	}

	@Override
	public List<Penaltycase> findByParentUnit(Map map) {
		return penaltycaseDao.findByParentUnit(map);
	}

	@Override
	public int findProvinceCount(String inchargeMent) {
		return penaltycaseDao.findProvinceCount(inchargeMent);
	}
	
	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<Penaltycase> list = penaltycaseDao.findByCount(map);
		if(list!=null){
			for(Penaltycase l:list){
				map1.put(l.getPenaltycaseProvince(), l.getNumCount());
			}
		}
		return map1;
	}

}
