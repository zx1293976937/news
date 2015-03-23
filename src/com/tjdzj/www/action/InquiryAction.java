package com.tjdzj.www.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.tjdzj.www.model.Approved;
import com.tjdzj.www.model.Document;
import com.tjdzj.www.model.Employee;
import com.tjdzj.www.model.Enforcement;
import com.tjdzj.www.model.Inquiry;
import com.tjdzj.www.model.Lawagency;
import com.tjdzj.www.model.Laws;
import com.tjdzj.www.model.Lstandards;
import com.tjdzj.www.model.News;
import com.tjdzj.www.model.Penaltycase;
import com.tjdzj.www.model.Policy;
import com.tjdzj.www.model.Propaganda;
import com.tjdzj.www.model.Reconsiderationcase;
import com.tjdzj.www.model.Regular;
import com.tjdzj.www.model.Train;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.ApprovedService;
import com.tjdzj.www.service.DocumentService;
import com.tjdzj.www.service.EmployeeService;
import com.tjdzj.www.service.EnforcementService;
import com.tjdzj.www.service.InquiryService;
import com.tjdzj.www.service.LawagencyService;
import com.tjdzj.www.service.LawsService;
import com.tjdzj.www.service.LstandardsService;
import com.tjdzj.www.service.NewsService;
import com.tjdzj.www.service.PenaltycaseService;
import com.tjdzj.www.service.PolicyService;
import com.tjdzj.www.service.PropagandaService;
import com.tjdzj.www.service.ReconsiderationcaseService;
import com.tjdzj.www.service.RegularService;
import com.tjdzj.www.service.TrainService;
import com.tjdzj.www.service.UserService;

/**
 * @author wangxiaolei
 *
 */
public class InquiryAction extends ActionSupport{
	private Inquiry inquiry;
	private InquiryService inquiryService;
	private List<Inquiry> inquiryList;
	private UserService userService;
	private User user;
	private List<User> userList;
	private LawsService lawsService;
	private Laws laws;
	private List<Laws> lawsList;
	private Regular regular;
	private RegularService regularService;
	private List<Regular> regularList;
	private Document document;
	private DocumentService documentService;
	private List<Document> documentList;
	private ApprovedService approvedService;
	private Approved approved;
	private List<Approved> approvedList;
	private PenaltycaseService penaltycaseService;
	private Penaltycase penaltycase;
	private List<Penaltycase> penaltycaseList;
	private ReconsiderationcaseService reconsiderationcaseService;
	private Reconsiderationcase reconsiderationcase;
	private List<Reconsiderationcase> reconsiderationcaseList;
	private LstandardsService lstandardsService;
	private Lstandards lstandards;
	private List<Lstandards> lstandardsList;
	private Lawagency lawagency;
	private LawagencyService lawagencyService;
	private List<Lawagency> lawagencyList;
	private Employee employee;
	private EmployeeService employeeService;
	private List<Employee> employeeList;
	private News news;
	private NewsService newsService;
	private List<News> newsList;
	private Enforcement enforcement;
	private EnforcementService  enforcementService ;
	private List<Enforcement> enforcementList;
	private PolicyService policyService;
	private Policy policy;
	private List<Policy> policyList;
	private Propaganda propaganda;
	private PropagandaService propagandaService;
	private List<Propaganda> propagandaList;
	private Train train;
	private TrainService trainService;
	private List<Train> trainList;
	
	public Inquiry getInquiry() {
		return inquiry;
	}
	public void setInquiry(Inquiry inquiry) {
		this.inquiry = inquiry;
	}
	
