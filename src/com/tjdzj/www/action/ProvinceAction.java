package com.tjdzj.www.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tjdzj.www.model.GlobalTools;
import com.tjdzj.www.model.Province;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.ProvinceService;

/*
 *@author作者 王晓磊
 */
public class ProvinceAction extends ActionSupport{
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession();
	private Province province;
	private User user;
	private ProvinceService provinceService;
	private List<Province> provinceList;
	private List<String> listProvince;
	int intRowCount;
	int pageNow;// 希望显示第几页
	int pageSize = 10;// 每页显示多少条记录
	int k;
	int pageCount;// 一共有多少页
	int i;
	private HashMap<Integer, String> rivilegeMap;
	
	
	
	public HashMap<Integer, String> getRivilegeMap() {
		return rivilegeMap;
	}
	public void setRivilegeMap(HashMap<Integer, String> rivilegeMap) {
		this.rivilegeMap = rivilegeMap;
	}
	public List<String> getListProvince() {
		return listProvince;
	}
	public void setListProvince(List<String> listProvince) {
		this.listProvince = listProvince;
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
	public List<Province> getProvinceList() {
		return provinceList;
	}
	public void setProvinceList(List<Province> provinceList) {
		this.provinceList = provinceList;
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
		provinceService.insertProvince(province);
		return "listProvinceUI";
	}

	public String update() {
		/*Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String currentDate = sdf.format(date);
		approved.setApprovedUTime(currentDate);*/
		provinceService.updateProvince(province);
		return "listProvinceUI";
	}

	public String delete() {
		provinceService.deleteProvince(province.getProvinceId());
		return "listProvinceUI";
	}
	
	public String queryAllProvince() {
		Map map = new HashMap();
		user = (User) session.get("loginUser");
		if (user.getPrivilege().equals("1")) {
			intRowCount = provinceService.findAllCount();
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
			provinceList =provinceService.findAll(map);
			map.clear();
			return "listprovince";
		}
		else if(user.getPrivilege().equals("2")){
			
			map.put("inchargeMent", user.getInchargeMent());
			intRowCount = provinceService.findByParentUnitCount(map);
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
			provinceList = provinceService.findByParentUnit(map);
			map.clear();
			return "listprovince";
		}else{
			map.put("inchargeMent", user.getInchargeMent());
			intRowCount = provinceService.findByPro(map).size();
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
			provinceList = provinceService.findByPro(map);
			map.clear();
			return "listprovince";
		}
	}

	public String addUI() {
		GlobalTools t = new GlobalTools();
		listProvince = provinceService.findProvince();
		rivilegeMap = t.getPowerAll(); 
		return "addProvince";
	}

	public String updateUI() {
		GlobalTools t = new GlobalTools();
		rivilegeMap = t.getPowerAll(); 
		listProvince = provinceService.findProvince();
		province = provinceService.findProvinceByid(province.getProvinceId());
		return "updateProvince";

	}
	
	
}

