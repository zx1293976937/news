package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.NewsDao;
import com.tjdzj.www.model.News;
import com.tjdzj.www.service.NewsService;

/**
 * @author wangxiaolei
 *
 */
public class NewsServiceImpl implements NewsService{
	
	NewsDao newsDao;
	
	

	public NewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}
	
	

	@Override
	public void addNews(News news) {
		newsDao.insertNews(news);		
	}

	@Override
	public void updateNews(News news) {
		newsDao.updateNews(news);		
	}

	@Override
	public void deleteNews(String newsId) {
		newsDao.deleteNews(newsId);		
	}

	@Override
	public News findNewsById(String newsId) {
		return newsDao.findNewsByid(newsId);
	}

	@Override
	public List<News> findAllNews() {
		return newsDao.findAllNews();
	}

	@Override
	public int findAllCount() {
		return newsDao.findAllCount();
	}

	@Override
	public List<News> findNewsByNum(int intPageCount) {
		return newsDao.findNewsByNum(intPageCount);
	}

	@Override
	public List<News> findNewsByUser(Map map) {
		/*Map map = new HashMap();
		map.put("userId", userId);
		map.put("intPageCount", intPageCount);*/
		return newsDao.findNewsByUser(map);
	}

	@Override
	public int findUserCount(String newsPublishUserId) {
		return newsDao.findUserCount(newsPublishUserId);
	}

	@Override
	public List<News> findNewsByAll(Map map) {
		return newsDao.findNewsByAll(map);
	}

	@Override
	public List<News> findTopTen() {
		return newsDao.findTopTen();
	}

	@Override
	public List<News> findByParentUnit(Map map) {
		return newsDao.findByParentUnit(map);
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return newsDao.findByParentUnitCount(map);
	}


	@Override
	public Map<String, Integer> findNewsByCountMap(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<News> list = newsDao.findNewsByCount(map);
		if(list!=null){
			for(News n:list){
				map1.put(n.getNewsProvince(), n.getNumCount());
			}
		}
		return map1;
	}
	
	@Override
	public List<News> findNewsByApprove(Map map) {
		return newsDao.findNewsByApprove(map);
	}
	
	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<News> list = newsDao.findByCount(map);
		if(list!=null){
			for(News l:list){
				map1.put(l.getNewsProvince(), l.getNumCount());
			}
		}
		return map1;
	}

}
