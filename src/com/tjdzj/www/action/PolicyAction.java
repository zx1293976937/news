package com.tjdzj.www.action;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tjdzj.www.model.Policy;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.PolicyService;

/**
 * @author wangxiaolei
 *
 */
public class PolicyAction extends ActionSupport{
	private Policy policy;
	private PolicyService policyService;
	private List<Policy> policyList;
	private User user;
	int intRowCount;
	int pageNow;// 希望显示第几页
	int pageSize = 10;// 每页显示多少条记录
	int k;
	int pageCount;// 一共有多少页
	int i;
	/* getter && setter */


	public int getIntRowCount() {
		return intRowCount;
	}

	public Policy getPolicy() {
		return policy;
	}

	public void setPolicy(Policy policy) {
		this.policy = policy;
	}

	public PolicyService getPolicyService() {
		return policyService;
	}

	public void setPolicyService(PolicyService policyService) {
		this.policyService = policyService;
	}

	public List<Policy> getPolicyList() {
		return policyList;
	}

	public void setPolicyList(List<Policy> policyList) {
		this.policyList = policyList;
	}

	public void setIntRowCount(int intRowCount) {
		this.intRowCount = intRowCount;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getK() {
		return k;
	}

	public void setK(int k) {
		this.k = k;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}

	
	
	public String add() {
		policyService.addPolicy(policy);
		return "listpolicyUI";
	}

	public String update() {
		policyService.updatePolicy(policy);
		return "listpolicyUI";
	}

	public String delete() {
		policyService.deletePolicy(policy.getPolicyId());
		return "listpolicyUI";
	}

	public String queryAllPolicy() {
		ActionContext act = ActionContext.getContext();
		Map session = act.getSession();
		user = (User) session.get("loginUser");
		if (user.getPrivilege().equals("1")) {
			queryPolicyByUser();
			return "listpolicy";
		}
		intRowCount = policyService.findAllCount();
		if (intRowCount > 0) {
			k = (intRowCount + pageSize - 1) / pageSize;
			pageCount = (intRowCount + pageSize - 1) / pageSize;// 计算出总页数
			if (pageNow < 1) {
				pageNow = 1;
			}
			if (pageNow > pageCount) {
				pageNow = pageCount;

			}
			i = (pageNow - 1) * pageSize;
		}
		Map map = new HashMap();
		map.put("intPageCount", i);
		map.put("pageSize", pageSize);
		policyList = policyService.findPolicyByAll(map);
		return "listpolicy";

	}

	public String queryPolicyByUser() {
		ActionContext act = ActionContext.getContext();
		Map session = act.getSession();
		user = (User) session.get("loginUser");
		intRowCount = policyService.findUserCount(user.getUserId());
		if (intRowCount > 0) {
			k = (intRowCount + pageSize - 1) / pageSize;
			pageCount = (intRowCount + pageSize - 1) / pageSize;// 计算出总页数
			if (pageNow < 1) {
				pageNow = 1;
			}
			if (pageNow > pageCount) {
				pageNow = pageCount;

			}
			i = (pageNow - 1) * pageSize;
		}
		Map map = new HashMap();
		map.put("userId", user.getUserId());
		map.put("intPageCount", i);
		map.put("pageSize", pageSize);
		policyList = policyService.findPolicyByUser(map);

		return "listpolicy";
	}
	public String addUI() {

		return "addpolicy";
	}

	public String updateUI() {
		policy = policyService.findPolicyById(policy.getPolicyId());
		return "updatepolicy";

	}
	public String front()
	{
		
		policy = policyService.findPolicyById(policy.getPolicyId());
		return "front";
	}
	public String list()
	{
		Map map = new HashMap();
		intRowCount = policyService.findAllCount();
		if (intRowCount > 0) {
			k = (intRowCount + pageSize - 1) / pageSize;
			pageCount = (intRowCount + pageSize - 1) / pageSize;// 计算出总页数
			if (pageNow < 1) {
				pageNow = 1;
			}
			if (pageNow > pageCount) {
				pageNow = pageCount;

			}
			i = (pageNow - 1) * pageSize;
		}
		map.put("intPageCount", i);
		map.put("pageSize", pageSize);
		policyList = policyService.findPolicyByAll(map);
		map.clear();
		return "policyfrontlist";
	}
}
