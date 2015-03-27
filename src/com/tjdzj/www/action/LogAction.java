package com.tjdzj.www.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import net.minidev.json.JSONObject;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tjdzj.www.model.LogEntity;
import com.tjdzj.www.service.LogService;

public class LogAction extends ActionSupport{
	
	/**
	 * 日志Action
	 * author xiangxiang zhang
	 */
	private static final long serialVersionUID = 1L;
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession();
	private LogEntity log;
	private String pageSize;
	private String pageNumer;
	private LogService logServiceImpl;
	//删除时使用的id
	private String id;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public LogService getLogServiceImpl() {
		return logServiceImpl;
	}
	public void setLogServiceImpl(LogService logServiceImpl) {
		this.logServiceImpl = logServiceImpl;
	}
	public String getPageSize() {
		return pageSize;
	}
	public void setPageSize(String pageSize) {
		this.pageSize = pageSize;
	}
	public String getPageNumer() {
		return pageNumer;
	}
	public void setPageNumer(String pageNumer) {
		this.pageNumer = pageNumer;
	}
	public LogEntity getLog() {
		return log;
	}
	public void setLog(LogEntity log) {
		this.log = log;
	}
	
	//添加日志信息
	public String add(){
		logServiceImpl.add(log);
		return null;
	}
	//删除日志信息
	public String delete(){
		 logServiceImpl.delete(id);
		 return null;
	}
	//查询所有日志信息
	public String findAll(){
		List<LogEntity> logList=new ArrayList<LogEntity>();
		logList=logServiceImpl.findAll();
		session.put("data", logList);
		return null;
	}
	//分页查询日志信息
	public String findByPage(){
		List<LogEntity> logList=new ArrayList<LogEntity>();
		logList=logServiceImpl.findAll();
		session.put("data", logList);
		return null;
	}
	
	public JSONObject FmtResult(boolean success,String msg,Object data)
	{
		JSONObject obj = new JSONObject();
		obj.put("success", success);
		obj.put("msg", msg);
		obj.put("data", data);
		return obj;
	}
	
}
