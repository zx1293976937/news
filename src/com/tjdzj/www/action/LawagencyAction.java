package com.tjdzj.www.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tjdzj.www.model.Document;
import com.tjdzj.www.model.Lawagency;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.LawagencyService;
import com.tjdzj.www.service.ProvinceService;

/**
 * @author wangxiaolei
 *
 */
public class LawagencyAction extends ActionSupport{
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession(); 
	private Lawagency lawagency;
	private LawagencyService lawagencyService;
	private List<Lawagency> lawagencyList;
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
	private String provinceQuery;
	private ProvinceService provinceService;
	private List<String> provinceList;
	private int fieldQuery;
	private int orderQuery;
	
	/* getter && setter */
	
	public int getFieldQuery() {
		return fieldQuery;
	}

	public void setFieldQuery(int fieldQuery) {
		this.fieldQuery = fieldQuery;
	}

	public int getOrderQuery() {
		return orderQuery;
	}

	public void setOrderQuery(int orderQuery) {
		this.orderQuery = orderQuery;
	}
	
	public List<String> getProvinceList() {
		return provinceList;
	}

	public void setProvinceList(List<String> provinceList) {
		this.provinceList = provinceList;
	}

	public ProvinceService getProvinceService() {
		return provinceService;
	}

	public void setProvinceService(ProvinceService provinceService) {
		this.provinceService = provinceService;
	}

	public String getProvinceQuery() {
		return provinceQuery;
	}

	public void setProvinceQuery(String provinceQuery) {
		this.provinceQuery = provinceQuery;
	}
	/* getter && setter */
	
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

	public Lawagency getLawagency() {
		return lawagency;
	}

	public void setLawagency(Lawagency lawagency) {
		this.lawagency = lawagency;
	}

	public LawagencyService getLawagencyService() {
		return lawagencyService;
	}

	public void setLawagencyService(LawagencyService lawagencyService) {
		this.lawagencyService = lawagencyService;
	}

	public List<Lawagency> getLawagencyList() {
		return lawagencyList;
	}

	public void setLawagencyList(List<Lawagency> lawagencyList) {
		this.lawagencyList = lawagencyList;
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
		lawagency.setLawagencyUTime(currentDate);
		
		String tempTime;
		//获取制定时间子字符串
		if(lawagency.getLawagencyInchargeBirthday() ==null ||lawagency.getLawagencyInchargeBirthday().isEmpty()){

		}else{

			tempTime = lawagency.getLawagencyInchargeBirthday();
			tempTime = tempTime.substring(0, 10);
			lawagency.setLawagencyInchargeBirthday(tempTime);
		}
		
		
		lawagencyService.addLawagency(lawagency);
		return "listlawagencyUI";
	}

	public String update() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String currentDate = sdf.format(date);
	//	lawagency.setLawagencyUTime(currentDate);
		
				String tempTime;
		//获取制定时间子字符串
		if(lawagency.getLawagencyInchargeBirthday() ==null ||lawagency.getLawagencyInchargeBirthday().isEmpty()){

		}else{

			tempTime = lawagency.getLawagencyInchargeBirthday();
			tempTime = tempTime.substring(0, 10);
			lawagency.setLawagencyInchargeBirthday(tempTime);
		}
		
		
		
		lawagencyService.updateLawagency(lawagency);
		return "listlawagencyUI";
	}
	
	public String delete() {
		lawagencyService.deleteLawagency(lawagency.getLawagencyId());
		return "listlawagencyUI";
	}

	
	public String queryAllLawagency() {
		
		user = (User) session.get("loginUser");
		Map map = new HashMap();
		/** suncc***/
		map.put("titleQuery", titleQuery);
		map.put("startTimeQuery", startTimeQuery);
		map.put("endTimeQuery", endTimeQuery);
		map.put("fieldQuery", fieldQuery);
		map.put("orderQuery", orderQuery);
		if (user.getPrivilege().equals("1")) {
			/** suncc***/
			lawagencyList = lawagencyService.findLawagencyByAll(map);
			intRowCount = lawagencyList.size();
			//intRowCount = lawagencyService.findAllCount();
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
			lawagencyList = lawagencyService.findLawagencyByAll(map);
			map.clear();
			return "listlawagency";
		}else if(user.getPrivilege().equals("2")){
			map.put("inchargeMent", user.getInchargeMent());
			/** suncc***/
			lawagencyList = lawagencyService.findByParentUnit(map);
			intRowCount = lawagencyList.size();
			//intRowCount = lawagencyService.findByParentUnitCount(map);
			map.clear();
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
			map.put("inchargeMent",user.getInchargeMent());
			lawagencyList = lawagencyService.findByParentUnit(map);
			map.clear();
			return "listlawagency";
		}
		/** suncc***/
		lawagencyList = lawagencyService.findLawagencyByUser(map);
		intRowCount = lawagencyList.size();
		//intRowCount = lawagencyService.findUserCount(user.getUserId());
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
		lawagencyList = lawagencyService.findLawagencyByUser(map);
		map.clear();
		return "listlawagency";

	}
	
	public String addUI() {
		
		return "addlawagency";
	}
	public String updateUI() {
		lawagency = lawagencyService.findLawagencyById(lawagency.getLawagencyId());
		return "updatelawagency";
		
	}
	public String front()
	{
		lawagency = lawagencyService.findLawagencyById(lawagency.getLawagencyId());
		return "front";
	}
	public String list()
	{
		Map map = new HashMap();
		/** suncc***/
		provinceList = provinceService.findProvince();
		map.put("provinceQuery", provinceQuery);
		map.put("titleQuery", titleQuery);
		map.put("startTimeQuery", startTimeQuery);
		map.put("endTimeQuery", endTimeQuery);
		lawagencyList = lawagencyService.findLawagencyByAll(map);
		intRowCount = lawagencyList.size();
		//intRowCount = lawagencyService.findAllCount();
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
		lawagencyList = lawagencyService.findLawagencyByAll(map);
		map.clear();
		return "lawagencyfrontlist";
	}
}
