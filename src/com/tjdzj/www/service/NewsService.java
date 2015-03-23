package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Lstandards;
import com.tjdzj.www.model.News;

/**
 * @author wangxiaolei
 *
 */
public interface NewsService {
	
	public  void addNews(News news);

	public  void updateNews(News news);

	public  void deleteNews(String newsId);

	public  News findNewsById(String newsId);

	public  List<News> findAllNews();
	
	public  List<News> findNewsByNum(int intPageCount);
	
	public  List<News> findByParentUnit(Map map);
	
	public  List<News> findNewsByUser(Map map);
	
	public  int findAllCount();
	
	public  int findByParentUnitCount(Map map);
	
	public  int findUserCount(String newsPublishUserId);
	
	public  List<News> findNewsByAll(Map map);
	
	public  List<News> findTopTen();
	
	public 	Map<String,Integer> findNewsByCountMap(Map map);
	
	public  List<News> findNewsByApprove(Map map);
	
	public  Map<String, Integer> findByCount(Map map);
}
