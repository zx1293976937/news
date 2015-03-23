package com.tjdzj.www.serviceImpl;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.PolicyDao;
import com.tjdzj.www.model.Policy;
import com.tjdzj.www.service.PolicyService;

/**
 * @author wangxiaolei
 *
 */
public class PolicyServiceImpl implements PolicyService{
	 PolicyDao policyDao;
	
	public PolicyDao getPolicyDao() {
		return policyDao;
	}

	public void setPolicyDao(PolicyDao policyDao) {
		this.policyDao = policyDao;
	}

	@Override
	public void addPolicy(Policy policy) {
		policyDao.insertPolicy(policy);
	}

	@Override
	public void updatePolicy(Policy policy) {
		policyDao.updatePolicy(policy);
		
	}

	@Override
	public void deletePolicy(String policyId) {
		policyDao.deletePolicy(policyId);
		
	}

	@Override
	public Policy findPolicyById(String policyId) {
		return policyDao.findPolicyByid(policyId);
	}

	@Override
	public List<Policy> findAllPolicy() {
		return policyDao.findPolicyAll();
	}

	@Override
	public List<Policy> findPolicyByUser(Map map) {
		return policyDao.findPolicyByUser(map);
	}

	@Override
	public int findAllCount() {
		return policyDao.findAllCount();
	}

	@Override
	public int findUserCount(String policyPublishUserId) {
		return policyDao.findUserCount(policyPublishUserId);
	}

	@Override
	public List<Policy> findPolicyByAll(Map map) {
		return policyDao.findPolicyByAll(map);
	}

	@Override
	public List<Policy> findTopTen() {
		return policyDao.findTopTen();
	}

	


}
