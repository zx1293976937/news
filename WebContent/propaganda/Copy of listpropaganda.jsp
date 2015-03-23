<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>法制宣传</title>
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
#dindex_2{ width:968px;height:750px; margin:0 auto; margin-top:2px;}
#dindex_3{ width:968px; height:87px; margin-top:5px; clear:both;}
</style>
<!--<DIV id="dindex">-->
<%@ include file="../top.jsp" %>
<div id="dindex_2" class="tjdzj_listnews">
<h2><a>您所在的位置</a>-><a href="manage.jsp">首页</a>-><a>法制宣传</a>
<ul>
<li>	
<h4>
<s:a action="propaganda_addUI" namespace="/">添加法制宣传</s:a>
</h4>

</li>
</ul>
<ul>
<li>
<table width="90%" border="0" style=" margin:0 auto">
<tr>
<th style="width:15%">法制宣传名称</th> 
<th style="width:10%">开始时间</th>  
<th style="width:20%">法制宣传地点</th>  
<th style="width:10%">受众人数</th>
<th style="width:20%">活动组织单位</th> 
<th style="width:15%">操作</th>
</tr>
<s:iterator value="propagandaList" id="propagandaList" var="propaganda">
<tr>

<td><s:property value="propagandaTitle"/> </td>  
<td><s:property value="propagandaSTime"/> </td>

<td><s:property value="propagandaLocation"/> </td>

<td><s:property value="propagandaPeople"/> </td>
<td><s:property value="propagandaOrgnizor"/> </td>

<td><s:a action="propaganda_updateUI" namespace="/">
<s:param name="propaganda.propagandaId">${propagandaId}</s:param>修改</s:a><s:a action="propaganda_delete" namespace="/">
<s:param name="propaganda.propagandaId">${propagandaId}</s:param>删除</s:a></td>
</tr>
</s:iterator>
</table></li><li>
<a>共 <s:property value="intRowCount" /> 记录	     
第 <s:property value="pageNow" /> 页<s:url id="url_pre" value="propaganda_queryAllPropaganda">
<s:param name="pageNow" value="pageNow-1"></s:param>
</s:url>
<s:url id="url_next" value="propaganda_queryAllPropaganda">
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