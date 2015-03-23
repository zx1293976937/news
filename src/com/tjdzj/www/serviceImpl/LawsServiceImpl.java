package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.LawsDao;
import com.tjdzj.www.model.Laws;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.LawsService;

/**
 * @author wangxiaolei
 *
 */
public class LawsServiceImpl implements LawsService {
	LawsDao lawsDao;

	public LawsDao getLawsDao() {
		return lawsDao;
	}

	public void setLawsDao(LawsDao lawsDao) {
		this.lawsDao = lawsDao;
	}

	@Override
	public void addLaws(Laws laws) {
		lawsDao.insertLaws(laws);
	}

	@Override
	public void updateLaws(Laws laws) {
		lawsDao.updateLaws(laws);

	}

	@Override
	public void deleteLaws(String lawsId) {
		lawsDao.deleteLaws(lawsId);

	}

	@Override
	public Laws findLawsById(String lawsId) {
		return lawsDao.findLawsByid(lawsId);
	}

	@Override
	public List<Laws> findAllLaws() {
		return lawsDao.findAllLaws();
	}

	@Override
	public int findAllCount() {
		return lawsDao.findAllCount();
	}

	@Override
	public int findUserCount(String lawsPublishUserId) {
		return lawsDao.findUserCount(lawsPublishUserId);
	}

	@Override
	public List<Laws> findLawsByUser(Map map) {
		return lawsDao.findLawsByUser(map);
	}

	@Override
	public List<Laws> findLawsByAll(Map map) {
		return lawsDao.findLawsByAll(map);
	}

	@Override
	public List<Laws> findTopTen() {
		return lawsDao.findTopTen();
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return lawsDao.findByParentUnitCount(map);
	}

	@Override
	public List<Laws> findByParentUnit(Map map) {
		return lawsDao.findByParentUnit(map);
	}

	/*statistics*/
	
	@Override
	public int queryByCity(Map map) {
		return lawsDao.queryByCity(map);
	}

	@Override
	public int queryByTime(Map map) {
		return lawsDao.queryByTime(map);
	}

	@Override
	public int findProvinceCount(String inchargeMent) {
		return lawsDao.findProvinceCount(inchargeMent);
	}

	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<Laws> list = lawsDao.findByCount(map);
		if(list!=null){
			for(Laws l:list){
				map1.put(l.getLawsProvince(), l.getNumCount());
			}
		}
		return map1;
	}

	/*statistics*/
}
