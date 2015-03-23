package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Propaganda;

/**
 * @author wangxiaolei
 *
 */
public interface PropagandaDao {

	public  void insertPropaganda(Propaganda propaganda);

	public  void updatePropaganda(Propaganda propaganda);

	public  void deletePropaganda(String propagandaId);

	public  Propaganda findPropagandaByid(String propagandaId);

	public  List<Propaganda> findPropagandaAll();

	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String propagandaPublishUserId);

	public  List<Propaganda> findPropagandaByUser(Map map);
	
	public  List<Propaganda> findByParentUnit(Map map);

	public  List<Propaganda> findPropagandaByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Propaganda> findTopTen();
	
	public  List<Propaganda> findByCount(Map map);

}
