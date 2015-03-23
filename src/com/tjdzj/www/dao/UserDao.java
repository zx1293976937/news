package com.tjdzj.www.dao;  

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.User;
  
/**
 * 接口的方法不需要public abstract
 * @author wangxiaolei
 *
 */
 public interface UserDao {  
    
	  void insertUser(User user);  
	  
      void updateUser(User user);  
  
      void deleteUser(String userId);  
  
      User findUserByid(String userId);  
  
      List<User> findAll();  
  
      User userLogin(User user); 
    
      User findByUserName(String username);
    
      int findAllCount();
      
      List<User> findAllUserMap(Map map);
    
      int findByParentUnitCount(String inchargeMent);
    
      List<User> findByInchargeMent(Map map);  
    
      List<User> findByParentUnit(Map map);
    
      List<String> findProvince();
      
      List<User> findByProName(String proName);
      
}  
