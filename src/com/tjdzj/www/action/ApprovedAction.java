package com.tjdzj.www.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tjdzj.www.model.Approved;
import com.tjdzj.www.model.Province;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.ApprovedService;
import com.tjdzj.www.service.ProvinceService;

/**
 * @author wangxiaolei
 *
 */
public class ApprovedAction  extends ActionSupport{
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession();
	private Approved approved;
	private ApprovedService approvedService;
	private List<Approved> approvedList;
	private User user;
	int intRowCount;
	int pageNow;// 希望显示第几页
	int pageSize = 10;// 每页显示多少条记录
	int k;
	int pageCount;// 一共有多少页
	int i;
	private String approvedid;
	
	private String titleQuery;
	private String startTimeQuery;
	private String endTimeQuery;
	private String provinceQuery;
	private ProvinceService provinceService;
	private List<String> provinceList;
	private int fieldQuery;
	private int orderQuery;
	private Integer yearsQuery;
	private List<Province> proList1;
	private List<Province> proList2;
	private List<Province> proList3;
	private int allCount;
	private Map<String,Integer> dataMap;
	private String classifyType;
	/* getter && setter */
	private String categoryAQuery;
	
	
	
	public String getCategoryAQuery() {
		return categoryAQuery;
	}

	public void setCategoryAQuery(String categoryAQuery) {
		this.categoryAQuery = categoryAQuery;
	}

	public int getFieldQuery() {
		return fieldQuery;
	}
	
	public String getClassifyType() {
		return classifyType;
	}

	public void setClassifyType(String classifyType) {
		this.classifyType = classifyType;
	}

	public Integer getYearsQuery() {
		return yearsQuery;
	}

	public void setYearsQuery(Integer yearsQuery) {
		this.yearsQuery = yearsQuery;
	}

	public List<Province> getProList1() {
		return proList1;
	}

	public void setProList1(List<Province> proList1) {
		this.proList1 = proList1;
	}

	public List<Province> getProList2() {
		return proList2;
	}

	public void setProList2(List<Province> proList2) {
		this.proList2 = proList2;
	}

	public List<Province> getProList3() {
		return proList3;
	}

	public void setProList3(List<Province> proList3) {
		this.proList3 = proList3;
	}

	public int getAllCount() {
		return allCount;
	}

	public void setAllCount(int allCount) {
		this.allCount = allCount;
	}

	public Map<String, Integer> getDataMap() {
		return dataMap;
	}

	public void setDataMap(Map<String, Integer> dataMap) {
		this.dataMap = dataMap;
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

	public String getApprovedid() {
		return approvedid;
	}

	public void setApprovedid(String approvedid) {
		this.approvedid = approvedid;
	}

	public Approved getApproved() {
		return approved;
	}

	public void setApproved(Approved approved) {
		this.approved = approved;
	}

	public ApprovedService getApprovedService() {
		return approvedService;
	}

	public void setApprovedService(ApprovedService approvedService) {
		this.approvedService = approvedService;
	}

	public List<Approved> getApprovedList() {
		return approvedList;
	}

	public void setApprovedList(List<Approved> approvedList) {
		this.approvedList = approvedList;
	}

	
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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
		approved.setApprovedUTime(currentDate);
		
		String tempTime;
		//获取制定时间子字符串
		if(approved.getApprovedSTime() ==null ||approved.getApprovedSTime().isEmpty()){

		}else{

			tempTime = approved.getApprovedSTime();
			tempTime = tempTime.substring(0, 10);
			approved.setApprovedSTime(tempTime);
		}
		//获取实施时间子字符串
		/*if(approved.getApprovedITime() ==null ||approved.getApprovedITime().isEmpty()){
	
		}else{
	
			tempTime = approved.getApprovedITime();
			tempTime = tempTime.substring(0, 10);
			approved.setApprovedITime(tempTime);
		}
		*/
		//获取失效时间子字符串
		if(approved.getApprovedETime() ==null ||approved.getApprovedETime().isEmpty()){
			
		}else{
			tempTime = approved.getApprovedETime();
			tempTime = tempTime.substring(0, 10);
			approved.setApprovedETime(tempTime);
		}
		
		
		
		approvedService.addApproved(approved);

		return "listapprovedUI";
	}

	public String update() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String currentDate = sdf.format(date);
//		approved.setApprovedUTime(currentDate);
		
