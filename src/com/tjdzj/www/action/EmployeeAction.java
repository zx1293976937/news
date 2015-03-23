package com.tjdzj.www.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tjdzj.www.model.Employee;
import com.tjdzj.www.model.Enforcement;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.EmployeeService;
import com.tjdzj.www.service.EnforcementService;
import com.tjdzj.www.service.EnforcementinspectService;

/**
 * @author wangxiaolei
 *
 */
public class EmployeeAction extends ActionSupport{
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession();
	private Employee employee;
	private EmployeeService employeeService;
	private List<Employee> employeeList;
	private User user;
	int intRowCount;
	int pageNow;// 希望显示第几页
	int pageSize = 10;// 每页显示多少条记录
	int k;
	int pageCount;// 一共有多少页
	int i;
	private Enforcement enforcement;
	private EnforcementService enforcementService;
	private List<String> enforcementList;
	
	private String titleQuery;
	private String startTimeQuery;
	private String endTimeQuery;
	private String fPTimeQuery;
	/* getter && setter */
	


	public String getFPTimeQuery() {
		return fPTimeQuery;
	}

	public void setFPTimeQuery(String timeQuery) {
		fPTimeQuery = timeQuery;
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


	

	public Employee getEmployee() {
		return employee;
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

	public List<String> getEnforcementList() {
		return enforcementList;
	}

	public void setEnforcementList(List<String> enforcementList) {
		this.enforcementList = enforcementList;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public EmployeeService getEmployeeService() {
		return employeeService;
	}

	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}

	public List<Employee> getEmployeeList() {
		return employeeList;
	}

	public void setEmployeeList(List<Employee> employeeList) {
		this.employeeList = employeeList;
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
		user = (User) session.get("loginUser");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String currentDate = sdf.format(date);
		employee.setEmployeeUTime(currentDate);
		employee.setEmployeeEnforcement(user.getInchargeMent());
		
				String tempTime;
		//获取制定时间子字符串
		/*if(employee.getEmployeeSTime() ==null ||employee.getEmployeeSTime().isEmpty()){

		}else{

			tempTime = employee.getEmployeeSTime();
			tempTime = tempTime.substring(0, 10);
			employee.setEmployeeSTime(tempTime);
		}
		*/
		//获取实施时间子字符串
		if(employee.getEmployeeIssuedTime() ==null ||employee.getEmployeeIssuedTime().isEmpty()){
	
		}else{
	
			tempTime = employee.getEmployeeIssuedTime();
			tempTime = tempTime.substring(0, 10);
			employee.setEmployeeIssuedTime(tempTime);
		}
		
		//获取失效时间子字符串
		/*if(employee.getEmployeeETime() ==null ||employee.getEmployeeETime().isEmpty()){
			
		}else{
			tempTime = employee.getEmployeeETime();
			tempTime = tempTime.substring(0, 10);
			employee.setEmployeeETime(tempTime);
		}*/
		if(employee.getEmployeeBirthday() ==null ||employee.getEmployeeBirthday().isEmpty()){
			
		}else{
			tempTime = employee.getEmployeeBirthday();
			tempTime = tempTime.substring(0, 10);
			employee.setEmployeeBirthday(tempTime);
		}
		
		
		employeeService.addEmployee(employee);
		return "listemployeeUI";
	}
	
	public String update() {
		user = (User) session.get("loginUser");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String currentDate = sdf.format(date);
	//	employee.setEmployeeUTime(currentDate);
		employee.setEmployeeEnforcement(user.getInchargeMent());
		
			String tempTime;
		//获取制定时间子字符串
		/*if(employee.getEmployeeSTime() ==null ||employee.getEmployeeSTime().isEmpty()){

		}else{

			tempTime = employee.getEmployeeSTime();
			tempTime = tempTime.substring(0, 10);
			employee.setEmployeeSTime(tempTime);
		}
		*/
		//获取实施时间子字符串
		if(employee.getEmployeeIssuedTime() ==null ||employee.getEmployeeIssuedTime().isEmpty()){
	
		}else{
	
			tempTime = employee.getEmployeeIssuedTime();
			tempTime = tempTime.substring(0, 10);
			employee.setEmployeeIssuedTime(tempTime);
		}
		
		//获取失效时间子字符串
		/*if(employee.getEmployeeETime() ==null ||employee.getEmployeeETime().isEmpty()){
			
		}else{
			tempTime = employee.getEmployeeETime();
			tempTime = tempTime.substring(0, 10);
			employee.setEmployeeETime(tempTime);
		}*/
		if(employee.getEmployeeBirthday() ==null ||employee.getEmployeeBirthday().isEmpty()){
			
		}else{
			tempTime = employee.getEmployeeBirthday();
			tempTime = tempTime.substring(0, 10);
			employee.setEmployeeBirthday(tempTime);
		}
		
		employeeService.updateEmployee(employee);
		return "listemployeeUI";
	}

	public String delete() {
		employeeService.deleteEmployee(employee.getEmployeeId());
		return "listemployeeUI";
	}

public String queryAllEmployee() {
		user = (User) session.get("loginUser");
		Map map = new HashMap();
		/** suncc***/
		map.put("titleQuery", titleQuery);
		map.put("fPTimeQuery", fPTimeQuery);	
		map.put("startTimeQuery", startTimeQuery);
		map.put("endTimeQuery", endTimeQuery);
		if (user.getPrivilege().equals("1")) {
			/** suncc***/
			employeeList = employeeService.findEmployeeByAll(map);
			intRowCount = employeeList.size();
			//intRowCount = employeeService.findAllCount();
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
			employeeList = employeeService.findEmployeeByAll(map);
			map.clear();
			return "listemployee";
		}else if(user.getPrivilege().equals("2")){
			
			map.put("inchargeMent", user.getInchargeMent());
			/** suncc***/
			employeeList = employeeService.findByParentUnit(map);
			intRowCount = employeeList.size();
			//intRowCount = employeeService.findByParentUnitCount(map);
			//map.clear();
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
			employeeList = employeeService.findByParentUnit(map);
			map.clear();
			return "listemployee";
		}
		/** suncc***/
		employeeList = employeeService.findEmployeeByUser(map);
		intRowCount = employeeList.size();
		//intRowCount = employeeService.findUserCount(user.getUserId());
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
		employeeList = employeeService.findEmployeeByUser(map);
		map.clear();
		return "listemployee";

	}
	

	public String addUI() {
		enforcementList = enforcementService.findEnforcement();
		return "addemployee";
	}

	public String updateUI() {
		enforcementList = enforcementService.findEnforcement();
		employee =employeeService.findEmployeeById(employee.getEmployeeId());
		return "updateemployee";

	}
	
	public String front() {
		employee =employeeService.findEmployeeById(employee.getEmployeeId());
		return "front";

	}
}
