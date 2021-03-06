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
import com.tjdzj.www.model.Laws;
import com.tjdzj.www.model.Province;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.LawsService;
import com.tjdzj.www.service.ProvinceService;

/**
 * @author wangxiaolei
 *
 */
public class LawsAction extends ActionSupport{
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession();
	private Laws laws;
	private LawsService lawsService;
	private List<Laws> lawsList;
	private User user;
	int intRowCount;
	int pageNow;// 希望显示第几页
	int pageSize = 10;// 每页显示多少条记录
	int k;
	int pageCount;// 一共有多少页
	int i;
	private Province province;
	private ProvinceService provinceService;
	private List<String> provinceList;
	private String titleQuery;
	private String startTimeQuery;
	private String endTimeQuery;
	private String provinceQuery;
	private int fieldQuery;
	private int orderQuery;
	private Integer yearsQuery;
	private List<Province> proList1;
	private List<Province> proList2;
	private List<Province> proList3;
	private int allCount;
	private Map<String,Integer> dataMap;
	
	private String fieldclassifyQuery;
	/* getter && setter */
	public String getFieldclassifyQuery() {
		return fieldclassifyQuery;
	}


	public void setFieldclassifyQuery(String fieldclassifyQuery) {
		this.fieldclassifyQuery = fieldclassifyQuery;
	}
	
	public Integer getYearsQuery() {
		return yearsQuery;
	}


	public void setYearsQuery(Integer yearsQuery) {
		this.yearsQuery = yearsQuery;
	}

