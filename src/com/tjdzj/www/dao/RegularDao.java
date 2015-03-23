package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Regular;

/**
 * @author wangxiaolei
 *
 */
public  interface RegularDao {
	
	public  void insertRegular(Regular regular);

	public  void updateRegular(Regular regular);

	public  void deleteRegular(String regularId);

	public  Regular findRegularByid(String regularId);

	public  List<Regular> findRegularAll();
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String RegularPublishUserId);

	public  List<Regular> findRegularByUser(Map map);
	
	public  List<Regular> findByParentUnit(Map map);

	public  List<Regular> findRegularByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Regular> findTopTen();
	
	public  List<Regular> findByCount(Map map);
}
