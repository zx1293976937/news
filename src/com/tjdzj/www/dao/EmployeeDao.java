package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Document;
import com.tjdzj.www.model.Employee;

/**
 * @author wangxiaolei
 *
 */
public interface EmployeeDao {
	
	public abstract void insertEmployee(Employee employee);

	public abstract void updateEmployee(Employee employee);

	public abstract void deleteEmployee(String employeeId);

	public abstract Employee findEmployeeByid(String employeeId);

	public abstract List<Employee> findEmployeeAll();
	
	public abstract int findAllCount();

	public abstract int findByParentUnitCount(Map map);
	
	public abstract int findUserCount(String EmployeePublishUserId);

	public abstract List<Employee> findEmployeeByUser(Map map);
	
	public abstract List<Employee> findByParentUnit(Map map);

	public abstract List<Employee> findEmployeeByAll(Map map);
	
	public abstract List<Employee> findTopTen();

}
