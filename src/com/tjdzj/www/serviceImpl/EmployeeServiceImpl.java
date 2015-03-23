package com.tjdzj.www.serviceImpl;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.EmployeeDao;
import com.tjdzj.www.model.Employee;
import com.tjdzj.www.service.EmployeeService;


/**
 * @author wangxiaolei
 *
 */
public class EmployeeServiceImpl implements EmployeeService{
	 
	EmployeeDao employeeDao;

	public EmployeeDao getEmployeeDao() {
		return employeeDao;
	}

	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}

	
	
	@Override
	public void addEmployee(Employee employee) {
		employeeDao.insertEmployee(employee);		
	}

	@Override
	public void updateEmployee(Employee employee) {
		employeeDao.updateEmployee(employee);		
	}

	@Override
	public void deleteEmployee(String employeeId) {
		employeeDao.deleteEmployee(employeeId);		
	}

	@Override
	public Employee findEmployeeById(String employeeId) {
		return employeeDao.findEmployeeByid(employeeId);
	}

	@Override
	public List<Employee> findAllEmployee() {
		return employeeDao.findEmployeeAll();
	}

	@Override
	public List<Employee> findEmployeeByUser(Map map) {
		return employeeDao.findEmployeeByUser(map);
	}

	@Override
	public int findAllCount() {
		return employeeDao.findAllCount();
	}

	@Override
	public int findUserCount(String employeePublishUserId) {
		return employeeDao.findUserCount(employeePublishUserId);
	}

	@Override
	public List<Employee> findEmployeeByAll(Map map) {
		return employeeDao.findEmployeeByAll(map);
	}

	@Override
	public List<Employee> findTopTen() {
		return employeeDao.findTopTen();
	}

	@Override
	public List<Employee> findByParentUnit(Map map) {
		return employeeDao.findByParentUnit(map);
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return employeeDao.findByParentUnitCount(map);
	}
	
	

}
