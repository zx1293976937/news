package com.tjdzj.www.serviceImpl;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.dao.ProvinceDao;
import com.tjdzj.www.model.Province;
import com.tjdzj.www.service.ProvinceService;

/*
 *@author作者 王晓磊
 */
public class ProvinceServiceImpl implements ProvinceService{
	ProvinceDao provinceDao;

	public ProvinceDao getProvinceDao() {
		return provinceDao;
	}

	public void setProvinceDao(ProvinceDao provinceDao) {
		this.provinceDao = provinceDao;
	}

	@Override
	public void insertProvince(Province province) {
		provinceDao.insertProvince(province);		
	}

	@Override
	public void updateProvince(Province province) {
		provinceDao.updateProvince(province);		
	}

	@Override
	public void deleteProvince(String provinceId) {
		provinceDao.deleteProvince(provinceId);		
	}

	@Override
	public Province findProvinceByid(String provinceId) {
		return provinceDao.findProvinceByid(provinceId);
	}

	@Override
	public int findAllCount() {
		return provinceDao.findAllCount();
	}

	@Override
	public List<Province> findAll(Map map) {
		return provinceDao.findAll(map);
	}

	@Override
	public List<Province> findByParentUnit(Map map) {
		return provinceDao.findByParentUnit(map);
	}

	@Override
	public int findByParentUnitCount(Map map) {
		return provinceDao.findByParentUnitCount(map);
	}

	@Override
	public List<String> findProvince() {
		return provinceDao.findProvince();
	}
	
	@Override
	public List<Province> findProvinceAll() {
		return provinceDao.findProvinceAll();
	}

	@Override
	public String findParentUnit(String provinceName) {
		return provinceDao.findParentUnit(provinceName);
	}

	@Override
	public String findByProvince(String temp) {
		return provinceDao.findByProvince(temp);
	}

	@Override
	public List<Province> findProvinceByNum(Map map) {
		return provinceDao.findProvinceByNum(map);
	}
	
	@Override
	public  List<Province> findByPro(Map map){
		return provinceDao.findByPro(map);
	}
	
}
