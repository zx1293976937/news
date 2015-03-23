package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Laws;
import com.tjdzj.www.model.User;

/**
 * @author wangxiaolei
 *
 */
public interface LawsDao {
	
	public  void insertLaws(Laws laws);

	public  void updateLaws(Laws laws);

	public  void deleteLaws(String lawsId);

	public  Laws findLawsByid(String lawsId);

	public  List<Laws> findAllLaws();
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String LawsPublishUserId);

	public  List<Laws> findLawsByUser(Map map);
	
	public  List<Laws> findByParentUnit(Map map);

	public  List<Laws> findLawsByAll(Map map);
	
	public  List<Laws> findTopTen();
	
	/*statistics*/
	
	public  int queryByCity(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  int queryByTime(Map map);
	
	public  List<Laws> findByCount(Map map);
	/*statistics*/
}
