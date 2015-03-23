<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase1.jsp"%>
<title>工作机构</title>
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
	sortAll('${fieldQuery}','${orderQuery}');
});
 function addLawagency(){
	 var url = "${rootPath}/lawagency_addUI.action";
	 window.location.href=url;
 }
 function updateLawagency(id){
	 var url = "${rootPath}/lawagency_updateUI.action?lawagency.lawagencyId="+id;
	 window.location.href=url;
 }
 function deleteLawagency(id){
	 var url = "${rootPath}/lawagency_delete.action?lawagency.lawagencyId="+id;
	 window.location.href=url;
 }
 function lookPreview(id){
	 var url = "${rootPath}/lawagency_front.action?lawagency.lawagencyId="+id;
	 window.parent.showT(url);
 }
 
</script>
</head>

<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">工作机构</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default panel-people">
			<form action="lawagency_queryAllLawagency" method="post" onsubmit="return checkSearchForm();">
			<input type="hidden" name="pageNow" value="${pageNow }"/>
			<input type="hidden" name="fieldQuery" value="${fieldQuery}"/>
			<input type="hidden" name="orderQuery" value="${orderQuery}"/>
				<div class="row" style="height:10px"></div>
				<div class="row">
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
				</div>
				
				<div class="row" style="height:10px"></div>
				<div class="row">
					<div class="col-xs-1 searchFont">关键字：</div>
					<div class="col-xs-3"><input type="text" name="titleQuery" maxlength = "45" class="form-control searchText" value="${titleQuery}"/></div>
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
			<button class="btn btn-success" type="button" onclick="addLawagency();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加工作机构</button>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<table class="table table-bordered">
				<thead>
					<tr>
					<th>机构名称</th>
					<!-- <th>人员编制</th> -->
					<th>主要负责人</th>
					<!-- th>主要负责人性别</th>
					<th>分管领导姓名</th> -->
					<th>主移动电话</th>
					<th>电子邮箱</th>
					<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="lawagencyList" id="lawagencyList" var="lawagency">
					<tr>
					<td><s:property value="lawagencyTitle"/></td>
					<%-- <td><s:property value="lawagencyInchargeNumber"/></td> --%>
					<td><s:property value="lawagencyInchargeName"/></td>
					<%-- <td><s:property value="lawagencyInchargeSex"/></td>
					<td><s:property value="lawagencyLeadershipName"/></td> --%>
					<td><s:property value="lawagencyMobilePhone"/></td>
					<td><s:property value="lawagencyInchargeEmail"/></td>
					<td>
						<button class="btn btn-primary btn-sm" type="button" onclick="updateLawagency('${lawagencyId}');" title="修改"><span class="glyphicon glyphicon-edit"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="lookPreview('${lawagencyId}');" title="查看"><span class="glyphicon glyphicon-search"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="deleteLawagency('${lawagencyId}');" title="删除"><span class="glyphicon glyphicon-remove"></span></button>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="7" style="padding: 5px;">
					<mytag:paging urlAction="lawagency_queryAllLawagency" type="2" />
					</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
if($('#frame_content',window.parent.document))
	$('#frame_content',window.parent.document).css('height',$(document).height() + 'px');
</script>
</body>
</html>