package com.tjdzj.www.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.xml.internal.ws.policy.Policy;
import com.tjdzj.www.model.Approved;
import com.tjdzj.www.model.Document;
import com.tjdzj.www.model.Enforcementinspect;
import com.tjdzj.www.model.Laws;
import com.tjdzj.www.model.Lstandards;
import com.tjdzj.www.model.Penaltycase;
import com.tjdzj.www.model.Propaganda;
import com.tjdzj.www.model.Reconsiderationcase;
import com.tjdzj.www.model.Regular;
import com.tjdzj.www.model.Train;
import com.tjdzj.www.model.User;
import com.tjdzj.www.service.ApprovedService;
import com.tjdzj.www.service.DocumentService;
import com.tjdzj.www.service.EnforcementinspectService;
import com.tjdzj.www.service.LawsService;
import com.tjdzj.www.service.LstandardsService;
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
public class StaticsAction extends ActionSupport{
	
	ActionContext act = ActionContext.getContext();
	Map session = act.getSession();
	
	private User user;
	private UserService userService;
	private Approved approved;
	private ApprovedService approvedService;
	private Document document;
	private DocumentService documentService;
	private Regular regular;
	private RegularService regularService;
	private Laws laws;
	private LawsService lawsService;
	private Lstandards lstandards;
	private LstandardsService lstandardsService;
	private Penaltycase penaltycase;
	private PenaltycaseService penaltycaseService;
	private Reconsiderationcase reconsiderationcase;
	private ReconsiderationcaseService reconsiderationcaseService;
	private Propaganda propaganda;
	private PropagandaService propagandaService;
	private Train train;
	private TrainService trainService;
	private Policy policy;
	private PolicyService policyService;
	private Enforcementinspect enforcementInspect;
	private EnforcementinspectService enforcementInspectService;
	
	public Approved getApproved() {
		return approved;
	}
	public void setApproved(Approved approved) {
		this.approved = approved;
	}
	public ApprovedService getApprovedService() {
		return approvedService;
	}
	public void setApprovedService(ApprovedService approvedService) {
		this.approvedService = approvedService;
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
	public Penaltycase getPenaltycase() {
		return penaltycase;
	}
	public void setPenaltycase(Penaltycase penaltycase) {
		this.penaltycase = penaltycase;
	}
	public PenaltycaseService getPenaltycaseService() {
		return penaltycaseService;
	}
	public void setPenaltycaseService(PenaltycaseService penaltycaseService) {
		this.penaltycaseService = penaltycaseService;
	}
	public Reconsiderationcase getReconsiderationcase() {
		return reconsiderationcase;
	}
	public void setReconsiderationcase(Reconsiderationcase reconsiderationcase) {
		this.reconsiderationcase = reconsiderationcase;
	}
	public ReconsiderationcaseService getReconsiderationcaseService() {
		return reconsiderationcaseService;
	}
	public void setReconsiderationcaseService(
			ReconsiderationcaseService reconsiderationcaseService) {
		this.reconsiderationcaseService = reconsiderationcaseService;
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
	
	
	public Enforcementinspect getEnforcementInspect() {
		return enforcementInspect;
	}
	public void setEnforcementInspect(Enforcementinspect enforcementInspect) {
		this.enforcementInspect = enforcementInspect;
	}
	public EnforcementinspectService getEnforcementInspectService() {
		return enforcementInspectService;
	}
	public void setEnforcementInspectService(
			EnforcementinspectService enforcementInspectService) {
		this.enforcementInspectService = enforcementInspectService;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String totalStatics()
	{
		List<String> ll = userService.findProvince();
		for(int i = 0;i<ll.size();i++)
		{
			session.put(ll.get(i)+"_laws", lawsService.findProvinceCount(ll.get(i)));
			session.put(ll.get(i)+"_regular", regularService.findProvinceCount(ll.get(i)));
			session.put(ll.get(i)+"_document", documentService.findProvinceCount(ll.get(i)));
			session.put(ll.get(i)+"_lstandards", lstandardsService.findProvinceCount(ll.get(i)));
			session.put(ll.get(i)+"_approved", approvedService.findProvinceCount(ll.get(i)));
			session.put(ll.get(i)+"_penaltycase", penaltycaseService.findProvinceCount(ll.get(i)));
			session.put(ll.get(i)+"_reconsiderationcase", reconsiderationcaseService.findProvinceCount(ll.get(i)));
			//session.put(ll.get(i)+"_enforcementInspect", enforcementInspectService.findProvinceCount(ll.get(i)));
			session.put(ll.get(i)+"_propaganda", propagandaService.findProvinceCount(ll.get(i)));
			System.out.println(ll.get(i));
			System.out.println(lawsService.findProvinceCount(ll.get(i)));
		}
		
		return "success";
	}
	public String lawsStatics()
	{
		return "success";
	}
	public String regularStatics()
	{
		return "success";
	}
	public String documentStatics()
	{
		return "success";
	}
	
}