				String tempTime;
		//获取制定时间子字符串
		if(approved.getApprovedSTime() ==null ||approved.getApprovedSTime().isEmpty()){

		}else{

			tempTime = approved.getApprovedSTime();
			tempTime = tempTime.substring(0, 10);
			approved.setApprovedSTime(tempTime);
		}
		//获取实施时间子字符串
		/*
		if(approved.getApprovedITime() ==null ||approved.getApprovedITime().isEmpty()){
	
		}else{
	
			tempTime = approved.getApprovedITime();
			tempTime = tempTime.substring(0, 10);
			approved.setApprovedITime(tempTime);
		}
		*/
		//获取失效时间子字符串
		if(approved.getApprovedETime() ==null ||approved.getApprovedETime().isEmpty()){
			
		}else{
			tempTime = approved.getApprovedETime();
			tempTime = tempTime.substring(0, 10);
			approved.setApprovedETime(tempTime);
		}
		
		
		approvedService.updateApproved(approved);
		return "listapprovedUI";
	}

	public String delete() {
		approvedService.deleteApproved(approved.getApprovedId());
		System.out.println(approved.getApprovedId());
		return "listapprovedUI";
	}
	
	public String queryTopTen()
	{
		approvedList = approvedService.findTopTen();
		return "listapproved";
	}

	public String queryAllApproved() {
		Map map = new HashMap();
		user = (User) session.get("loginUser");
		/** suncc***/
		map.put("titleQuery", titleQuery);
		map.put("categoryAQuery", categoryAQuery);
		map.put("startTimeQuery", startTimeQuery);
		map.put("endTimeQuery", endTimeQuery);
		map.put("fieldQuery", fieldQuery);
		map.put("orderQuery", orderQuery);
		if (user.getPrivilege().equals("1")) {
			/** suncc***/
			approvedList = approvedService.findApprovedByAll(map);
			intRowCount = approvedList.size();
			//intRowCount = approvedService.findAllCount();
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
			approvedList = approvedService.findApprovedByAll(map);
			map.clear();
			return "listapproved";
		}
		else if(user.getPrivilege().equals("2")){
			/** suncc***/
			map.put("inchargeMent", user.getInchargeMent());
			approvedList = approvedService.findByParentUnit(map);
			intRowCount = approvedList.size();
			//intRowCount = approvedService.findByParentUnitCount(map);
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
			map.put("inchargeMent",user.getInchargeMent());
			approvedList = approvedService.findByParentUnit(map);
			map.clear();
			return "listapproved";
		}else
		/** suncc***/
		approvedList = approvedService.findApprovedByUser(map);
		intRowCount = approvedList.size();
		//intRowCount = approvedService.findUserCount(user.getUserId());
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
		approvedList = approvedService.findApprovedByUser(map);
		map.clear();
		return "listapproved";

	}

	public String addUI() {

		return "addapproved";
	}

	public String updateUI() {
		approved = approvedService.findApprovedById(approved.getApprovedId());
		return "updateapproved";

	}
	public String front()
	{
		approved = approvedService.findApprovedById(approved.getApprovedId());
		return "front";
	}
	public String list()
	{
		Map map = new HashMap();
		/** suncc***/
		provinceList = provinceService.findProvince();
		map.put("provinceQuery", provinceQuery);
		map.put("titleQuery", titleQuery);
//		map.put("categoryAQuery", categoryAQuery);
		map.put("startTimeQuery", startTimeQuery);
		map.put("endTimeQuery", endTimeQuery);
		approvedList = approvedService.findApprovedByAll(map);
		intRowCount = approvedList.size();
		///intRowCount = approvedService.findAllCount();
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
		approvedList = approvedService.findApprovedByAll(map);
		map.clear();
		return "approvedfrontlist";
	}
	public String test(){
		/*System.out.println("**************");
		System.out.println(approved.getApprovedId());
		System.out.println("**************");*/
		System.out.println("**************");
		System.out.println(approvedid);
		System.out.println("**************");
		//approved = approvedService.findApprovedById(approved.getApprovedId());
		try {
			ServletActionContext.getResponse().getWriter().print(approved);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public String getCount(){
		user = (User) session.get("loginUser");
		Map map = new HashMap();
		Calendar c = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"));
		if(yearsQuery == null){
			yearsQuery = c.get(Calendar.YEAR);
		}
		/**********************获取当前登录人符合条件的数量*************************/
		map.put("yearsQuery",yearsQuery);
		if(classifyType!=null){
			try {
				classifyType = new String(classifyType.getBytes("ISO-8859-1"), "UTF-8");
				if(!classifyType.equals("all")){
					map.put("approvedCategoryB",classifyType);
				}
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		map.put("province",user.getInchargeMent());
		dataMap = new HashMap<String, Integer>();
		dataMap = approvedService.findByCount(map);
		int kk = 0;
		for(Map.Entry<String, Integer> m:dataMap.entrySet()){
			kk+=m.getValue();
		}
		/**********************end*************************/
		map.clear();
		map.put("yearsQuery",yearsQuery);
		if(classifyType!=null){
			if(!classifyType.equals("all")){
				map.put("approvedCategoryB",classifyType);
			}
		}
		dataMap = new HashMap<String, Integer>();
		dataMap = approvedService.findByCount(map);
		//
		Map map1 = new HashMap();
		if(user.getPrivilege().equals("1")){
			map1.put("privilege", 2);
			map1.put("inchargeMent", user.getInchargeMent());
			proList1 = provinceService.findProvinceByNum(map1);
			map1.clear();
			map1.put("privilege", 3);
			proList2 = provinceService.findProvinceByNum(map1);
			for(Province p1:proList1){
				if(dataMap.get(p1.getProvinceName())!=null){
					int i = dataMap.get(p1.getProvinceName());
					allCount +=i;
				}
			}
			for(Province p1:proList2){
				if(dataMap.get(p1.getProvinceName())!=null){
					int i = dataMap.get(p1.getProvinceName());
					allCount +=i;
				}
			}
			
		}
		if(user.getPrivilege().equals("2")){
			map1.put("privilege", 3);
			map1.put("inchargeMent", user.getInchargeMent());
			proList1 = provinceService.findProvinceByNum(map1);
			map1.clear();
			for(Province p1:proList1){
				if(dataMap.get(p1.getProvinceName())!=null){
					int i = dataMap.get(p1.getProvinceName());
					allCount +=i;
				}
			}
		}
		allCount+=kk;
		return "getCountSuccess";
	}
	
	
	public String downloadExcel(){
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		
		user = (User) session.get("loginUser");
		Map map = new HashMap();
		Calendar c = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"));
		if(yearsQuery == null){
			yearsQuery = c.get(Calendar.YEAR);
		}
		map.put("yearsQuery",yearsQuery);
		map.put("province",user.getInchargeMent());
		dataMap = new HashMap<String, Integer>();
		dataMap = approvedService.findByCount(map);
		int kk = 0;
		for(Map.Entry<String, Integer> m:dataMap.entrySet()){
			kk+=m.getValue();
		}
		map.clear();
		map.put("yearsQuery",yearsQuery);
		dataMap = new HashMap<String, Integer>();
		dataMap = approvedService.findByCount(map);
		//
		Map map1 = new HashMap();
		if(user.getPrivilege().equals("1")){
			map1.put("privilege", 2);
			map1.put("inchargeMent", user.getInchargeMent());
			proList1 = provinceService.findProvinceByNum(map1);
			map1.clear();
			map1.put("privilege", 3);
			proList2 = provinceService.findProvinceByNum(map1);
			for(Province p1:proList1){
				if(dataMap.get(p1.getProvinceName())!=null){
					int i = dataMap.get(p1.getProvinceName());
					allCount +=i;
				}
			}
			for(Province p1:proList2){
				if(dataMap.get(p1.getProvinceName())!=null){
					int i = dataMap.get(p1.getProvinceName());
					allCount +=i;
				}
			}
			
		}
		if(user.getPrivilege().equals("2")){
			map1.put("privilege", 3);
			map1.put("inchargeMent", user.getInchargeMent());
			proList1 = provinceService.findProvinceByNum(map1);
			map1.clear();
			for(Province p1:proList1){
				if(dataMap.get(p1.getProvinceName())!=null){
					int i = dataMap.get(p1.getProvinceName());
					allCount +=i;
				}
			}
		}
		allCount+=kk;
		
		dataMap.put("allCount", allCount);
		
		List<String> listName = new ArrayList<String>();
		listName.add("地震安全性评价");
		listName.add("个人资格核准");
		listName.add("单位资质许可");
		listName.add("观测环境保护");
		listName.add("其他");
		
		List<Map<String, Integer>> listMap = new ArrayList<Map<String,Integer>>();
		for(int i=0;i<listName.size();i++){
			Map mapName = new HashMap();
			mapName.put("approvedCategoryB",listName.get(i));
			mapName.put("yearsQuery",yearsQuery);
			Map<String, Integer> hm = new HashMap<String, Integer>();
			hm = approvedService.findByCount(mapName);
			listMap.add(hm);
		}
		
		
		String  title = "行政执法职权统计";
		PoiUtil p = new PoiUtil();
		HSSFWorkbook wb = p.getHSSFWorkbook(proList1, proList2, user, dataMap, title,listName,listMap,p.getHSSFWorkbookModel());
		try {
			p.downloadFile(request, response, wb, title+".xls");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
