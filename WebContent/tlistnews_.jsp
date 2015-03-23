﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻列表</title>
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
#dindex_top{ width:970px; height:30px;margin:0 auto;}
#dindex_2{ width:968px;height:650px; margin:0 auto; margin-top:2px;}
#dindex_3{ width:968px; height:87px; margin-top:5px; clear:both;}
</style>

<!--<DIV id="dindex">-->
<div id="dindex_top"  class="tjdzj_listnews"><h3><s:a action="user_logout">logout</s:a></h3></div>
<DIV id="dindex_1" class="tjdzj_top"><h1>备案系统</h1></DIV>
<div id="dindex_2" class="tjdzj_listnews">
<h2><a>您所在的位置</a>-><a href="manage.jsp">首页</a>-><a>添加新闻</a></h2>
<ul>
<li>	
<h4>
<s:a action="news_addUI" namespace="/">添加新闻</s:a><a style="float:right" href="manage.jsp">返回</a>
</h4>

</li>
</ul>
<ul>
<li>
	<table width="90%" border="0" style=" margin:0 auto">
	<tr>
	<th>id</th>
	<th>标题</th>
	<th>新闻全文</th>
	<th>上传日期</th>
	<th>发布用户</th>
	<th>操作</th>
	</tr>
	<s:iterator value="newsList" id="newsList" var="news">
	<tr>
	<td><s:property value="newsId" /></td>
	<td><s:property value="newsTitle" /></td>
	<td><s:property value="newsContent" /></td>
	<td><s:property value="newsUTime" /></td>
	<td><s:property value="newsPublishUserId" /></td>
	<td><s:a action="news_updateUI" namespace="/">
	<s:param name="news.newsId">${newsId}</s:param>修改</s:a><s:a action="news_delete" namespace="/">
	<s:param name="news.newsId">${newsId}</s:param>删除</s:a></td>
	</tr>
	</s:iterator>
	</table></li><li>
	<a>共 <s:property value="intRowCount" /> 记录	     
	第 <s:property value="pageNow" /> 页<s:url id="url_pre" value="news_queryAllNews">
	<s:param name="pageNow" value="pageNow-1"></s:param>
	</s:url>
	<s:url id="url_next" value="news_queryAllNews">
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

<DIV id="dindex_3" class="tjdzj_bottom">
<P>版权所有 天津市地震局</P>
<P>备案编号:津ICP备1200782号</P></DIV>

<!--</div>-->


</body>
</html>