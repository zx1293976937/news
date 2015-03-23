package com.tjdzj.www.serviceImpl;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.UserDao;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.UserService;

public class UserServiceImpl implements UserService{
	
	UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void addUser(User user) {
		userDao.insertUser(user);		
	}

	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);		
	}

	@Override
	public void deleteUser(String userId) {
		userDao.deleteUser(userId);		
	}

	@Override
	public User findUserById(String userId) {
		return userDao.findUserByid(userId);
	}

	@Override
	public List<User> findAllUser() {
		return userDao.findAll();
	}

	@Override
	public int findAllCount() {
		return userDao.findAllCount();
	}

	@Override
	public int findByParentUnitCount(String inchargeMent) {
		return userDao.findByParentUnitCount(inchargeMent);
	}

	@Override
	public User login(User user) {
		return userDao.userLogin(user);
	}

	@Override
	public User isUserNameNull(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findByUserName(String userName) {
		return userDao.findByUserName(userName);
	}

	@Override
	public List<User> findByInchargeMent(Map map) {
		return userDao.findByInchargeMent(map);
	}

	@Override
	public List<User> findByParentUnit(Map map) {
		return userDao.findByParentUnit(map);
	}

	@Override
	public List<String> findProvince() {
		return userDao.findProvince();
	}

	@Override
	public List<User> findByProName(String proName) {
		return userDao.findByProName(proName);
	}

	

}
