package com.tjdzj.www.model;

import java.util.HashMap;

public class GlobalTools {
	
	/**
	 * 权限
	 * @param userRivilege -- 登陆人权限
	 * @return
	 */
	public HashMap<Integer , String> getPowerByUserRivilege(int userRivilege) {
		HashMap<Integer, String> rivilegeMap = new HashMap<Integer, String>();
		if(userRivilege<2){
			rivilegeMap.put(1, "国家级");
		}
		if(userRivilege<3){
			rivilegeMap.put(2, "省级");
		}
		rivilegeMap.put(3, "地市级");
		return rivilegeMap;
	}
	
	/**
	 * 权限
	 * @return rivilegeMap
	 */
	public HashMap<Integer , String> getPowerAll() {
		HashMap<Integer, String> rivilegeMap = new HashMap<Integer, String>();
		rivilegeMap.put(1, "国家级");
		rivilegeMap.put(2, "省级");
		rivilegeMap.put(3, "地市级");
		return rivilegeMap;
	}
	
	/**
	 * 审批推送到前台展示项
	 * @return
	 */
	public HashMap<Integer, String> getReleaseAll(){
		HashMap<Integer, String> releaseMap = new HashMap<Integer, String>();
		releaseMap.put(1, "法律");
		releaseMap.put(2, "行政法规");
		releaseMap.put(3, "部门规章");
		releaseMap.put(4, "地方性法规");
		releaseMap.put(5, "地方政府规章");
		releaseMap.put(6, "最新资讯");
		releaseMap.put(7, "地方动态");
		releaseMap.put(8, "行政执法");
		return releaseMap;
	}
	
	/**
	 * 审批推送到前台展示项
	 * @return
	 */
	public HashMap<String, Integer> getReleaseByVal(){
		HashMap<String, Integer> releaseMap = new HashMap<String, Integer>();
		releaseMap.put("法律",1);
		releaseMap.put("行政法规", 2);
		releaseMap.put("部门规章", 3);
		releaseMap.put("地方性法规",4);
		releaseMap.put("地方政府规章",5);
		releaseMap.put("最新资讯",6);
		releaseMap.put("地方动态",7);
		releaseMap.put("行政执法",8);
		return releaseMap;
	}
	
	public HashMap<Integer, String> getApprovedAll(){
		HashMap<Integer, String> approvedMap = new HashMap<Integer, String>();
		approvedMap.put(1, "未审批");
		approvedMap.put(2, "已审批");
		approvedMap.put(3, "全部");
		return approvedMap;
	}
}