	public int getFieldQuery() {
		return fieldQuery;
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


	public Map<String, Integer> getDataMap() {
		return dataMap;
	}

	public void setDataMap(Map<String, Integer> dataMap) {
		this.dataMap = dataMap;
	}

	public int getAllCount() {
		return allCount;
	}

	public void setAllCount(int allCount) {
		this.allCount = allCount;
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

	public String getProvinceQuery() {
		return provinceQuery;
	}

	public void setProvinceQuery(String provinceQuery) {
		this.provinceQuery = provinceQuery;
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

	public Laws getLaws() {
		return laws;
	}

	public Province getProvince() {
		return province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	public ProvinceService getProvinceService() {
		return provinceService;
	}

	public void setProvinceService(ProvinceService provinceService) {
		this.provinceService = provinceService;
	}

	

	public List<String> getProvinceList() {
		return provinceList;
	}

	public void setProvinceList(List<String> provinceList) {
		this.provinceList = provinceList;
	}

	public void setLaws(Laws laws) {
		this.laws = laws;
	}

	public LawsService getLawsService() {
		return lawsService;
	}

	public void setLawsService(LawsService lawsService) {
		this.lawsService = lawsService;
	}

	public List<Laws> getLawsList() {
		return lawsList;
	}

	public void setLawsList(List<Laws> lawsList) {
		this.lawsList = lawsList;
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
		laws.setLawsUTime(currentDate);
		String temp = laws.getLawsProvince();
		String temp1 = provinceService.findByProvince(temp);
		laws.setLawsDepartmentId(temp1);
		System.out.println(temp1);
		String tempTime;
		//获取制定时间子字符串
		if(laws.getLawsSTime() ==null ||laws.getLawsSTime().isEmpty()){

		}else{

			tempTime = laws.getLawsSTime();
			tempTime = tempTime.substring(0, 10);
			laws.setLawsSTime(tempTime);
		}
		//获取实施时间子字符串
		if(laws.getLawsITime() ==null ||laws.getLawsITime().isEmpty()){
	
		}else{
	
			tempTime = laws.getLawsITime();
			tempTime = tempTime.substring(0, 10);
			laws.setLawsITime(tempTime);
		}
		
		//获取失效时间子字符串
//		if(laws.getLawsETime() ==null ||laws.getLawsETime().isEmpty()){
//			
//		}else{
//			tempTime = laws.getLawsETime();
//			tempTime = tempTime.substring(0, 10);
//			laws.setLawsETime(tempTime);
//		}
		
		lawsService.addLaws(laws);
		return "listlawsUI";
	}

	public String update() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String currentDate = sdf.format(date);
//		laws.setLawsUTime(currentDate); //修改不更新操作时间
		String temp = laws.getLawsProvince();
		String temp1 = provinceService.findByProvince(temp);
		laws.setLawsDepartmentId(temp1);
		String tempTime;
		//获取制定时间子字符串
		if(laws.getLawsSTime() ==null ||laws.getLawsSTime().isEmpty()){

		}else{

			tempTime = laws.getLawsSTime();
			tempTime = tempTime.substring(0, 10);
			laws.setLawsSTime(tempTime);
		}
		//获取实施时间子字符串
		if(laws.getLawsITime() ==null ||laws.getLawsITime().isEmpty()){
	
		}else{
	
			tempTime = laws.getLawsITime();
			tempTime = tempTime.substring(0, 10);
			laws.setLawsITime(tempTime);
		}
		
		//获取失效时间子字符串
//		if(laws.getLawsETime() ==null ||laws.getLawsETime().isEmpty()){
//			
//		}else{
//			tempTime = laws.getLawsETime();
//			tempTime = tempTime.substring(0, 10);
//			laws.setLawsETime(tempTime);
//		}
		
		
		
		lawsService.updateLaws(laws);
		return "listlawsUI";
	}

	public String delete() {
		lawsService.deleteLaws(laws.getLawsId());
		return "listlawsUI";
	}

	public String queryAllLaws() {
		Map map = new HashMap();
		user = (User) session.get("loginUser");
		/** suncc***/
		map.put("titleQuery", titleQuery);
		map.put("fieldclassifyQuery", fieldclassifyQuery);
		map.put("startTimeQuery", startTimeQuery);
		map.put("endTimeQuery", endTimeQuery);
		map.put("fieldQuery", fieldQuery);
		map.put("orderQuery", orderQuery);
		lawsList = lawsService.findLawsByAll(map);
		if (user.getPrivilege().equals("1")) {
			/** suncc***/
			intRowCount = lawsList.size();
			//intRowCount = lawsService.findAllCount();
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
			lawsList = lawsService.findLawsByAll(map);
			map.clear();
			return "listlaws";
		}
		else if(user.getPrivilege().equals("2")){
			
			map.put("inchargeMent", user.getInchargeMent());
			/** suncc***/
			lawsList = lawsService.findByParentUnit(map);
			intRowCount = lawsList.size();
			//intRowCount = lawsService.findByParentUnitCount(map);
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
			lawsList = lawsService.findByParentUnit(map);
			map.clear();
			return "listlaws";
		}else
		/** suncc***/
		map.put("userId", user.getUserId());
		lawsList = lawsService.findLawsByUser(map);	
		intRowCount = lawsList.size();
		//intRowCount = lawsService.findUserCount(user.getUserId());
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
		/** suncc***/
		//map.put("userId", user.getUserId());
		lawsList = lawsService.findLawsByUser(map);
		map.clear();
		return "listlaws";

	}
	
	public String addUI() {
		provinceList = provinceService.findProvince();
		return "addlaws";
	}

	public String updateUI() {
		laws = lawsService.findLawsById(laws.getLawsId());
		provinceList = provinceService.findProvince();
		return "updatelaws";

	}
	public String front()
	{
		
		laws = lawsService.findLawsById(laws.getLawsId());
		return "front";
	}
	/*statistics*/
	public String query()
	{
		String city = ((String[])act.getContext().getParameters().get("city"))[0];
		Map map = new HashMap();
		map.put("city", city);
		int count = lawsService.queryByCity(map);
		System.out.println(city);
		return "error";
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
		lawsList = lawsService.findLawsByAll(map);
		intRowCount = lawsList.size();
		//intRowCount = lawsService.findAllCount();
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
		lawsList = lawsService.findLawsByAll(map);
		map.clear();
		return "lawsfrontlist";
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
		dataMap = lawsService.findByCount(map);
		int kk = 0;
		for(Map.Entry<String, Integer> m:dataMap.entrySet()){
			kk+=m.getValue();
		}
		map.clear();
		map.put("yearsQuery",yearsQuery);
		dataMap = new HashMap<String, Integer>();
		dataMap = lawsService.findByCount(map);
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
		dataMap = lawsService.findByCount(map);
		int kk = 0;
		for(Map.Entry<String, Integer> m:dataMap.entrySet()){
			kk+=m.getValue();
		}
		map.clear();
		map.put("yearsQuery",yearsQuery);
		dataMap = new HashMap<String, Integer>();
		dataMap = lawsService.findByCount(map);
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
		String  title = "地方性法规统计";
		PoiUtil p = new PoiUtil();
		HSSFWorkbook wb = p.getHSSFWorkbook(proList1, proList2, user, dataMap, title, p.getHSSFWorkbookModel());
		try {
			p.downloadFile(request, response, wb, title+".xls");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	/*statistics*/
}
