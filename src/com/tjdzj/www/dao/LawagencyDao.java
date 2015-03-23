package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Lawagency;

/**
 * @author wangxiaolei
 *
 */
public  interface LawagencyDao {
	
	public abstract void insertLawagency(Lawagency lawagency);

	public abstract void updateLawagency(Lawagency lawagency);

	public abstract void deleteLawagency(String lawagencyId);

	public abstract Lawagency findLawagencyByid(String lawagencyId);

	public abstract List<Lawagency> findLawagencyAll();
	
	public abstract int findAllCount();
	
	public abstract int findByParentUnitCount(Map map);

	public abstract int findUserCount(String lawagencyPublishUserId);

	public abstract List<Lawagency> findLawagencyByUser(Map map);
	
	public abstract List<Lawagency> findByParentUnit(Map map);

	public abstract List<Lawagency> findLawagencyByAll(Map map);
	
	public abstract List<Lawagency> findTopTen();
}
