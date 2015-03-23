package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Department;

/*
 *@author作者 王晓磊
 */
public interface DepartmentService {
	
	public  void insertDepartment(Department department);

	public  void updateDepartment(Department department);

	public  void deleteDepartment(String departmentId);

	public  List<Department> findAll(Map map);

	public  int findAllCount();
	
	public  Department findDepartmentByid(String departmentId);
	
	public Department findByUser(String userName);
}
