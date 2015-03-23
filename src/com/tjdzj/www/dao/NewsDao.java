package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.News;

/**
 * @author wangxiaolei
 *
 */
public  interface NewsDao {
	
	public  void insertNews(News news);

	public  void updateNews(News news);

	public  void deleteNews(String newsId);

	public  News findNewsByid(String newsId);

	public  List<News> findAllNews();
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);
	
	public  int findUserCount(String newsPublishUserId);
	
	public  List<News> findNewsByNum(int intPageCount);
	
	public  List<News> findByParentUnit(Map map);
	
	public  List<News> findNewsByUser(Map map);
	
	public  List<News> findNewsByAll(Map map);
	
	public  List<News> findTopTen();
	
	public 	List<News> findNewsByCount(Map map);
	
	public  List<News> findNewsByApprove(Map map);
	
	public  List<News> findByCount(Map map);
}
