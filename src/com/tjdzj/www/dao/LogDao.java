package com.tjdzj.www.dao;

import java.util.List;

import com.tjdzj.www.model.LogEntity;

public interface LogDao {
	public LogEntity update(LogEntity log);
	
	public LogEntity delete(LogEntity log);
	
	public LogEntity add(LogEntity log);
	
	public List<LogEntity> findAll();
	
	public List<LogEntity> findPagtion(String pageSize,String pageCount);
}
