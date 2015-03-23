<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>备案系统</title>
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
#dindex_2{ width:968px;height:600px; margin:0 auto; margin-top:2px;}
#dindex_3{ width:968px; height:87px; margin-top:5px; clear:both;}
</style>

<DIV id="dindex">
<%@ include file="top.jsp" %>
<div id="dindex_2" class="tjdzj_detailed">
<h2><a>您所在的位置</a>-><a href="">首页</a>-><a href="">地方法规类表列表</a></h2>
<ul>
  <li>
  <table width="98%" border="0">
  <tr>
	  <th width="60%" >法规名称</th>
	  <th width="30%" >发布时间</th>
  </tr>
    <s:iterator value="lawsList" id="lawsList" var="laws">
   <tr>
	<th><s:property value="lawsTitle" /></th>
	<th><s:property value="lawsSTime" /></th>
   </tr>
  </s:iterator>
  
  </table>
  </li>
</ul>
</div>


<%@ include file="bottom.jsp" %>
</div>

</body>
</html>