package com.tjdzj.www.dao;

import java.util.List;
import java.util.Map;

import com.tjdzj.www.model.Enforcement;
import com.tjdzj.www.model.Inquiry;

/**
 * @author wangxiaolei
 *
 */
public interface InquiryDao {

	public abstract List<Inquiry> queryFromTitle(Map map);

}
