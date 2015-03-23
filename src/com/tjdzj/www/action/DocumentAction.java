package com.tjdzj.www.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tjdzj.www.model.Document;
import com.tjdzj.www.model.Province;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.DocumentService;
import com.tjdzj.www.service.ProvinceService;

/**
 * @author wangxiaolei
 *
 */
public class DocumentAction extends ActionSupport{
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession();
	private Document document;
	private DocumentService documentService;
	private List<Document> documentList;
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
	/* getter && setter */

	public Document getDocument() {
		return document;
	}

	public void setDocument(Document document) {
		this.document = document;
	}

	public DocumentService getDocumentService() {
		return documentService;
	}

	public void setDocumentService(DocumentService documentService) {
		this.documentService = documentService;
	}

	public List<Document> getDocumentList() {
		return documentList;
	}

	public void setDocumentList(List<Document> documentList) {
		this.documentList = documentList;
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
		document.setDocumentUTime(currentDate);
		
    String tempTime;
		//获取制定时间子字符串
		if(document.getDocumentSTime() ==null ||document.getDocumentSTime().isEmpty()){

		}else{

			tempTime = document.getDocumentSTime();
			tempTime = tempTime.substring(0, 10);
			document.setDocumentSTime(tempTime);
		}
		//获取实施时间子字符串
		
		if(document.getDocumentITime() ==null ||document.getDocumentITime().isEmpty()){
	
		}else{
	
			tempTime = document.getDocumentITime();
			tempTime = tempTime.substring(0, 10);
			document.setDocumentITime(tempTime);
		}
		
		//获取失效时间子字符串
//		if(document.getDocumentETime() ==null ||document.getDocumentETime().isEmpty()){
//			
//		}else{
//			tempTime = document.getDocumentETime();
//			tempTime = tempTime.substring(0, 10);
//			document.setDocumentETime(tempTime);
//		}
		
		documentService.addDocument(document);
		return "listdocumentUI";
	}

	public String update() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String currentDate = sdf.format(date);
//		document.setDocumentUTime(currentDate);
		
		    String tempTime;
		//获取制定时间子字符串
		if(document.getDocumentSTime() ==null ||document.getDocumentSTime().isEmpty()){

		}else{

			tempTime = document.getDocumentSTime();
			tempTime = tempTime.substring(0, 10);
			document.setDocumentSTime(tempTime);
		}
		//获取实施时间子字符串
		
		if(document.getDocumentITime() ==null ||document.getDocumentITime().isEmpty()){
	
		}else{
	
			tempTime = document.getDocumentITime();
			tempTime = tempTime.substring(0, 10);
			document.setDocumentITime(tempTime);
		}
		
		//获取失效时间子字符串
//		if(document.getDocumentETime() ==null ||document.getDocumentETime().isEmpty()){
//			
//		}else{
//			tempTime = document.getDocumentETime();
//			tempTime = tempTime.substring(0, 10);
//			document.setDocumentETime(tempTime);
//		}
				
		documentService.updateDocument(document);
		return "listdocumentUI";
	}

	public String delete() {
		documentService.deleteDocument(document.getDocumentId());
		System.out.println(document.getDocumentId());
		return "listdocumentUI";
	}

	public String queryAllDocument() {
		Map map = new HashMap();
		user = (User) session.get("loginUser");
		/** suncc***/
		map.put("titleQuery", titleQuery);
		map.put("fieldclassifyQuery", fieldclassifyQuery);
		map.put("startTimeQuery", startTimeQuery);
		map.put("endTimeQuery", endTimeQuery);
		map.put("fieldQuery", fieldQuery);
		map.put("orderQuery", orderQuery);
		if (user.getPrivilege().equals("1")) {
			/** suncc***/
			documentList = documentService.findDocumentByAll(map);
			intRowCount = documentList.size();
			//intRowCount = documentService.findAllCount();
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
			documentList = documentService.findDocumentByAll(map);
			return "listdocument";
		}else if(user.getPrivilege().equals("2")){
			map.put("inchargeMent", user.getInchargeMent());
			/** suncc***/
			documentList = documentService.findByParentUnit(map);
			intRowCount = documentList.size();
			//intRowCount = documentService.findByParentUnitCount(map);
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
			documentList = documentService.findByParentUnit(map);
			map.clear();
			return "listdocument";
		}
		/** suncc***/
		documentList = documentService.findDocumentByUser(map);
		intRowCount = documentList.size();
		//intRowCount = documentService.findUserCount(user.getUserId());
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
		documentList = documentService.findDocumentByUser(map);
		map.clear();
		return "listdocument";

	}

	public String addUI() {

		return "adddocument";
	}

	public String updateUI() {
		document = documentService.findDocumentById(document.getDocumentId());
		return "updatedocument";

	}
	public String front()
	{
		document = documentService.findDocumentById(document.getDocumentId());
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
		documentList = documentService.findDocumentByAll(map);
		intRowCount = documentList.size();
		//intRowCount = documentService.findAllCount();
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
		documentList = documentService.findDocumentByAll(map);
		map.clear();
		return "documentfrontlist";
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
		dataMap = documentService.findByCount(map);
		int kk = 0;
		for(Map.Entry<String, Integer> m:dataMap.entrySet()){
			kk+=m.getValue();
		}
		map.clear();
		map.put("yearsQuery",yearsQuery);
		dataMap = new HashMap<String, Integer>();
		dataMap = documentService.findByCount(map);
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
		dataMap = documentService.findByCount(map);
		int kk = 0;
		for(Map.Entry<String, Integer> m:dataMap.entrySet()){
			kk+=m.getValue();
		}
		map.clear();
		map.put("yearsQuery",yearsQuery);
		dataMap = new HashMap<String, Integer>();
		dataMap = documentService.findByCount(map);
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
		String  title = "规范性文件统计";
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
