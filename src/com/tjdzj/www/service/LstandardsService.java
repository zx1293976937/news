package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Laws;
import com.tjdzj.www.model.Lstandards;

/**
 * @author wangxiaolei
 *
 */
public interface LstandardsService {
	
	public  void addLstandards(Lstandards Lstandards);

	public  void updateLstandards(Lstandards Lstandards);

	public  void deleteLstandards(String lstandardsId);

	public  Lstandards findLstandardsById(String lstandardsId);

	public  List<Lstandards> findAllLstandards();
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String lstandardsPublishUserId);

	public  List<Lstandards> findLstandardsByUser(Map map);
	
	public  List<Lstandards> findByParentUnit(Map map);
	
	public  List<Lstandards> findLstandardsByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Lstandards> findTopTen();
	public  Map<String, Integer> findByCount(Map map);

}
