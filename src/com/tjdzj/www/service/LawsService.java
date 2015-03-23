package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Laws;
import com.tjdzj.www.model.User;

/**
 * @author wangxiaolei
 *
 */
public interface LawsService {
	
	public  void addLaws(Laws laws);

	public  void updateLaws(Laws laws);

	public  void deleteLaws(String lawsId);

	public  Laws findLawsById(String lawsId);

	public  List<Laws> findAllLaws();
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String lawsPublishUserId);

	public  List<Laws> findLawsByUser(Map map);
	
	public  List<Laws> findByParentUnit(Map map);
	
	public  List<Laws> findLawsByAll(Map map);
	
	public  List<Laws> findTopTen();
	
	/*statistics*/
	
	public  int queryByCity(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  int queryByTime(Map map);
	public  Map<String, Integer> findByCount(Map map);
	/*statistics*/
}
