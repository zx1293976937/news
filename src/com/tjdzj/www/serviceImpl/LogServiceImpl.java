package com.tjdzj.www.serviceImpl;

import java.util.List;

import com.tjdzj.www.dao.LogDao;
import com.tjdzj.www.model.LogEntity;
import com.tjdzj.www.service.LogService;

public class LogServiceImpl implements LogService {

	private LogDao logDao;
	
	public LogDao getLogDao() {
		return logDao;
	}

	public void setLogDao(LogDao logDao) {
		this.logDao = logDao;
	}

	@Override
	public LogEntity delete(String id) {
		return logDao.delete(Integer.parseInt(id));
	}

	@Override
	public LogEntity add(LogEntity log) {
		return logDao.add(log);
	}

	@Override
	public List<LogEntity> findAll() {
		return logDao.findAll();
	}

	@Override
	public List<LogEntity> findPagtion(String pageNumber, String pageSize) {
		return logDao.findPagtion(Integer.parseInt(pageNumber), Integer.parseInt(pageSize));
	}

}
