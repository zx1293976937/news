<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>法制培训</title>
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
</head>
<body>
<style>
#dindex{ width:972px; margin:auto;background:#FFFFFF;}
#dindex_1{ width:970px; height:80px;margin:0 auto;}
#dindex_2{ width:968px;height:800px; margin:0 auto; margin-top:2px;}
#dindex_3{ width:968px; height:87px; margin-top:5px; clear:both;}
</style>
<!--<DIV id="dindex">-->
<%@ include file="../top.jsp" %>
<div id="dindex_2" class="tjdzj_listnews">
<h2><a>您所在的位置</a>-><a href="manage.jsp">首页</a>-><a>法制培训</a>
<ul>
<li>	
<h4>
<s:a action="train_addUI" namespace="/">添加法制培训</s:a>
</h4>
</li>
</ul>
<ul>
<li>
<table width="90%" border="0" style=" margin:0 auto">
<tr>
<th style="width:15%">培训班名称</th> 
<th style="width:12%">开班时间</th>
<th style="width:12%">结束时间</th>  
<th style="width:13%">培训班地点</th>  
<th style="width:10%">培训对象</th>
<th style="width:8%">受众人数</th>
<th style="width:15%">活动组织单位</th>
<th style="width:15%">操作</th>
</tr>
<s:iterator value="trainList" id="trainList" var="train">
<tr>

<td><s:property value="trainTitle"/> </td>  
<td><s:property value="trainSTime"/> </td>
<td><s:property value="trainETime"/> </td>
<td><s:property value="trainLocation"/> </td>
<td><s:property value="trainPeople"/> </td>
<td><s:property value="trainStatics"/> </td>
<td><s:property value="trainHost"/> </td>

<td><s:a action="train_updateUI" namespace="/">
<s:param name="train.trainId">${trainId}</s:param>修改</s:a><s:a action="train_delete" namespace="/">
<s:param name="train.trainId">${trainId}</s:param>删除</s:a></td>
</tr>
</s:iterator>
</table></li><li>
<a>共 <s:property value="intRowCount" /> 记录	     
第 <s:property value="pageNow" /> 页<s:url id="url_pre" value="train_queryAllTrain">
<s:param name="pageNow" value="pageNow-1"></s:param>
</s:url>
<s:url id="url_next" value="train_queryAllTrain">
<s:param name="pageNow" value="pageNow+1"></s:param>
</s:url>
</a>
<s:if test="pageNow==1">
<s:a href="%{url_pre}">最前一页</s:a>
</s:if>
<s:else>
<s:a href="%{url_pre}">上一页</s:a>
</s:else>
<s:if test="pageNow==k">
<s:a href="%{url_next}">最后一页</s:a>
</s:if>
<s:else>
<s:a href="%{url_next}">下一页</s:a>
</s:else>

</li>
</ul>
</div>
<%@ include file="../bottom.jsp" %>
<!--</div>-->
</body>
</html>