package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Approved;
import com.tjdzj.www.model.Approved;
import com.tjdzj.www.model.Province;

/**
 * @author wangxiaolei
 *
 */
public interface ProvinceService {

	public  void insertProvince(Province province);

	public  void updateProvince(Province province);

	public  void deleteProvince(String provinceId);

	public  Province findProvinceByid(String provinceId);

	public  int findAllCount();
	
	public  List<Province> findAll(Map map);
	
	public  List<Province> findProvinceAll();
	
	public  List<Province> findByParentUnit(Map map);
	
	public  int findByParentUnitCount(Map map);
	
	public List<String> findProvince();
	
	public String findParentUnit(String provinceName);
	
	String findByProvince(String temp);
	
	public  List<Province> findProvinceByNum(Map map);
	
	public  List<Province> findByPro(Map map);

}
