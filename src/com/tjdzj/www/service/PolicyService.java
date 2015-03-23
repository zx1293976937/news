package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Penaltycase;
import com.tjdzj.www.model.Policy;

/**
 * @author wangxiaolei
 *
 */
public interface PolicyService {

	public abstract void addPolicy(Policy policy);

	public abstract void updatePolicy(Policy policy);

	public abstract void deletePolicy(String policyId);

	public abstract Policy findPolicyById(String policyId);

	public abstract List<Policy> findAllPolicy();

	public abstract List<Policy> findPolicyByUser(Map map);

	public abstract int findAllCount();

	public abstract int findUserCount(String policyPublishUserId);

	public abstract List<Policy> findPolicyByAll(Map map);
	
	public abstract List<Policy> findTopTen();

}
