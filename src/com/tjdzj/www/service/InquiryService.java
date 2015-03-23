package com.tjdzj.www.service;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Inquiry;
import com.tjdzj.www.model.Laws;

/**
 * @author wangxiaolei
 *
 */
public interface InquiryService {

	
	
	public abstract List<Laws> queryFromTitle(Map map);

}
