<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>管理员信息</title>
<script type="text/javascript">
 function addUser(){
	 var url = "${rootPath}/user_addUI.action";
	 window.location.href=url;
 }
 function updateUser(id){
	 var url = "${rootPath}/user_updateUI.action?user.userId="+id;
	 window.location.href=url;
 }
 function deleteUser(id){
	 var url = "${rootPath}/user_delete.action?user.userId="+id;
	 window.location.href=url;
 }
 function resetUser(id){
	 var url = "${rootPath}/user_reset.action?user.userId="+id;
	 window.location.href=url;
 }
</script>
</head>

<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">管理员信息</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<button class="btn btn-success" type="button" onclick="addUser();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加管理员信息</button>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<table class="table table-bordered">
				<thead>
					<tr>
					<th>用户代码</th>
					<th>单位名称</th>
					<th>管理员姓名</th>
					<th>性别</th>
					<th>工作电话</th>
					<th>手机</th>
					<th>电子邮箱</th>
					<th>通讯地址</th>
					<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="userList" id="userList" var="user">
					<tr>
					<td><s:property value="userCode"/> </td>  
					<td><s:property value="proName"/> </td> 
					<td><s:property value="trueName"/> </td>
					<td><s:property value="userSex"/> </td>
					<td><s:property value="phone"/> </td>
					<td><s:property value="mobilePhone"/> </td>
					<td><s:property value="mailBox"/> </td>
					<td><s:property value="address"/> </td>
					<td>
						<button class="btn btn-primary btn-sm"  type="button" onclick="updateUser('${userId}');" title="修改"><span class="glyphicon glyphicon-edit"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="deleteUser('${userId}');" title="删除"><span class="glyphicon glyphicon-remove"></span></button>
						<c:if test="${loginUser.userCode eq '00000'}">
							<button class="btn btn-default btn-sm" type="button" onclick="resetUser('${userId}');" ><span class="glyphicon glyphicon-refresh"></span>&nbsp;重置密码</button>
						</c:if>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="9" style="padding: 5px;">
					<mytag:paging urlAction="user_queryAllUser" type="2" />
					</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>
</body>
</html>