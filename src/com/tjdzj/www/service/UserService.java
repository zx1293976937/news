package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.User;

/**
 * @author wangxiaolei
 *
 */
public interface UserService {
	
	
	
	 void addUser(User user);

	 void updateUser(User user);

	 void deleteUser(String userId);

	 User findUserById(String userId);

	 List<User> findAllUser();
	
	 int findAllCount();
	
	 int findByParentUnitCount(String inchargeMent);

	 User login(User user);

	 User isUserNameNull(String userId);
	
	 User findByUserName(String userName);
	
	 List<User> findByInchargeMent(Map map); 
	
	 List<User> findByParentUnit(Map map);
	
	 List<String> findProvince();
	 
	 List<User> findByProName(String proName);
	 

}
