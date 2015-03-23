package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Propaganda;

/**
 * @author wangxiaolei
 *
 */
public interface PropagandaService {

	public  void addPropaganda(Propaganda propaganda);

	public  void updatePropaganda(Propaganda propaganda);

	public  void deletePropaganda(String propagandaId);

	public  Propaganda findPropagandaById(String propagandaId);

	public  List<Propaganda> findAllPropaganda();
	
	public  List<Propaganda> findByParentUnit(Map map);

	public  List<Propaganda> findPropagandaByUser(Map map);

	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String propagandaPublishUserId);

	public  List<Propaganda> findPropagandaByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Propaganda> findTopTen();
	
	public  Map<String, Integer> findByCount(Map map);

}
