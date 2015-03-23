package com.tjdzj.www.serviceImpl;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.LawagencyDao;
import com.tjdzj.www.model.Lawagency;
import com.tjdzj.www.service.LawagencyService;

/**
 * @author wangxiaolei
 *
 */
public class LawagencyServiceImpl implements LawagencyService{
	
	LawagencyDao lawagencyDao;
	
	
	public LawagencyDao getLawagencyDao() {
		return lawagencyDao;
	}

	public void setLawagencyDao(LawagencyDao lawagencyDao) {
		this.lawagencyDao = lawagencyDao;
	}

	@Override
	public void addLawagency(Lawagency lawagency) {
		lawagencyDao.insertLawagency(lawagency);
		
	}

	@Override
	public void updateLawagency(Lawagency lawagency) {
		lawagencyDao.updateLawagency(lawagency);
		
	}

	@Override
	public void deleteLawagency(String lawagencyId) {
		lawagencyDao.deleteLawagency(lawagencyId);
		
	}

	@Override
	public Lawagency findLawagencyById(String lawagencyId) {
		return lawagencyDao.findLawagencyByid(lawagencyId);
	}

	@Override
	public List<Lawagency> findAllLawagency() {
		return lawagencyDao.findLawagencyAll();
	}

	@Override
	public int findAllCount() {
		return lawagencyDao.findAllCount();
	}

	@Override
	public int findUserCount(String lawagencyPublishUserId) {
		return lawagencyDao.findUserCount(lawagencyPublishUserId);
	}

	@Override
	public List<Lawagency> findLawagencyByUser(Map map) {
		return lawagencyDao.findLawagencyByUser(map);
	}

	@Override
	public List<Lawagency> findLawagencyByAll(Map map) {
		return lawagencyDao.findLawagencyByAll(map);
	}

	@Override
	public List<Lawagency> findTopTen() {
		return lawagencyDao.findTopTen();
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return lawagencyDao.findByParentUnitCount(map);
	}

	@Override
	public List<Lawagency> findByParentUnit(Map map) {
		return lawagencyDao.findByParentUnit(map);
	}

	

}
