<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>机构管理</title>
<script type="text/javascript">
 function addProvince(){
	 var url = "${rootPath}/province_addUI.action";
	 window.location.href=url;
 }
 function updateProvince(id){
	 var url = "${rootPath}/province_updateUI.action?province.provinceId="+id;
	 window.location.href=url;
 }
 function deleteProvince(id){
	 var url = "${rootPath}/province_delete.action?province.provinceId="+id;
	 window.location.href=url;
 }
</script>
</head>
<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">机构管理</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<button class="btn btn-success" type="button" onclick="addProvince();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加机构</button>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<table class="table table-bordered">
				<thead>
					<tr>
					<th >机构名称</th>
					<th >上级单位</th>
					<th >单位编码</th>
					<th >操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="provinceList" id="provinceList" var="province">
					<tr>
					<td><s:property value="provinceName" /></td>
					<td><s:property value="parentUnit" /></td>
					<td><s:property value="priority" /></td>
					<td>
						<button class="btn btn-primary btn-sm" type="button" onclick="updateProvince('${provinceId}');" title="修改"><span class="glyphicon glyphicon-edit"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="deleteProvince('${provinceId}');" title="删除"><span class="glyphicon glyphicon-remove"></span></button>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="4" style="padding: 5px;">
					<mytag:paging urlAction="province_queryAllProvince" type="2" />
					</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>
</body>
</html>