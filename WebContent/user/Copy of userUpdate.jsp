<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户信息</title>
<!--<link rel="stylesheet" type="text/css" href="css/css.css">-->
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css"
	href="css/4028815e2c15f638012c162e57ad0005.css">
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
#dindex {
	width: 972px;
	margin: auto;
	background: #FFFFFF;
}

#dindex_1 {
	width: 970px;
	height: 80px;
	margin: 0 auto;
}

#dindex_2 {
	width: 968px;
	height: 650px;
	margin: 0 auto;
	margin-top: 2px;
}

#dindex_3 {
	width: 968px;
	height: 87px;
	margin-top: 5px;
	clear: both;
}
</style>

	<DIV id="dindex">
		<%@ include file="../top.jsp"%>
		<div id="dindex_2" class="tjdzj_detailed">
			<h2>
				<a>您所在的位置</a>-><a href="manage.jsp">首页</a>-><a>用户信息</a>
			</h2>
			<ul>
				<li></li>
				<li>
					<table width="98%" border="0">
						<s:form method="post" action="user_update" namespace="/"
							theme="simple">
							<s:hidden name="user.userId"></s:hidden>
							<tr>
								<th width="30%"></th>
								<th width="10%">账号</th>
								<th width="60%"><s:textfield name="user.userName"></s:textfield></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="30%"></th>
								<th width="10%">用户名</th>
								<th width="60%"><s:textfield name="user.trueName"></s:textfield>
								</th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="30%"></th>
								<th width="10%">密码</th>
								<th width="60%"><s:password name="user.passWord"></s:password>
								</th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="30%"></th>
								<th width="10%">权限</th>
								<th width="60%">
								<s:if test="#session.loginUser.privilege=='1'.toString()">
									<s:select label="权限" name="user.privilege"
										list="#{'1':'国家级管理员','2':'省级管理员','3':'地市级管理员'}"></s:select>
								</s:if>
								<s:else>
									<s:select label="权限" name="user.privilege"
										list="#{'2':'省级管理员','3':'地市级管理员'}"></s:select>
								</s:else> 
								</th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="30%"></th>
								<th width="10%">联系电话</th>
								<th width="60%"><s:textfield name="user.phone"></s:textfield></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="30%"></th>
								<th width="10%">地址</th>
								<th width="60%"><s:textfield name="user.address"></s:textfield></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="30%"></th>
								<th width="10%">邮编</th>
								<th width="60%"><s:textfield name="user.zipcode"></s:textfield></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							
							<tr>
								<th width="30%"></th>
								<th width="10%">所在单位</th>
								<th width="60%"><s:select list="%{listProvince}" name="user.inchargeMent"></s:select>
									<%-- <s:hidden name="user.parentUnit" value="%{#session.loginUser.inchargeMent}"></s:hidden> --%></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="30%"></th>
								<th width="10%"></th>
								<th width="60%" align="center"><s:submit value="提交"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="button" value="返回" onclick="javascript:window.history.go(-1);"></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
						</s:form>
					</table>
				</li>
			</ul>
		</div>

		<%@ include file="../bottom.jsp"%>

	</div>

</body>
</html>