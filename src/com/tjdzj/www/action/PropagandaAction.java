package com.tjdzj.www.action;

import java.text.SimpleDateFormat;
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
import com.tjdzj.www.model.Propaganda;
import com.tjdzj.www.model.Province;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.PropagandaService;
import com.tjdzj.www.service.ProvinceService;

/**
 * @author wangxiaolei
 *
 */
public class PropagandaAction extends ActionSupport{
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession();
	private Propaganda propaganda;
	private PropagandaService propagandaService;
	private List<Propaganda> propagandaList;
	private User user;
	int intRowCount;
	int pageNow;// 希望显示第几页
	int pageSize = 10;// 每页显示多少条记录
	int k;
	int pageCount;// 一共有多少页
	int i;
	private String[] listRange;
	private String[] list = {"广播","报纸","电视","微博","网站","科普馆","公益广告"};
	
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
	/* getter && setter */
	private String peopleQuery;//受众人数查询
	
	
	
	public String getPeopleQuery() {
		return peopleQuery;
	}

	public void setPeopleQuery(String peopleQuery) {
		this.peopleQuery = peopleQuery;
	}

	public int getFieldQuery() {
		return fieldQuery;
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
	
	public String[] getList() {
		return list;
	}

	public void setList(String[] list) {
		this.list = list;
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

	public User getUser() {
		return user;
	}

	

	public String[] getListRange() {
		return listRange;
	}



	public void setListRange(String[] listRange) {
		this.listRange = listRange;
	}



	public Propaganda getPropaganda() {
		return propaganda;
	}

	public void setPropaganda(Propaganda propaganda) {
		this.propaganda = propaganda;
	}

	public PropagandaService getPropagandaService() {
		return propagandaService;
	}

	public void setPropagandaService(PropagandaService propagandaService) {
		this.propagandaService = propagandaService;
	}

	public List<Propaganda> getPropagandaList() {
		return propagandaList;
	}

	public void setPropagandaList(List<Propaganda> propagandaList) {
		this.propagandaList = propagandaList;
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
		propaganda.setPropagandaUTime(currentDate);
		
		
		String tempTime;
		//获取制定时间子字符串
		if(propaganda.getPropagandaSTime() ==null ||propaganda.getPropagandaSTime().isEmpty()){

		}else{

			tempTime = propaganda.getPropagandaSTime();
			tempTime = tempTime.substring(0, 10);
			propaganda.setPropagandaSTime(tempTime);
		}

		
		//获取失效时间子字符串
		if(propaganda.getPropagandaETime() ==null ||propaganda.getPropagandaETime().isEmpty()){
			
		}else{
			tempTime = propaganda.getPropagandaETime();
			tempTime = tempTime.substring(0, 10);
			propaganda.setPropagandaETime(tempTime);
		}
		
		
		propagandaService.addPropaganda(propaganda);
		return "listpropagandaUI";
	}

	public String update() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String currentDate = sdf.format(date);
//		propaganda.setPropagandaUTime(currentDate);
		
				String tempTime;
		//获取制定时间子字符串
		if(propaganda.getPropagandaSTime() ==null ||propaganda.getPropagandaSTime().isEmpty()){

		}else{

			tempTime = propaganda.getPropagandaSTime();
			tempTime = tempTime.substring(0, 10);
			propaganda.setPropagandaSTime(tempTime);
		}

		
		//获取失效时间子字符串
		if(propaganda.getPropagandaETime() ==null ||propaganda.getPropagandaETime().isEmpty()){
			
		}else{
			tempTime = propaganda.getPropagandaETime();
			tempTime = tempTime.substring(0, 10);
			propaganda.setPropagandaETime(tempTime);
		}
		
		propagandaService.updatePropaganda(propaganda);
		return "listpropagandaUI";
	}

	public String delete() {
		propagandaService.deletePropaganda(propaganda.getPropagandaId());
		return "listpropagandaUI";
	}

	public String queryAllPropaganda() {
		Map map = new HashMap();
		user = (User) session.get("loginUser");
		/** suncc***/
		map.put("titleQuery", titleQuery);
		map.put("peopleQuery", peopleQuery);	
		map.put("startTimeQuery", startTimeQuery);
		map.put("endTimeQuery", endTimeQuery);
		map.put("fieldQuery", fieldQuery);
		map.put("orderQuery", orderQuery);
		if (user.getPrivilege().equals("1")) {
			/** suncc***/
			propagandaList = propagandaService.findPropagandaByAll(map);
			intRowCount = propagandaList.size();
			//intRowCount = propagandaService.findAllCount();
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
			propagandaList = propagandaService.findPropagandaByAll(map);
			return "listpropaganda";
		} else if (user.getPrivilege().equals("2")) {
			map.put("inchargeMent", user.getInchargeMent());
			/** suncc***/
			propagandaList = propagandaService.findByParentUnit(map);
			intRowCount = propagandaList.size();
			//intRowCount = propagandaService.findByParentUnitCount(map);
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
			propagandaList = propagandaService.findByParentUnit(map);
			map.clear();
			return "listpropaganda";
		}
		/** suncc***/
		propagandaList = propagandaService.findPropagandaByUser(map);
		intRowCount = propagandaList.size();
		//intRowCount = propagandaService.findUserCount(user.getUserId());
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
		propagandaList = propagandaService.findPropagandaByUser(map);
		map.clear();
		return "listpropaganda";

	}

	public String addUI() {

		return "addpropaganda";
	}

	public String updateUI() {
		propaganda = propagandaService.findPropagandaById(propaganda
				.getPropagandaId());
		listRange = propaganda.getPropagandaRange().split(",");
		for(int i = 0;i<listRange.length;i++){
			listRange[i] = listRange[i].trim();
		}
		return "updatepropaganda";

	}

	public String front() {
		propaganda = propagandaService.findPropagandaById(propaganda
				.getPropagandaId());
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
		propagandaList = propagandaService.findPropagandaByAll(map);
		intRowCount = propagandaList.size();
		//intRowCount = propagandaService.findAllCount();
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
		propagandaList = propagandaService.findPropagandaByAll(map);
		map.clear();
		return "propagandafrontlist";
	}
	
	public String getCount(){
		user = (User) session.get("loginUser");
		Map map = new HashMap();
		Calendar c = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"));
		if(yearsQuery == null){
			yearsQuery = c.get(Calendar.YEAR);
		}
		map.put("yearsQuery",yearsQuery);
		map.put("province",user.getInchargeMent());
		dataMap = new HashMap<String, Integer>();
		dataMap = propagandaService.findByCount(map);
		int kk = 0;
		for(Map.Entry<String, Integer> m:dataMap.entrySet()){
			kk+=m.getValue();
		}
		map.clear();
		map.put("yearsQuery",yearsQuery);
		dataMap = new HashMap<String, Integer>();
		dataMap = propagandaService.findByCount(map);
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
		dataMap = propagandaService.findByCount(map);
		int kk = 0;
		for(Map.Entry<String, Integer> m:dataMap.entrySet()){
			kk+=m.getValue();
		}
		map.clear();
		map.put("yearsQuery",yearsQuery);
		dataMap = new HashMap<String, Integer>();
		dataMap = propagandaService.findByCount(map);
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
		String  title = "法制宣传统计";
		PoiUtil p = new PoiUtil();
		HSSFWorkbook wb = p.getHSSFWorkbook(proList1, proList2, user, dataMap, title, p.getHSSFWorkbookModel());
		try {
			p.downloadFile(request, response, wb, title+".xls");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
}
