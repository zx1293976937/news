<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head>
<base href="<%=basePath%>">

<title>用户登录</title>
<!--<link rel="stylesheet" type="text/css" href="css/css.css">-->
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/4028815e2c15f638012c162e57ad0005.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

</head>
<body>
<style>
#dindex{ width:972px; margin:auto;background:#FFFFFF;}
#dindex_1{ width:970px; height:80px;margin:0 auto;}
#dindex_2{ width:968px;height:640px; margin:0 auto; margin-top:2px;}
#dindex_3{ width:968px; height:87px; margin-top:5px; clear:both;}
</style>

<DIV id="dindex">
<link rel="shortcut icon" href="http://10.12.2.233:8080/beian/images/favicon.ico" type="image/x-icon" /> 
<center><img src="images/img_17.jpg"></center>
<div id="dindex_2" class="tjdzj_detailed">
<ul>
<li></li>
  <li>
  <table width="98%" border="0">
  <s:form name="login" method="post" action="user_login" namespace="/" theme="simple">
  
    <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
    <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  
    <th width="30%"></th>
	  <th width="15%">请登录系统</th>
	  <th width="55%" ></th>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
    <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="30%"></th>
	  <th width="10%">用户名</th>
	  <th width="60%" ><s:textfield name="user.userName" cssStyle="width:150px"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="30%"></th>
	  <th width="10%">密码</th>
	  <th width="60%" ><s:password name="user.passWord" cssStyle="width:150px"></s:password></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr>
      <th width="30%"></th>
	  <th width="10%" ></th>
	  <th width="60%" align="center" ><s:submit value="登录"></s:submit></th>
	<s:fielderror>
		<sparam></sparam>
		</s:fielderror>
	</s:form>
	  </tr>
   <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  
  </table>
  </li>
</ul>
</div>
<%@ include file="bottom.jsp" %>


</div>

</body>
</html>