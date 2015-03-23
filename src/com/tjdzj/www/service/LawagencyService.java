package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Lawagency;


/**
 * @author wangxiaolei
 *
 */
public interface LawagencyService {
	
	public abstract void addLawagency(Lawagency lawagency);

	public abstract void updateLawagency(Lawagency lawagency);

	public abstract void deleteLawagency(String lawagencyId);

	public abstract Lawagency findLawagencyById(String lawagencyId);

	public abstract List<Lawagency> findAllLawagency();
	
	public abstract int findAllCount();
	
	public abstract int findByParentUnitCount(Map map);

	public abstract int findUserCount(String lawagencyPublishUserId);

	public abstract List<Lawagency> findLawagencyByUser(Map map);
	
	public abstract List<Lawagency> findByParentUnit(Map map);
	
	public abstract List<Lawagency> findLawagencyByAll(Map map);
	
	public abstract List<Lawagency> findTopTen();
}
