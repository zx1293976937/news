<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加法制工作机构</title>
<!--<link rel="stylesheet" type="text/css" href="css/css.css">-->
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/4028815e2c15f638012c162e57ad0005.css">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<sx:head parseContent="true" extraLocales="UTF-8"/>
</head>
<body>
<style>
#dindex{ width:972px; margin:auto;background:#FFFFFF;}
#dindex_1{ width:970px; height:80px;margin:0 auto;}
#dindex_2{ width:968px;height:650px; margin:0 auto; margin-top:2px;}
#dindex_3{ width:968px; height:87px; margin-top:5px; clear:both;}
</style>

<DIV id="dindex">
<%@ include file="../top.jsp" %>
<div id="dindex_2" class="tjdzj_detailed">
<h2><a>您所在的位置</a>-><a href="manage.jsp">首页</a>-><a>法制工作机构</a></h2>
<ul>
<li></li>
  <li>
  <table width="98%" border="0">
  <s:form method="post" action="lawagency_add" namespace="/" theme="simple">
  
  <tr>
      <th width="5%"></th>
	  <th width="15%">法制机构名称</th>
	  <th width="75%" ><s:textfield name="lawagency.lawagencyTitle"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">是否独立设置</th>
	  <th width="80%" ><s:radio list="#{'是':'是','否':'否'}" name="lawagency.lawagencyProperty" value="'否'"></s:radio></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">法制机构地址</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyAddress"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">法制机构邮编</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyZip"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">法制人员数量</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyInchargeNumber"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">主要负责人姓名</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyInchargeName"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">主要负责人出生年月</th>
	  <th width="80%" ><sx:datetimepicker name="lawagency.lawagencyInchargeBirthday" type="date" displayFormat="yyyy-MM-dd " language="UTF-8" displayWeeks="6" /></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">主要负责人性别</th>
	  <th width="80%" ><s:radio list="#{'男':'男','女':'女'}" name="lawagency.lawagencyInchargeSex"/></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="20%">主要负责人电子邮箱</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyInchargeEmail"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">主要负责人学历</th>
	  <th width="80%"><s:select lable="学历" name="lawagency.lawagencyInchargeEB" 
	  list="#{'本科以下':'本科以下','本科':'本科','本科以上':'本科以上'}"></s:select></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">是否法学专业</th>
	  <th width="80%" ><s:radio list="#{'是':'是','否':'否'}" name="lawagency.lawagencyInchargeLN" value="'是'"></s:radio></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">分管领导姓名</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyLeadershipName"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">分管领导职务</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyLeadershipTitle"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="12%">分管领导电话</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyLeadershipPhone"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="5%"></th>
	  <th width="12%" ></th>
	 <th width="80%" >
	 <s:hidden label="上传时间" name="lawagency.lawagencyUTime"></s:hidden>
	 <s:hidden label="所在单位" name="lawagency.lawagencyProvince" value="%{#session.loginUser.inchargeMent}"></s:hidden>
	 <s:hidden label="上级单位" name="lawagency.lawagencyParentUnit"	 value="%{#session.loginUser.parentUnit}"></s:hidden>
	 <s:hidden label="发布用户" name="lawagency.lawagencyPublishUserId"	 value="%{#session.loginUser.userId}"></s:hidden></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr>
      <th width="5%"></th>
	  <th width="12%" ></th>
	  <th width="80%" align="center" ><s:submit value="提交"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" onclick="javascript:history.back(-1);" value="返回" /></th>
   </s:form>
   </tr>
   <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
</table>
  </li>
</ul>
</div>

<%@ include file="../bottom.jsp" %>

</div>

</body>
</html>