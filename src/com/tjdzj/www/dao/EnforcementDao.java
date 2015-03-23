package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Enforcement;

/**
 * @author wangxiaolei
 *
 */
public interface EnforcementDao {

	public  void insertEnforcement(Enforcement enforcement);

	public  void updateEnforcement(Enforcement enforcement);

	public  void deleteEnforcement(String enforcementId);

	public  Enforcement findEnforcementByid(String enforcementId);

	public  List<Enforcement> findEnforcementAll();

	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String enforcementPublishUserId);

	public  List<Enforcement> findEnforcementByUser(Map map);
	
	public  List<Enforcement> findByParentUnit(Map map);

	public  List<Enforcement> findEnforcementByAll(Map map);
	
	public  List<Enforcement> findTopTen();

	public List<String> findEnforcement();
}
