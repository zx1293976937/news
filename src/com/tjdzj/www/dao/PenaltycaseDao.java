package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Penaltycase;

/**
 * @author wangxiaolei
 *
 */
public interface PenaltycaseDao {
	
	public  void insertpenaltycase(Penaltycase penaltycase);

	public  void updatepenaltycase(Penaltycase penaltycase);

	public  void deletepenaltycase(String penaltycaseId);

	public  Penaltycase findpenaltycaseByid(String penaltycaseId);

	public  List<Penaltycase> findpenaltycaseAll();
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String PenaltycaseUserId);

	public  List<Penaltycase> findPenaltycaseByUser(Map map);
	
	public  List<Penaltycase> findByParentUnit(Map map);

	public  List<Penaltycase> findPenaltycaseByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Penaltycase> findTopTen();
	
	public  List<Penaltycase> findByCount(Map map);

}
