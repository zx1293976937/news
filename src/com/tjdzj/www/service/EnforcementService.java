package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Enforcement;

/**
 * @author wangxiaolei
 *
 */
public interface EnforcementService {

	public abstract void addEnforcement(Enforcement enforcement);

	public abstract void updateEnforcement(Enforcement enforcement);

	public abstract void deleteEnforcement(String enforcementId);

	public abstract Enforcement findEnforcementById(String enforcementId);

	public abstract List<Enforcement> findAllEnforcement();

	public abstract List<Enforcement> findEnforcementByUser(Map map);

	public abstract int findAllCount();
	
	public abstract int findByParentUnitCount(Map map);

	public abstract int findUserCount(String enforcementPublishUserId);
	
	public abstract List<Enforcement> findByParentUnit(Map map);

	public abstract List<Enforcement> findEnforcementByAll(Map map);
	
	public abstract List<Enforcement> findTopTen();
	
	public List<String> findEnforcement();

}
