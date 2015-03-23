package com.tjdzj.www.serviceImpl;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.EnforcementDao;
import com.tjdzj.www.model.Enforcement;
import com.tjdzj.www.service.EnforcementService;

/**
 * @author wangxiaolei
 *
 */
public class EnforcementServiceImpl implements EnforcementService{
	 EnforcementDao enforcementDao;
	

	public EnforcementDao getEnforcementDao() {
		return enforcementDao;
	}

	public void setEnforcementDao(EnforcementDao enforcementDao) {
		this.enforcementDao = enforcementDao;
	}
	

	@Override
	public void addEnforcement(Enforcement enforcement) {
		enforcementDao.insertEnforcement(enforcement);
	}

	@Override
	public void updateEnforcement(Enforcement enforcement) {
		System.out.println(enforcement.getEnforcementId());
		enforcementDao.updateEnforcement(enforcement);
		
	}

	@Override
	public void deleteEnforcement(String enforcementId) {
		System.out.println("delete service");
		enforcementDao.deleteEnforcement(enforcementId);
		
	}

	@Override
	public Enforcement findEnforcementById(String enforcementId) {
		return enforcementDao.findEnforcementByid(enforcementId);
	}

	@Override
	public List<Enforcement> findAllEnforcement() {
		return enforcementDao.findEnforcementAll();
	}

	@Override
	public List<Enforcement> findEnforcementByUser(Map map) {
		return enforcementDao.findEnforcementByUser(map);
	}

	@Override
	public int findAllCount() {
		return enforcementDao.findAllCount();
	}

	@Override
	public int findUserCount(String enforcementPublishUserId) {
		return enforcementDao.findUserCount(enforcementPublishUserId);
	}

	@Override
	public List<Enforcement> findEnforcementByAll(Map map) {
		return enforcementDao.findEnforcementByAll(map);
	}

	@Override
	public List<Enforcement> findTopTen() {
		return enforcementDao.findTopTen();
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return enforcementDao.findByParentUnitCount(map);
	}

	@Override
	public List<Enforcement> findByParentUnit(Map map) {
		return enforcementDao.findByParentUnit(map);
	}

	@Override
	public List<String> findEnforcement() {
		return enforcementDao.findEnforcement();
	}

	


}
