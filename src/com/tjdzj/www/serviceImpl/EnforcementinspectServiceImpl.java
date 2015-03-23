package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.EnforcementinspectDao;
import com.tjdzj.www.model.Enforcementinspect;
import com.tjdzj.www.service.EnforcementinspectService;

/**
 * @author wangxiaolei
 *
 */
public class EnforcementinspectServiceImpl implements EnforcementinspectService{
	 
	EnforcementinspectDao enforcementinspectDao;

	public EnforcementinspectDao getEnforcementinspectDao() {
		return enforcementinspectDao;
	}

	public void setEnforcementinspectDao(EnforcementinspectDao enforcementinspectDao) {
		this.enforcementinspectDao = enforcementinspectDao;
	}

	@Override
	public void insertEnforcementinspect(Enforcementinspect enforcementinspect) {
		enforcementinspectDao.insertEnforcementinspect(enforcementinspect);		
	}

	@Override
	public void updateEnforcementinspect(Enforcementinspect enforcementinspect) {
		System.out.println(enforcementinspect.getEnforcementinspectId());
		enforcementinspectDao.updateEnforcementinspect(enforcementinspect);		
	}

	@Override
	public void deleteEnforcementinspect(String enforcementinspectId) {
		enforcementinspectDao.deleteEnforcementinspect(enforcementinspectId);		
	}

	@Override
	public Enforcementinspect findEnforcementinspectByid(
			String enforcementinspectId) {
		return enforcementinspectDao.findEnforcementinspectByid(enforcementinspectId);
	}

	

	@Override
	public int findAllCount() {
		return enforcementinspectDao.findAllCount();
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return enforcementinspectDao.findByParentUnitCount(map);
	}

	@Override
	public int findUserCount(String EnforcementinspectPublishUserId) {
		return enforcementinspectDao.findUserCount(EnforcementinspectPublishUserId);
	}

	@Override
	public List<Enforcementinspect> findEnforcementinspectByUser(Map map) {
		return enforcementinspectDao.findEnforcementinspectByUser(map);
	}

	@Override
	public List<Enforcementinspect> findByParentUnit(Map map) {
		return enforcementinspectDao.findByParentUnit(map);
	}

	@Override
	public List<Enforcementinspect> findEnforcementinspectByAll(Map map) {
		return enforcementinspectDao.findEnforcementinspectByAll(map);
	}

	@Override
	public List<Enforcementinspect> findTopTen() {
		return enforcementinspectDao.findTopTen();
	}

	@Override
	public List<Enforcementinspect> findEnforcementinspectAll() {
		return enforcementinspectDao.findEnforcementinspectAll();
	}

	@Override
	public int findProvinceCount(String inchargeMent) {
		return enforcementinspectDao.findProvinceCount(inchargeMent);
	}

	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<Enforcementinspect> list = enforcementinspectDao.findByCount(map);
		if(list!=null){
			for(Enforcementinspect l:list){
				map1.put(l.getEnforcementinspectProvince(), l.getNumCount());
			}
		}
		return map1;
	}

}
