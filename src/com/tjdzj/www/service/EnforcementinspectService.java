package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Enforcementinspect;

/**
 * @author wangxiaolei
 *
 */
public interface EnforcementinspectService {

	public  void insertEnforcementinspect(Enforcementinspect enforcementinspect);

	public  void updateEnforcementinspect(Enforcementinspect enforcementinspect);

	public  void deleteEnforcementinspect(String enforcementinspectId);

	public  Enforcementinspect findEnforcementinspectByid(String enforcementinspectId);

	public  List<Enforcementinspect> findEnforcementinspectAll();
	
	public  int findAllCount();

	public  int findByParentUnitCount(Map map);
	
	public  int findUserCount(String EnforcementinspectPublishUserId);

	public  List<Enforcementinspect> findEnforcementinspectByUser(Map map);
	
	public  List<Enforcementinspect> findByParentUnit(Map map);

	public  List<Enforcementinspect> findEnforcementinspectByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Enforcementinspect> findTopTen();
	
	public  Map<String, Integer> findByCount(Map map);

}