	public InquiryService getInquiryService() {
		return inquiryService;
	}
	public void setInquiryService(InquiryService inquiryService) {
		this.inquiryService = inquiryService;
	}
	public List<Inquiry> getInquiryList() {
		return inquiryList;
	}
	public void setInquiryList(List<Inquiry> inquiryList) {
		this.inquiryList = inquiryList;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<User> getUserList() {
		return userList;
	}
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	public LawsService getLawsService() {
		return lawsService;
	}
	public void setLawsService(LawsService lawsService) {
		this.lawsService = lawsService;
	}
	public Laws getLaws() {
		return laws;
	}
	public void setLaws(Laws laws) {
		this.laws = laws;
	}
	public List<Laws> getLawsList() {
		return lawsList;
	}
	public void setLawsList(List<Laws> lawsList) {
		this.lawsList = lawsList;
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
	public List<Regular> getRegularList() {
		return regularList;
	}
	public void setRegularList(List<Regular> regularList) {
		this.regularList = regularList;
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
	public List<Document> getDocumentList() {
		return documentList;
	}
	public void setDocumentList(List<Document> documentList) {
		this.documentList = documentList;
	}
	public ApprovedService getApprovedService() {
		return approvedService;
	}
	public void setApprovedService(ApprovedService approvedService) {
		this.approvedService = approvedService;
	}
	public Approved getApproved() {
		return approved;
	}
	public void setApproved(Approved approved) {
		this.approved = approved;
	}
	public List<Approved> getApprovedList() {
		return approvedList;
	}
	public void setApprovedList(List<Approved> approvedList) {
		this.approvedList = approvedList;
	}
	public PenaltycaseService getPenaltycaseService() {
		return penaltycaseService;
	}
	public void setPenaltycaseService(PenaltycaseService penaltycaseService) {
		this.penaltycaseService = penaltycaseService;
	}
	public Penaltycase getPenaltycase() {
		return penaltycase;
	}
	public void setPenaltycase(Penaltycase penaltycase) {
		this.penaltycase = penaltycase;
	}
	public List<Penaltycase> getPenaltycaseList() {
		return penaltycaseList;
	}
	public void setPenaltycaseList(List<Penaltycase> penaltycaseList) {
		this.penaltycaseList = penaltycaseList;
	}
	public ReconsiderationcaseService getReconsiderationcaseService() {
		return reconsiderationcaseService;
	}
	public void setReconsiderationcaseService(
			ReconsiderationcaseService reconsiderationcaseService) {
		this.reconsiderationcaseService = reconsiderationcaseService;
	}
	public Reconsiderationcase getReconsiderationcase() {
		return reconsiderationcase;
	}
	public void setReconsiderationcase(Reconsiderationcase reconsiderationcase) {
		this.reconsiderationcase = reconsiderationcase;
	}
	public List<Reconsiderationcase> getReconsiderationcaseList() {
		return reconsiderationcaseList;
	}
	public void setReconsiderationcaseList(
			List<Reconsiderationcase> reconsiderationcaseList) {
		this.reconsiderationcaseList = reconsiderationcaseList;
	}
	public LstandardsService getLstandardsService() {
		return lstandardsService;
	}
	public void setLstandardsService(LstandardsService lstandardsService) {
		this.lstandardsService = lstandardsService;
	}
	public Lstandards getLstandards() {
		return lstandards;
	}
	public void setLstandards(Lstandards lstandards) {
		this.lstandards = lstandards;
	}
	public List<Lstandards> getLstandardsList() {
		return lstandardsList;
	}
	public void setLstandardsList(List<Lstandards> lstandardsList) {
		this.lstandardsList = lstandardsList;
	}
	public Lawagency getLawagency() {
		return lawagency;
	}
	public void setLawagency(Lawagency lawagency) {
		this.lawagency = lawagency;
	}
	public LawagencyService getLawagencyService() {
		return lawagencyService;
	}
	public void setLawagencyService(LawagencyService lawagencyService) {
		this.lawagencyService = lawagencyService;
	}
	public List<Lawagency> getLawagencyList() {
		return lawagencyList;
	}
	public void setLawagencyList(List<Lawagency> lawagencyList) {
		this.lawagencyList = lawagencyList;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public EmployeeService getEmployeeService() {
		return employeeService;
	}
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}
	public List<Employee> getEmployeeList() {
		return employeeList;
	}
	public void setEmployeeList(List<Employee> employeeList) {
		this.employeeList = employeeList;
	}
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	public NewsService getNewsService() {
		return newsService;
	}
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	public List<News> getNewsList() {
		return newsList;
	}
	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}
	public Enforcement getEnforcement() {
		return enforcement;
	}
	public void setEnforcement(Enforcement enforcement) {
		this.enforcement = enforcement;
	}
	public EnforcementService getEnforcementService() {
		return enforcementService;
	}
	public void setEnforcementService(EnforcementService enforcementService) {
		this.enforcementService = enforcementService;
	}
	public List<Enforcement> getEnforcementList() {
		return enforcementList;
	}
	public void setEnforcementList(List<Enforcement> enforcementList) {
		this.enforcementList = enforcementList;
	}
	public PolicyService getPolicyService() {
		return policyService;
	}
	public void setPolicyService(PolicyService policyService) {
		this.policyService = policyService;
	}
	public Policy getPolicy() {
		return policy;
	}
	public void setPolicy(Policy policy) {
		this.policy = policy;
	}
	public List<Policy> getPolicyList() {
		return policyList;
	}
	public void setPolicyList(List<Policy> policyList) {
		this.policyList = policyList;
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
	public List<Propaganda> getPropagandaList() {
		return propagandaList;
	}
	public void setPropagandaList(List<Propaganda> propagandaList) {
		this.propagandaList = propagandaList;
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
	public List<Train> getTrainList() {
		return trainList;
	}
	public void setTrainList(List<Train> trainList) {
		this.trainList = trainList;
	}
	public String query()
	{
		Map map = new HashMap();
		
		//lawsList = lawsService.queryFromTitle(map);
		
		return "success";
	}
	
}
