﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加行政执法队伍</title>
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
<h2><a>您所在的位置</a>-><a href="manage.jsp">首页</a>-><a href="">行政执法队伍</a></h2>
<ul>
<li></li>
  <li>
  <table width="98%" border="0">
  <s:form method="post" action="enforcement_add" namespace="/" theme="simple">
  <tr>
      <th width="5%"></th>
	  <th width="18%">行政执法队伍名称</th>
	  <th width="75%" ><s:textfield name="enforcement.enforcementName"></s:textfield> </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="10%">是否独立机构</th>
	  <th width="80%" ><s:radio list="#{'是':'是','否':'否'}" name="enforcement.enforcementProperty"></s:radio></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">负责人姓名</th>
	  <th width="80%" >	<s:textfield name="enforcement.enforcementIncharge"></s:textfield> </th>
  </tr>
   
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">负责人性别</th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementInchargeSex"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">负责人电话</th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementInchargePhone"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">负责人邮箱</th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementInchargeEmail"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">负责人学历</th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementInchargeEB"></s:textfield></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">负责人出生年月</th>
	  <th width="80%" ><sx:datetimepicker name="enforcement.enforcementInchargeBirthday" type="date" displayFormat="yyyy-MM-dd " language="UTF-8" displayWeeks="6" /></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">是否法学专业</th>
	  <th width="80%" ><s:radio list="#{'是':'是','否':'否'}" name="enforcement.enforcementInchargeLN" value="'是'"></s:radio> </th>
  </tr>
<s:hidden label="上传时间" name="enforcement.enforcementUTime"></s:hidden> 
 <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>

    <tr>
    
	  <th width="5%"></th>
	  <th width="10%">所在单位</th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementProvince" value="%{#session.loginUser.inchargeMent}"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>

    <tr>
    
	  <th width="5%"></th>
	  <th width="10%">上级单位</th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementParentUnit" value="%{#session.loginUser.parentUnit}"></s:textfield> </th>
  </tr>
      <s:hidden label="发布用户" name="enforcement.enforcementPublishUserId" value="%{#session.loginUser.userId}"></s:hidden>
  <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
      <th width="5%"></th>
	  <th width="10%" ></th>
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