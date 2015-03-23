package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Policy;

/**
 * @author wangxiaolei
 *
 */
public interface PolicyDao {

	public abstract void insertPolicy(Policy policy);

	public abstract void updatePolicy(Policy policy);

	public abstract void deletePolicy(String policyId);

	public abstract Policy findPolicyByid(String policyId);

	public abstract List<Policy> findPolicyAll();

	public abstract int findAllCount();

	public abstract int findUserCount(String policyPublishUserId);

	public abstract List<Policy> findPolicyByUser(Map map);

	public abstract List<Policy> findPolicyByAll(Map map);
	
	public abstract List<Policy> findTopTen();

}
