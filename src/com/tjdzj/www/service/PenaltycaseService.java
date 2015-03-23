package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Penaltycase;
import com.tjdzj.www.model.Regular;

/**
 * @author wangxiaolei
 *
 */
public interface PenaltycaseService {
	
	public  void addPenaltycase(Penaltycase penaltycase);

	public  void updatePenaltycase(Penaltycase penaltycase);

	public  void deletePenaltycase(String penaltycaseId);

	public  Penaltycase findPenaltycaseById(String penaltycaseId);

	public  List<Penaltycase> findAllPenaltycase();
	
	public  int findAllCount();//改5处
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String penaltycasePublishUserId);

	public  List<Penaltycase> findPenaltycaseByUser(Map map);
	
	public  List<Penaltycase> findByParentUnit(Map map);
	
	public  List<Penaltycase> findPenaltycaseByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Penaltycase> findTopTen();
	
	public  Map<String, Integer> findByCount(Map map);
}
