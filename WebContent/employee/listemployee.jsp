<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>行政执法人员</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#sTime").datetimepicker({
		  format: 'yyyy-mm-dd',
		  autoclose: true,
		  minView: 2,
		  todayBtn: true,
		  forceParse: true,
		  pickerPosition: "bottom-left"
	});
	$("#iTime").datetimepicker({
		  format: 'yyyy-mm-dd',
		  autoclose: true,
		  minView: 2,
		  todayBtn: true,
		  forceParse: true,
		  pickerPosition: "bottom-left"
	});
});
 function addEmployee(){
	 var url = "${rootPath}/employee_addUI.action";
	 window.location.href=url;
 }
 function updateEmployee(id){
	 var url = "${rootPath}/employee_updateUI.action?employee.employeeId="+id;
	 window.location.href=url;
 }
 function deleteEmployee(id){
	 var url = "${rootPath}/employee_delete.action?employee.employeeId="+id;
	 window.location.href=url;
 }
 function lookPreview(id){
	 var url = "${rootPath}/employee_front.action?employee.employeeId="+id;
	 window.parent.showT(url);
 }
 
</script>
</head>

<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="manage.jsp">首页</a><b class="tip"></b><a href="#">行政执法人员</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default panel-people">
			<form action="employee_queryAllEmployee" method="post" onsubmit = "return checkForm();">
			<input type="hidden" name="pageNow" value="${pageNow }"/>
				<div class="row" style="height:10px"></div>
				<!--div class="row">
					<div class="col-xs-1 searchFont">时间范围：</div> 
					<div class="col-xs-3">
						<div id="sTime" class="input-group date form_date">
							<input name="startTimeQuery" class="form-control" value="${startTimeQuery}">
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
					</div>
					<div class="col-xs-3">
						<div id="iTime" class="input-group date form_date">
							<input name="endTimeQuery" class="form-control" value="${endTimeQuery}">
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
					</div>
				</div-->
				
				<div class="row" style="height:10px"></div>
				<div class="row">
					<div class="col-xs-1 searchFont">关键字：</div>
					<div class="col-xs-3"><input type="text" name="titleQuery" maxlength = "45" class="form-control searchText" value="${titleQuery}"/></div>
					<div class="col-xs-1 searchFont">专兼职：</div>
					<div class="col-xs-3">
								<select name="fPTimeQuery" class="form-control searchText" value="${fPTimeQuery}">
									<option value="">---全部---</option>
									<option value="专职">专职</option>
									<option value="兼职">兼职</option>
								</select>
					</div>
					<div class="col-xs-3"><button type="submit" class="btn btn-primary" style="width: 100px;"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;查询</button></div>
				</div>
				<div class="row" style="height:10px"></div>
			    </form>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<button class="btn btn-success" type="button" onclick="addEmployee();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加行政执法人员</button>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<table class="table table-bordered">
				<thead>
					<tr>
					<!--th>执法证编号</th-->
			        <th>姓名</th>
			        <th>所属单位</th>
			        <th>移动电话</th>
			        <th>电子邮箱</th>
					<th>专职/兼职</th>
			       	<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="employeeList" id="employeeList" var="employee">
					<tr>
					<!--td><s:property value="employeeNumber"/> </td-->
			        <td><s:property value="employeeName"/> </td>
			        <td><s:property value="employeeJob"/> </td>
					<td><s:property value="employeeCell"/> </td>
					<td><s:property value="employeeEmail"/> </td>
					<td><s:property value="employeeFPTime"/> </td>
					<td>
						<button class="btn btn-primary btn-sm" type="button" onclick="updateEmployee('${employeeId}');" title="修改"><span class="glyphicon glyphicon-edit"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="lookPreview('${employeeId}');" title="查看"><span class="glyphicon glyphicon-search"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="deleteEmployee('${employeeId}');" title="删除"><span class="glyphicon glyphicon-remove"></span></button>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="7" style="padding: 5px;">
					<mytag:paging urlAction="employee_queryAllEmployee" type="2" />
					</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>
</body>
</html>