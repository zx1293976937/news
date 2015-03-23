package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Train;

/**
 * @author wangxiaolei
 *
 */
public interface TrainDao {

	public abstract void insertTrain(Train train);

	public abstract void updateTrain(Train train);

	public abstract void deleteTrain(String trainId);

	public abstract Train findTrainByid(String trainId);

	public abstract List<Train> findTrainAll();

	public abstract int findAllCount();
	
	public abstract int findByParentUnitCount(Map map);

	public abstract int findUserCount(String trainPublishUserId);

	public abstract List<Train> findTrainByUser(Map map);
	
	public abstract List<Train> findByParentUnit(Map map);

	public abstract List<Train> findTrainByAll(Map map);
	
	public abstract List<Train> findTopTen();
	
	public  List<Train> findByCount(Map map);

}
