package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.ApprovedDao;
import com.tjdzj.www.model.Approved;
import com.tjdzj.www.service.ApprovedService;

/**
 * @author wangxiaolei
 *
 */
public class ApprovedServiceImpl implements ApprovedService{
	ApprovedDao approvedDao;
	
	public ApprovedDao getApprovedDao() {
		return approvedDao;
	}

	public void setApprovedDao(ApprovedDao approvedDao) {
		this.approvedDao = approvedDao;
	}

	
	
	@Override
	public void addApproved(Approved approved) {
		approvedDao.insertApproved(approved);
	}

	@Override
	public void updateApproved(Approved approved) {
		approvedDao.updateApproved(approved);
		
	}

	@Override
	public void deleteApproved(String approvedId) {
		approvedDao.deleteApproved(approvedId);
		
	}

	@Override
	public Approved findApprovedById(String approvedId) {
		return approvedDao.findApprovedByid(approvedId);
	}

	@Override
	public List<Approved> findAllApproved() {
		return approvedDao.findApprovedAll();
	}

	@Override
	public List<Approved> findApprovedByUser(Map map) {
		return approvedDao.findApprovedByUser(map);
	}

	@Override
	public int findAllCount() {
		return approvedDao.findAllCount();
	}

	@Override
	public int findUserCount(String ApprovedPublishUserId) {
		return approvedDao.findUserCount(ApprovedPublishUserId);
	}

	@Override
	public List<Approved> findApprovedByAll(Map map) {
		return approvedDao.findApprovedByAll(map);
	}

	@Override
	public List<Approved> findTopTen() {
		return approvedDao.findTopTen();
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return approvedDao.findByParentUnitCount(map);
	}

	@Override
	public List<Approved> findByParentUnit(Map map) {
		return approvedDao.findByParentUnit(map);
	}

	@Override
	public int findProvinceCount(String inchargeMent) {
		return approvedDao.findProvinceCount(inchargeMent);
	}

	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<Approved> list = approvedDao.findByCount(map);
		if(list!=null){
			for(Approved l:list){
				map1.put(l.getApprovedProvince(), l.getNumCount());
			}
		}
		return map1;
	}


}
