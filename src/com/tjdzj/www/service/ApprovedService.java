package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Approved;
import com.tjdzj.www.model.Approved;

/**
 * @author wangxiaolei
 *
 */
public interface ApprovedService {

	public  void addApproved(Approved approved);

	public  void updateApproved(Approved approved);

	public  void deleteApproved(String approvedId);

	public  Approved findApprovedById(String approvedId);

	public  List<Approved> findAllApproved();

	public  List<Approved> findApprovedByUser(Map map);

	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);

	public  int findUserCount(String ApprovedPublishUserId);

	public  List<Approved> findApprovedByAll(Map map);
	
	public  List<Approved> findByParentUnit(Map map);
	
	public  int findProvinceCount(String inchargeMent);
	
	public  List<Approved> findTopTen();
	
	public  Map<String, Integer> findByCount(Map map);

}
