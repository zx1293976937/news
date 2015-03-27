package com.tjdzj.www.service;

import java.util.List;

import com.tjdzj.www.model.LogEntity;

public interface LogService {
	
	public LogEntity delete(String id);
	
	public LogEntity add(LogEntity log);
	
	public List<LogEntity> findAll();
	
	public List<LogEntity> findPagtion(String pageNumber,String pageSize);
	
}
