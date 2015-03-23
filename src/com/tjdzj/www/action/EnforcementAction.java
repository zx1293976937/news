package com.tjdzj.www.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tjdzj.www.model.Enforcement;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.EnforcementService;

/**
 * @author wangxiaolei
 *
 */
public class EnforcementAction extends ActionSupport {
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession();
	private Enforcement enforcement;
	private EnforcementService enforcementService;
	private List<Enforcement> enforcementList;
	private User user;
	int intRowCount;
	int pageNow;// 希望显示第几页
	int pageSize = 10;// 每页显示多少条记录
	int k;
	int pageCount;// 一共有多少页
	int i;
	private String titleQuery;
	private String startTimeQuery;
	private String endTimeQuery;
	private String fpifyQuery;
	/* getter && setter */
	
	public String getFpifyQuery(){
		return fpifyQuery;
	}
	
	public void setFpifyQuery(String fpifyQuery) {
		this.fpifyQuery = fpifyQuery;
	}
	
	public String getTitleQuery() {
		return titleQuery;
	}

	public void setTitleQuery(String titleQuery) {
		this.titleQuery = titleQuery;
	}

	public String getStartTimeQuery() {
		return startTimeQuery;
	}

	public void setStartTimeQuery(String startTimeQuery) {
		this.startTimeQuery = startTimeQuery;
	}

	public String getEndTimeQuery() {
		return endTimeQuery;
	}

	public void setEndTimeQuery(String endTimeQuery) {
		this.endTimeQuery = endTimeQuery;
	}

	
	

	public Enforcement getEnforcement() {
		return enforcement;
	}

	public void setEnforcement(Enforcement enforcement) {
		this.enforcement = enforcement;
	}

	public EnforcementService getEnforcementService() {
		return enforcementService;
	}

	public void setEnforcementService(EnforcementService enforcementService) {
		this.enforcementService = enforcementService;
	}

	public List<Enforcement> getEnforcementList() {
		return enforcementList;
	}

	public void setEnforcementList(List<Enforcement> enforcementList) {
		this.enforcementList = enforcementList;
	}

	public int getIntRowCount() {
		return intRowCount;
	}

	public void setIntRowCount(int intRowCount) {
		this.intRowCount = intRowCount;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getK() {
		return k;
	}

	public void setK(int k) {
		this.k = k;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}

	
	
	public String add() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String currentDate = sdf.format(date);
		enforcement.setEnforcementUTime(currentDate);
		
			String tempTime;
		if(enforcement.getEnforcementInchargeBirthday() ==null ||enforcement.getEnforcementInchargeBirthday().isEmpty()){
			
		}else{
			tempTime = enforcement.getEnforcementInchargeBirthday();
			tempTime = tempTime.substring(0, 10);
			enforcement.setEnforcementInchargeBirthday(tempTime);
		}
		
		enforcementService.addEnforcement(enforcement);
		return "listenforcementUI";
	}

	public String update() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String currentDate = sdf.format(date);
//		enforcement.setEnforcementUTime(currentDate);
		enforcementService.updateEnforcement(enforcement);
		return "listenforcementUI";
	}

	public String delete() {
		enforcementService.deleteEnforcement(enforcement.getEnforcementId());
		return "listenforcementUI";
	}

	public String queryAllEnforcement() {
		Map map = new HashMap();
		user = (User) session.get("loginUser");
		/** suncc***/
		map.put("titleQuery", titleQuery);
		map.put("fpifyQuery", fpifyQuery);  //专兼职添加
		map.put("startTimeQuery", startTimeQuery);
		map.put("endTimeQuery", endTimeQuery);
		if (user.getPrivilege().equals("1")) {
			/** suncc***/
			enforcementList = enforcementService.findEnforcementByAll(map);
			intRowCount = enforcementList.size();
			//intRowCount = enforcementService.findAllCount();
			if (intRowCount > 0) {
				k = (intRowCount + pageSize - 1) / pageSize;
				pageCount = (intRowCount + pageSize - 1) / pageSize;// 计算出总页数
				if (pageNow < 1) {
					pageNow = 1;
				}
				if (pageNow > pageCount) {
					pageNow = pageCount;

				}
				i = (pageNow - 1) * pageSize;
			}
			map.put("intPageCount", i);
		/*	System.out.println("enforcementlist-----------"+enforcementList.size());
			
			for(int i=0;i<enforcementList.size();i++){
				System.out.println("jianzhime??"+enforcementList.get(i).getEnforcementFPTime());
			}*/
			map.put("pageSize", pageSize);
			//enforcementList = enforcementService.findEnforcementByAll(map);
			map.clear();
			return "listenforcement";
		}else if(user.getPrivilege().equals("2")){
			map.put("inchargeMent", user.getInchargeMent());
			/** suncc***/
			enforcementList = enforcementService.findByParentUnit(map);
			intRowCount = enforcementList.size();
			//intRowCount = enforcementService.findByParentUnitCount(map);
			//map.clear();
			if (intRowCount > 0) {
				k = (intRowCount + pageSize - 1) / pageSize;
				pageCount = (intRowCount + pageSize - 1) / pageSize;// 计算出总页数
				if (pageNow < 1) {
					pageNow = 1;
				}
				if (pageNow > pageCount) {
					pageNow = pageCount;

				}
				i = (pageNow - 1) * pageSize;
			}
			map.put("intPageCount", i);
			map.put("pageSize", pageSize);
			map.put("inchargeMent", user.getInchargeMent());
			enforcementList = enforcementService.findByParentUnit(map);
			map.clear();
			return "listenforcement";
		}else
		/** suncc***/
		enforcementList = enforcementService.findEnforcementByUser(map);
		intRowCount = enforcementList.size();
		//intRowCount = enforcementService.findUserCount(user.getUserId());
		if (intRowCount > 0) {
			k = (intRowCount + pageSize - 1) / pageSize;
			pageCount = (intRowCount + pageSize - 1) / pageSize;// 计算出总页数
			if (pageNow < 1) {
				pageNow = 1;
			}
			if (pageNow > pageCount) {
				pageNow = pageCount;

			}
			i = (pageNow - 1) * pageSize;
		}
		map.put("intPageCount", i);
		map.put("pageSize", pageSize);
		map.put("userId", user.getUserId());
		enforcementList = enforcementService.findEnforcementByUser(map);
		map.clear();
		return "listenforcement";

	}

	
	public String addUI() {

		return "addenforcement";
	}

	public String updateUI() {
		enforcement = enforcementService.findEnforcementById(enforcement.getEnforcementId());
		return "updateenforcement";

	}
	
	public String front() {
		enforcement = enforcementService.findEnforcementById(enforcement.getEnforcementId());
		return "front";

	}
	
	public String list()
	{
		Map map = new HashMap();
		intRowCount = enforcementService.findAllCount();
		if (intRowCount > 0) {
			k = (intRowCount + pageSize - 1) / pageSize;
			pageCount = (intRowCount + pageSize - 1) / pageSize;// 计算出总页数
			if (pageNow < 1) {
				pageNow = 1;
			}
			if (pageNow > pageCount) {
				pageNow = pageCount;

			}
			i = (pageNow - 1) * pageSize;
		}
		map.put("intPageCount", i);
		map.put("pageSize", pageSize);
		enforcementList = enforcementService.findEnforcementByAll(map);
		map.clear();
		return "enforcementfrontlist";
	}
}
