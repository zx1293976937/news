package com.tjdzj.www.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.TrainDao;
import com.tjdzj.www.model.Train;
import com.tjdzj.www.service.TrainService;

/**
 * @author wangxiaolei
 *
 */
public class TrainServiceImpl implements TrainService{
	 TrainDao trainDao;
	
	public TrainDao getTrainDao() {
		return trainDao;
	}

	public void setTrainDao(TrainDao trainDao) {
		this.trainDao = trainDao;
	}
	
	

	@Override
	public void addTrain(Train train) {
		trainDao.insertTrain(train);
	}

	@Override
	public void updateTrain(Train train) {
		trainDao.updateTrain(train);
		
	}

	@Override
	public void deleteTrain(String trainId) {
		trainDao.deleteTrain(trainId);
		
	}

	@Override
	public Train findTrainById(String trainId) {
		return trainDao.findTrainByid(trainId);
	}

	@Override
	public List<Train> findAllTrain() {
		return trainDao.findTrainAll();
	}

	@Override
	public List<Train> findTrainByUser(Map map) {
		return trainDao.findTrainByUser(map);
	}

	@Override
	public int findAllCount() {
		return trainDao.findAllCount();
	}

	@Override
	public int findUserCount(String trainPublishUserId) {
		return trainDao.findUserCount(trainPublishUserId);
	}

	@Override
	public List<Train> findTrainByAll(Map map) {
		return trainDao.findTrainByAll(map);
	}

	@Override
	public List<Train> findTopTen() {
		return trainDao.findTopTen();
	}

	@Override
	public List<Train> findByParentUnit(Map map) {
		return trainDao.findByParentUnit(map);
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return trainDao.findByParentUnitCount(map);
	}

	@Override
	public Map<String, Integer> findByCount(Map map) {
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		List<Train> list = trainDao.findByCount(map);
		if(list!=null){
			for(Train l:list){
				map1.put(l.getTrainProvince(), l.getNumCount());
			}
		}
		return map1;
	}


}
