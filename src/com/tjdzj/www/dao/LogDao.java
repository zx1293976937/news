package com.tjdzj.www.dao;

import java.util.List;

import com.tjdzj.www.model.LogEntity;

public interface LogDao {
	
	public LogEntity delete(int id);
	
	public LogEntity add(LogEntity log);
	
	public List<LogEntity> findAll();
	
	public List<LogEntity> findPagtion(int pageNumber,int pageSize);
}
