package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Approved;
import com.tjdzj.www.model.Department;

/**
 * @author wangxiaolei
 *
 */
public interface DepartmentDao {

	public  void insertDepartment(Department department);

	public  void updateDepartment(Department department);

	public  void deleteDepartment(String departmentId);

	public  List<Department> findAll(Map map);

	public  int findAllCount();
	
	public  Department findDepartmentByid(String departmentId);
	
	public Department findByUser(String userName);

}
