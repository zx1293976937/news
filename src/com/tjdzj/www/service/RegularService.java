package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Laws;
import com.tjdzj.www.model.Regular;


/**
 * @author wangxiaolei
 *
 */
public interface RegularService {
	
	public  void addRegular(Regular regular);

	public  void updateRegular(Regular regular);

	public  void deleteRegular(String regularId);

	public  Regular findRegularById(String regularId);

	public  List<Regular> findAllRegular();
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String regularPublishUserId);

	public  List<Regular> findRegularByUser(Map map);
	
	public  List<Regular> findByParentUnit(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Regular> findRegularByAll(Map map);
	
	public  List<Regular> findTopTen();
	
	public  Map<String, Integer> findByCount(Map map);
}
