package com.tjdzj.www.action;

import java.io.PrintWriter;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.xml.internal.ws.policy.Policy;

import com.tjdzj.www.model.Document;
import com.tjdzj.www.model.Laws;
import com.tjdzj.www.model.Lstandards;

import com.tjdzj.www.model.Propaganda;
import com.tjdzj.www.model.Province;

import com.tjdzj.www.model.Regular;
import com.tjdzj.www.model.Train;
import com.tjdzj.www.model.User;

import com.tjdzj.www.service.DocumentService;
import com.tjdzj.www.service.LawsService;
import com.tjdzj.www.service.LstandardsService;

import com.tjdzj.www.service.PolicyService;
import com.tjdzj.www.service.PropagandaService;
import com.tjdzj.www.service.ProvinceService;
//import com.tjdzj.www.service.ReconsiderationcaseService;
import com.tjdzj.www.service.RegularService;
import com.tjdzj.www.service.TrainService;
import com.tjdzj.www.service.UserService;

/**
 * @author wangxiaolei
 *
 */
public class UserAction extends ActionSupport {
	int intRowCount;
	int pageNow;// 希望显示第几页
	int pageSize = 10;// 每页显示多少条记录
	int k;
	int pageCount;// 一共有多少页
	int i;
	private UserService userService;//每个service都必须有set get 方法
	private User user;

	private Document document;
	private DocumentService documentService;
	private Regular regular;
	private RegularService regularService;
	private Laws laws;
	private LawsService lawsService;
	private Lstandards lstandards;
	private LstandardsService lstandardsService;

//	private ReconsiderationcaseService reconsiderationcaseService;
	private Propaganda propaganda;
	private PropagandaService propagandaService;
	private Train train;
	private TrainService trainService;
	private Policy policy;
	private PolicyService policyService;
	private Province province;
	private ProvinceService provinceService;
	private List<String> listProvince;
	private List<Province> provinceList;
	private String name;
	private String flg;
	private String userId;
	private int errorInfo = 1;
	private String password;
	private int yearsQuery;
	
	
	
	public int getYearsQuery() {
		return yearsQuery;
	}

