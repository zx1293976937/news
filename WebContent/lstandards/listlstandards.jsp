<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>地方标准</title>
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
 function addLstandards(){
	 var url = "${rootPath}/lstandards_addUI.action";
	 window.location.href=url;
 }
 function updateLstandards(id){
	 var url = "${rootPath}/lstandards_updateUI.action?lstandards.lstandardsId="+id;
	 window.location.href=url;
 }
 function deleteLstandards(id){
	 var url = "${rootPath}/lstandards_delete.action?lstandards.lstandardsId="+id;
	 window.location.href=url;
 }
 function lookPreview(id){
	 var url = "${rootPath}/lstandards_front.action?lstandards.lstandardsId="+id;
	 window.parent.showT(url);
 }
 function lookCount(){
	var url = "${rootPath}/lstandards_getCount.action";
	var downloadUrl = "${rootPath}/lstandards_downloadExcel.action";
	window.parent.showCount(url,downloadUrl);
 }
</script>
</head>
<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">地方标准</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default panel-people">
			<form action="lstandards_queryAllLstandards" method="post" class="form-inline" onsubmit="return checkSearchForm();">
			<input type="hidden" name="pageNow" value="${pageNow }"/>
			<input type="hidden" name="fieldQuery" value="${fieldQuery}"/>
			<input type="hidden" name="orderQuery" value="${orderQuery}"/>
				<div class="row">
					<div class="col-xs-12 form-x">
					 <div class="form-group">
				  		<div class="form-group searchFont">时间范围：</div> 
				  		<div class="form-group">
					    	<div id="sTime" class="input-group date form_date">
								<input name="startTimeQuery" class="form-control" value="${startTimeQuery}">
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
							</div>
						</div>
					  </div>
					  <div class="form-group">
					  		<div class="form-group searchFont"></div> 
					  		<div class="form-group">
						  		<div id="iTime" class="input-group date form_date">
									<input name="endTimeQuery" class="form-control" value="${endTimeQuery}">
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								</div>
					  		</div>
					  </div>
					</div>
				</div>
				<div class="row" style="height:5px"></div>
				<div class="row">
					<div class="col-xs-12 form-x">
					  <div class="form-group">
					  	<div class="form-group searchFont">关键字：</div>
					    <input type="text" name="titleQuery" class="form-control searchText" value="${titleQuery}" maxlength="45"/>
					  </div>
					  <div class="form-group">
					  	<div class="form-group searchFont">标准类别：</div>
							<div class="form-group">
								<select name="categoryQuery" class="form-control searchText" value="${categoryQuery}">
									<option value="">---全部---</option>
									<option value="国家标准">国家标准</option>
									<option value="地方标准">地方标准</option>
									<option value="行业标准">行业标准</option>
									<option value="企业标准">企业标准</option>
								</select>
							</div>
						</div>
					  <div class="form-group">
					  	<div class="form-group searchFont"></div>
					    <button type="submit" class="btn btn-primary" style="width: 100px;"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;查询</button>
					    <button type="button" class="btn btn-primary" style="width: 100px;" onclick="lookCount();"><span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;统计</button>
					  </div>
					</div>
				</div>
			    </form>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<button class="btn btn-success" type="button" onclick="addLstandards();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加地方标准</button>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<table class="table table-bordered">
				<thead>
					<tr>
					<th>标准编号</th>
	                <th>标准名称</th>
	                <th>制定时间</th>
	                <th>实施时间</th>
	                <th>失效时间</th>
	                <th>颁布机关</th>
	            	<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="lstandardsList" id="lstandardsList" var="lstandards">
					<tr>
					<td><s:property value="lstandardsNumber"/> </td>  
				    <td><s:property value="lstandardsTitle"/> </td>  
					<td><s:property value="lstandardsSTime"/> </td>
					<td><s:property value="lstandardsITime"/> </td>
					<td><s:property value="lstandardsETime"/> </td>
					<td><s:property value="lstandardsPublishUser"/> </td>
					<td>
						<button class="btn btn-primary btn-sm" type="button" onclick="updateLstandards('${lstandardsId}');" title="修改"><span class="glyphicon glyphicon-edit"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="lookPreview('${lstandardsId}');" title="查看"><span class="glyphicon glyphicon-search"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="deleteLstandards('${lstandardsId}');" title="删除"><span class="glyphicon glyphicon-remove"></span></button>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="7" style="padding: 5px;">
					<mytag:paging urlAction="lstandards_queryAllLstandards" type="2" />
					</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>
</body>
</html>