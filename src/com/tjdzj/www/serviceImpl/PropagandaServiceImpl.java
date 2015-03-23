package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.PropagandaDao;
import com.tjdzj.www.model.Propaganda;
import com.tjdzj.www.service.PropagandaService;

/**
 * @author wangxiaolei
 *
 */
public class PropagandaServiceImpl implements PropagandaService{
	 PropagandaDao propagandaDao;
	

	
	
	
	public PropagandaDao getPropagandaDao() {
		return propagandaDao;
	}

	public void setPropagandaDao(PropagandaDao propagandaDao) {
		this.propagandaDao = propagandaDao;
	}

	@Override
	public void addPropaganda(Propaganda propaganda) {
		propagandaDao.insertPropaganda(propaganda);
	}

	@Override
	public void updatePropaganda(Propaganda propaganda) {
		propagandaDao.updatePropaganda(propaganda);
		
	}

	@Override
	public void deletePropaganda(String propagandaId) {
		propagandaDao.deletePropaganda(propagandaId);
		
	}

	@Override
	public Propaganda findPropagandaById(String propagandaId) {
		return propagandaDao.findPropagandaByid(propagandaId);
	}

	@Override
	public List<Propaganda> findAllPropaganda() {
		return propagandaDao.findPropagandaAll();
	}

	@Override
	public List<Propaganda> findPropagandaByUser(Map map) {
		return propagandaDao.findPropagandaByUser(map);
	}

	@Override
	public int findAllCount() {
		return propagandaDao.findAllCount();
	}

	@Override
	public int findUserCount(String propagandaPublishUserId) {
		return propagandaDao.findUserCount(propagandaPublishUserId);
	}

	@Override
	public List<Propaganda> findPropagandaByAll(Map map) {
		return propagandaDao.findPropagandaByAll(map);
	}

	@Override
	public List<Propaganda> findTopTen() {
		return propagandaDao.findTopTen();
	}

	@Override
	public List<Propaganda> findByParentUnit(Map map) {
		return propagandaDao.findByParentUnit(map);
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return propagandaDao.findByParentUnitCount(map);
	}

	@Override
	public int findProvinceCount(String inchargeMent) {
		return propagandaDao.findProvinceCount(inchargeMent);
	}
	
	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<Propaganda> list = propagandaDao.findByCount(map);
		if(list!=null){
			for(Propaganda l:list){
				map1.put(l.getPropagandaProvince(), l.getNumCount());
			}
		}
		return map1;
	}
	


}
