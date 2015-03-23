package com.tjdzj.www.serviceImpl;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.DepartmentDao;
import com.tjdzj.www.model.Department;
import com.tjdzj.www.service.DepartmentService;

/*
 *@author作者 王晓磊
 */
public class DepartmentServiceImpl implements DepartmentService{
	
	DepartmentDao departmentDao;
	
	public DepartmentDao getDepartmentDao() {
		return departmentDao;
	}

	public void setDepartmentDao(DepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}

	@Override
	public void insertDepartment(Department department) {
		departmentDao.insertDepartment(department);		
	}

	@Override
	public void updateDepartment(Department department) {
		departmentDao.updateDepartment(department);		
	}

	@Override
	public void deleteDepartment(String departmentId) {
		departmentDao.deleteDepartment(departmentId);
	}

	@Override
	public List<Department> findAll(Map map) {
		return departmentDao.findAll(map);
	}

	@Override
	public int findAllCount() {
		return departmentDao.findAllCount();
	}

	@Override
	public Department findByUser(String userName) {
		return departmentDao.findByUser(userName);
	}

	@Override
	public Department findDepartmentByid(String departmentId) {
		return departmentDao.findDepartmentByid(departmentId);
	}

}
