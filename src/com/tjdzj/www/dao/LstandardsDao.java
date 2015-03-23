package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Lstandards;


/**
 * @author wangxiaolei
 *
 */
public interface LstandardsDao {
	
	public  void insertLstandards(Lstandards lstandards);

	public  void updateLstandards(Lstandards lstandards);

	public  void deleteLstandards(String lstandardsId);

	public  Lstandards findLstandardsByid(String lstandardsId);

	public  List<Lstandards> findLstandardsAll();
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String LstandardsPublishUserId);

	public  List<Lstandards> findLstandardsByUser(Map map);
	
	public  List<Lstandards> findByParentUnit(Map map);

	public  List<Lstandards> findLstandardsByAll(Map map);
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Lstandards> findTopTen();
	public  List<Lstandards> findByCount(Map map);
}
