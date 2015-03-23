package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Reconsiderationcase;

/**
 * @author wangxiaolei
 *
 */
public interface ReconsiderationcaseDao {
	
	public  void insertReconsiderationcase(Reconsiderationcase reconsiderationcase);

	public  void updateReconsiderationcase(Reconsiderationcase reconsiderationcase);

	public  void deleteReconsiderationcase(String reconsiderationcaseId);

	public  Reconsiderationcase findReconsiderationcaseByid(String reconsiderationcaseId);

	public  List<Reconsiderationcase> findReconsiderationcaseAll();
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String ReconsiderationcasePublishUserId);

	public  List<Reconsiderationcase> findReconsiderationcaseByUser(Map map);
	
	public  List<Reconsiderationcase> findByParentUnit(Map map);
	
	public  int findProvinceCount(String inchargeMent);

	public  List<Reconsiderationcase> findReconsiderationcaseByAll(Map map);
	
	public  List<Reconsiderationcase> findTopTen();
	
	public  List<Reconsiderationcase> findByCount(Map map);

}
