package com.tjdzj.www.action;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

import org.apache.oro.text.regex.MalformedPatternException;
import org.apache.oro.text.regex.MatchResult;
import org.apache.oro.text.regex.Pattern;
import org.apache.oro.text.regex.PatternCompiler;
import org.apache.oro.text.regex.PatternMatcher;
import org.apache.oro.text.regex.PatternMatcherInput;
import org.apache.oro.text.regex.Perl5Compiler;
import org.apache.oro.text.regex.Perl5Matcher;

import com.opensymphony.xwork2.ActionSupport;
import com.tjdzj.www.model.Approved;
import com.tjdzj.www.model.Document;
import com.tjdzj.www.model.Employee;
import com.tjdzj.www.model.Enforcement;
import com.tjdzj.www.model.Enforcementinspect;
import com.tjdzj.www.model.Lawagency;
import com.tjdzj.www.model.Laws;
import com.tjdzj.www.model.Lstandards;
import com.tjdzj.www.model.News;
import com.tjdzj.www.model.NewsImg;
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
import com.tjdzj.www.service.EnforcementinspectService;
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
public class FrontAction extends ActionSupport {
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
//	private ApprovedService approvedService;
//	private Approved approved;
//	private List<Approved> approvedList;
//	private PenaltycaseService penaltycaseService;
//	private Penaltycase penaltycase;
//	private List<Penaltycase> penaltycaseList;
//	private ReconsiderationcaseService reconsiderationcaseService;
//	private Reconsiderationcase reconsiderationcase;
//	private List<Reconsiderationcase> reconsiderationcaseList;
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
//	private Enforcementinspect enforcementinspect;
	//private EnforcementinspectService enforcementinspectService;
//	private List<Enforcementinspect> enforcementinspectList;
	private int errorInfo = 1;
	private int yearsQuery;
	
	private List<NewsImg> newsImgList;
	
	
	
	
	public List<NewsImg> getNewsImgList() {
		return newsImgList;
	}



	public void setNewsImgList(List<NewsImg> newsImgList) {
		this.newsImgList = newsImgList;
	}



	public int getYearsQuery() {
		return yearsQuery;
	}



	public void setYearsQuery(int yearsQuery) {
		this.yearsQuery = yearsQuery;
	}



	public int getErrorInfo() {
		return errorInfo;
	}



	public void setErrorInfo(int errorInfo) {
		this.errorInfo = errorInfo;
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



	public LawagencyService getLawagencyService() {
		return lawagencyService;
	}



	public void setLawagencyService(LawagencyService lawagencyService) {
		this.lawagencyService = lawagencyService;
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



	public String queryAllInfo() {
		/*userList = userService.findAllUser();
		lawsList = lawsService.findTopTen();
		regularList = regularService.findTopTen();
		documentList = documentService.findTopTen();
		lstandardsList = lstandardsService.findTopTen();
		lawagencyList = lawagencyService.findTopTen();
		approvedList = approvedService.findTopTen();
		penaltycaseList = penaltycaseService.findTopTen();
		policyList = policyService.findTopTen();
		propagandaList = propagandaService.findTopTen();
		reconsiderationcaseList = reconsiderationcaseService.findTopTen();
		employeeList = employeeService.findTopTen();
		newsList = newsService.findTopTen();
		enforcementList = enforcementService.findTopTen();
		trainList = trainService.findTopTen();
		enforcementinspectList = enforcementinspectService.findTopTen();*/
		lawagencyList = lawagencyService.findTopTen();
		Map map = new HashMap();
		map.put("approveQuery", 2);
		newsList = newsService.findNewsByApprove(map);
		newsImgList=new ArrayList();
		   String srcSplit = "<img[^<]*src=\"(?!http://)(\\S*)\"[^<]*>";
		   for(int i=0;i<newsList.size();i++){
			   News news=(News)newsList.get(i);
			   String content=news.getNewsContent();
			   String newsid=news.getNewsId();
			   String types=news.getType();
			   if(types.indexOf("6")>=0){
				   List list1=getAttr(srcSplit, content);
				   for(int j=0;j<list1.size();j++){
					   NewsImg ni=new NewsImg();
					   ni.setNewsId(newsid);
					   ni.setNewsImgsrc((String)list1.get(j));
					   ni.setNewsTitle(news.getNewsTitle());
					   newsImgList.add(ni);
				   }
			   }
			   
		   }

		return "success";
	}
	public String toFront() {
		Calendar c = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"));
		yearsQuery = c.get(Calendar.YEAR);
		userList = userService.findAllUser();
		return "toFrontSuccess";
	}
	/**
     * 取得文章内容的图片和flash信息
     *
     * @param regStr  正则表达式字符串
     * @param content 内容字符串
     * @return
     * @throws CMSBaseException
     */
    private List getAttr(String regStr, String content)  {
        //todo 编译正则表达式
        List list = new ArrayList();

        try {
            Pattern pattern = null;
            MatchResult result = null;
            PatternCompiler patternCompiler = new Perl5Compiler();
            pattern = patternCompiler.compile(regStr, Perl5Compiler.CASE_INSENSITIVE_MASK);
            PatternMatcher matcher = new Perl5Matcher();
            PatternMatcherInput matcherInput = new PatternMatcherInput(content);

            while (matcher.contains(matcherInput, pattern)) {
                result = matcher.getMatch();
                list.add(result.group(1));
            }

        } catch (MalformedPatternException e) {
            e.printStackTrace();
        }
        return list;
    }




	
}
