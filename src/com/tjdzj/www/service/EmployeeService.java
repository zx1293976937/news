package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Document;
import com.tjdzj.www.model.Employee;

/**
 * @author wangxiaolei
 *
 */
public interface EmployeeService {
	
	public abstract void addEmployee(Employee employee);

	public abstract void updateEmployee(Employee employee);

	public abstract void deleteEmployee(String employeeId);

	public abstract Employee findEmployeeById(String employeeId);

	public abstract List<Employee> findAllEmployee();
	
	public abstract List<Employee> findByParentUnit(Map map);
	
	public abstract List<Employee> findEmployeeByUser(Map map);

	public abstract int findAllCount();
	
	public abstract int findByParentUnitCount(Map map);

	public abstract int findUserCount(String employeePublishUserId);

	public abstract List<Employee> findEmployeeByAll(Map map);
	
	public abstract List<Employee> findTopTen();

}
