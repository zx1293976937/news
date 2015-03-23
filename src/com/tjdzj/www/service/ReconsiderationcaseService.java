package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Reconsiderationcase;
import com.tjdzj.www.model.Regular;

/**
 * @author wangxiaolei
 *
 */
public interface ReconsiderationcaseService {
	
	public  void addReconsiderationcase(Reconsiderationcase reconsiderationcase);

	public  void updateReconsiderationcase(Reconsiderationcase reconsiderationcase);

	public  void deleteReconsiderationcase(String reconsiderationcaseId);

	public  Reconsiderationcase findReconsiderationcaseById(String reconsiderationcaseId);

	public  List<Reconsiderationcase> findAllReconsiderationcase();
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String reconsiderationcasePublishUserId);

	public  List<Reconsiderationcase> findReconsiderationcaseByUser(Map map);
	
	public  List<Reconsiderationcase> findByParentUnit(Map map);
	
	public  List<Reconsiderationcase> findReconsiderationcaseByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Reconsiderationcase> findTopTen();
	
	public  Map<String, Integer> findByCount(Map map);
	
}
