<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>行政执法队伍</title>
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
 function addEnforcement(){
	 var url = "${rootPath}/enforcement_addUI.action";
	 window.location.href=url;
 }
 function updateEnforcement(id){
	 var url = "${rootPath}/enforcement_updateUI.action?enforcement.enforcementId="+id;
	 window.location.href=url;
 }
 function deleteEnforcement(id){
	 var url = "${rootPath}/enforcement_delete.action?enforcement.enforcementId="+id;
	 window.location.href=url;
 }
 function lookPreview(id){
	 var url = "${rootPath}/enforcement_front.action?enforcement.enforcementId="+id;
	 window.parent.showT(url);
 }
</script>
</head>

<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="manage.jsp">首页</a><b class="tip"></b><a href="#">行政执法队伍</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default panel-people">
			<form action="enforcement_queryAllEnforcement" method="post" onsubmit = "return checkForm();">
			<input type="hidden" name="pageNow" value="${pageNow }"/>
				<div class="row" style="height:10px"></div>
			<%--	<div class="row">
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
				</div>   --%>
				<div class="row">
					<div class="col-xs-1 searchFont">关键字：</div>
					<div class="col-xs-3"><input type="text" name="titleQuery" maxlength = "45" class="form-control searchText" value="${titleQuery}"/></div>
					<div class="col-xs-1 searchFont">专职/兼职：</div>
							<div class="col-xs-3">
								<select name="fpifyQuery" class="form-control searchText" value="${fpifyQuery}">
									<option value="">---全部---</option>
									<option value="专职">专职</option>
									<option value="兼职">兼职</option>
									<option value="其他">其他</option>
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
			<button class="btn btn-success" type="button" onclick="addEnforcement();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加行政执法队伍</button>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<table class="table table-bordered">
				<thead>
					<tr>
					<th>执法执法队伍名称</th>
	                <th>独立设置</th>
	                <th>负责人姓名</th>
	                <th>负责人电话</th>
	                <th>负责人邮箱</th>
	                <th>下属单位</th>
					<th>专职/兼职</th>
	                <!-- <th>上级单位</th> -->
	            	<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="enforcementList" id="enforcementList" var="enforcement">
					<tr>
					<td><s:property value="enforcementName"/> </td>
					<td><s:property value="enforcementProperty"/> </td>
					<td><s:property value="enforcementIncharge"/> </td>
					<td><s:property value="enforcementInchargePhone"/> </td>
					<td><s:property value="enforcementInchargeEmail"/> </td>
					<td><s:property value="enforcementProvince"/> </td>
					<td><s:property value="enforcementFPTime"/> </td>
					<%-- <td><s:property value="enforcementParentUnit"/> </td> --%>
					<td>
						<button class="btn btn-primary btn-sm" type="button" onclick="updateEnforcement('${enforcementId}');" title="修改"><span class="glyphicon glyphicon-edit"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="lookPreview('${enforcementId}');" title="查看"><span class="glyphicon glyphicon-search"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="deleteEnforcement('${enforcementId}');" title="删除"><span class="glyphicon glyphicon-remove"></span></button>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="8" style="padding: 5px;">
					<mytag:paging urlAction="enforcement_queryAllEnforcement" type="2" />
					</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>
</body>
</html>