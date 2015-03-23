<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>地方性法规</title>
<!--<link rel="stylesheet" type="text/css" href="css/css.css">-->
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/4028815e2c15f638012c162e57ad0005.css">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
</head>
<style>
#dindex{ width:972px; margin:auto;background:#FFFFFF;}
#dindex_1{ width:970px; height:120px;margin:0 auto;}
#dindex_2{ width:968px;height:600px; margin:0 auto; margin-top:2px;}
#dindex_3{ width:968px; height:100px; margin-top:5px; margin-bottom:5PX;clear:both;}
</style>
<body>
<center>


<DIV id="dindex">
<#include "top.ftl">
<div id="dindex_2" class="tjdzj_listnews">
<h2><a>您所在的位置</a>-><a href="index.jsp">首页</a>-><a>地方性法规</a></h2>
<h3><a href="javascript:window.print();">打印</a></h3>
<ul>
  <li>
  <center>${laws.lawsTitle}</center>
  ${laws.lawsContent}
  </li>
</ul>
</div>
<#include "bottom.ftl">
</div>
</center>
</body>
</html>