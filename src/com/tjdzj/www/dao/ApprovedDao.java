package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Approved;

/**
 * @author wangxiaolei
 *
 */
public interface ApprovedDao {

	public  void insertApproved(Approved approved);

	public  void updateApproved(Approved approved);

	public  void deleteApproved(String approvedId);

	public  Approved findApprovedByid(String approvedId);

	public  List<Approved> findApprovedAll();

	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String ApprovedPublishUserId);

	public  List<Approved> findApprovedByUser(Map map);
	
	public  List<Approved> findByParentUnit(Map map);

	public  List<Approved> findApprovedByAll(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Approved> findTopTen();
	
	public  List<Approved> findByCount(Map map);

}