	public void setYearsQuery(int yearsQuery) {
		this.yearsQuery = yearsQuery;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getErrorInfo() {
		return errorInfo;
	}

	public void setErrorInfo(int errorInfo) {
		this.errorInfo = errorInfo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFlg() {
		return flg;
	}

	public void setFlg(String flg) {
		this.flg = flg;
	}

	public List<Province> getProvinceList() {
		return provinceList;
	}

	public void setProvinceList(List<Province> provinceList) {
		this.provinceList = provinceList;
	}

	public Province getProvince() {
		return province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	public ProvinceService getProvinceService() {
		return provinceService;
	}

	public void setProvinceService(ProvinceService provinceService) {
		this.provinceService = provinceService;
	}

	public List<String> getListProvince() {
		return listProvince;
	}

	public void setListProvince(List<String> listProvince) {
		this.listProvince = listProvince;
	}


	public Document getDocument() {
		return document;
	}

	public void setDocument(Document document) {
		this.document = document;
	}

	public DocumentService getDocumentService() {
		return documentService;
	}

	public void setDocumentService(DocumentService documentService) {
		this.documentService = documentService;
	}

	public Regular getRegular() {
		return regular;
	}

	public void setRegular(Regular regular) {
		this.regular = regular;
	}

	public RegularService getRegularService() {
		return regularService;
	}

	public void setRegularService(RegularService regularService) {
		this.regularService = regularService;
	}

	public Laws getLaws() {
		return laws;
	}

	public void setLaws(Laws laws) {
		this.laws = laws;
	}

	public LawsService getLawsService() {
		return lawsService;
	}

	public void setLawsService(LawsService lawsService) {
		this.lawsService = lawsService;
	}

	public Lstandards getLstandards() {
		return lstandards;
	}

	public void setLstandards(Lstandards lstandards) {
		this.lstandards = lstandards;
	}

	public LstandardsService getLstandardsService() {
		return lstandardsService;
	}

	public void setLstandardsService(LstandardsService lstandardsService) {
		this.lstandardsService = lstandardsService;
	}




	public Propaganda getPropaganda() {
		return propaganda;
	}

	public void setPropaganda(Propaganda propaganda) {
		this.propaganda = propaganda;
	}

	public PropagandaService getPropagandaService() {
		return propagandaService;
	}

	public void setPropagandaService(PropagandaService propagandaService) {
		this.propagandaService = propagandaService;
	}

	public Train getTrain() {
		return train;
	}

	public void setTrain(Train train) {
		this.train = train;
	}

	public TrainService getTrainService() {
		return trainService;
	}

	public void setTrainService(TrainService trainService) {
		this.trainService = trainService;
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

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession();
	private List<User> userList;

	
	public int getIntRowCount() {
		return intRowCount;
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

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String execute() throws Exception {
		return SUCCESS;
	}

	public String addUI() {
		provinceList = provinceService.findProvinceAll();
		return "addUser";
	}

	public String updateUI() {
		provinceList = provinceService.findProvinceAll();
		user = userService.findUserById(user.getUserId());
		return "updateUser";
	}

	public String add() {
		/*String temp = user.getInchargeMent();
		String temp1 = provinceService.findByProvince(temp);
		user.setDepartmentId(temp1);*/
		userService.addUser(user);
		return "listUser";
	}

	public String delete() {
		userService.deleteUser(user.getUserId());
		return "listUser";
	}

	public String update() {
		/*String temp = user.getInchargeMent();
		String temp1 = provinceService.findByProvince(temp);
		user.setDepartmentId(temp1);*/
		userService.updateUser(user);
		return "listUser";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String queryAllUser() {
		user = (User) session.get("loginUser");
		if (user.getPrivilege().equals("1")) {
			intRowCount = userService.findAllCount();
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
			userList = userService.findByInchargeMent(map);
			return "listuser";
		}
		else if(user.getPrivilege().equals("2")){
			Map map = new HashMap();
			
			intRowCount = userService.findByParentUnitCount(user.getInchargeMent());
			//清理map
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
			map.put("inchargeMent", user.getInchargeMent());
			userList = userService.findByParentUnit(map);
			return "listuser";
		}else
		
		userList = userService.findAllUser();
		return "success";

	}
	
	public List<User> getUserList() {
		return userList;
	}
	
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	public String checkName() throws Exception{
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		//JSON
		JSONObject json = new JSONObject();
		int checkCode = 1;//没有值
		if(flg.equals("add")){
			List<User> uList = userService.findByProName(name);
			if(uList.size()>0){
				checkCode = 2;//有值
			}
		}
		if(flg.equals("upt")){
			List<User> uList = userService.findByProName(name);
			if(uList.size()>0){
				for(User u:uList){
					if(!u.getUserId().equals(userId)){
						checkCode = 2;//有值
					}
				}
			}
		}
		
		json.put("checkCode", checkCode);
		//输出
		PrintWriter pw = response.getWriter();
		pw.print(json.toString());
		pw.close();
		return null;
	}
	
	public String checkPassword() throws Exception{
		ActionContext ctx = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest)ctx.get(ServletActionContext.HTTP_REQUEST);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		//JSON
		JSONObject json = new JSONObject();
		int checkCode = 1;//没有值
		User user1 = new User();
		user1.setUserName(name);
		user1.setPassWord(password);
		User user2 = userService.login(user1);
		if(user2 != null){
			checkCode = 2;
		}
		json.put("checkCode", checkCode);
		//输出
		PrintWriter pw = response.getWriter();
		pw.print(json.toString());
		pw.close();
		return null;
	}
	
	public String toUpdate(){
		return "toUpdateSuccess";
	}
	public String updatePassWord(){
		User user1 = userService.findUserById(user.getUserId());
		user1.setPassWord(user.getPassWord());
		userService.updateUser(user1);
		return "updatePassWordSuccess";
	}
	
	public String login() {
		Calendar c = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"));
		yearsQuery = c.get(Calendar.YEAR);
		if (user != null) {
			User user2 = userService.login(user);
			if (user2 != null) {
				session.put("laws", lawsService.findAllCount());
				session.put("regular", regularService.findAllCount());
				session.put("document", documentService.findAllCount());
				session.put("lstandards", lstandardsService.findAllCount());


				session.put("propaganda", propagandaService.findAllCount());
				session.put("train", trainService.findAllCount());
				session.put("policy", policyService.findAllCount());
				session.put("loginUser", user2);
				return SUCCESS;
			}
		}
		errorInfo = 2;
		return "relogin";
	}

	public String logout() {
		session.clear();
		return "logout";

	}
	public String test(){
		//user.setUserName(Request.["userName"].toString());
		return null;
	}
	
	
	public String reset(){
		User user1 = userService.findUserById(user.getUserId());
		user1.setPassWord("123");
		userService.updateUser(user1);
		return "listUser";
	}
}
