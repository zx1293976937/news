<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>法制宣传</title>
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
 function addPropaganda(){
	 var url = "${rootPath}/propaganda_addUI.action";
	 window.location.href=url;
 }
 function updatePropaganda(id){
	 var url = "${rootPath}/propaganda_updateUI.action?propaganda.propagandaId="+id;
	 window.location.href=url;
 }
 function deletePropaganda(id){
	 var url = "${rootPath}/propaganda_delete.action?propaganda.propagandaId="+id;
	 window.location.href=url;
 }
 function lookPreview(id){
	 var url = "${rootPath}/propaganda_front.action?propaganda.propagandaId="+id;
	 window.parent.showT(url);
 }
 function lookCount(){
	var url = "${rootPath}/propaganda_getCount.action";
	var downloadUrl = "${rootPath}/propaganda_downloadExcel.action";
	window.parent.showCount(url,downloadUrl);
 }
</script>
</head>

<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">法制宣传</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default panel-people">
			<form action="propaganda_queryAllPropaganda" method="post" onsubmit = "return checkForm();"  class="form-inline">
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
					  	<div class="form-group searchFont">受众人数：</div>
							<div class="form-group">
								<select name="peopleQuery" class="form-control searchText" value="${peopleQuery}">
									<option value="">---全部---</option>
									<option value="100以下">100以下</option>
									<option value="100--500人">100--500人</option>
									<option value="500人以上">500人以上</option>
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
			<button class="btn btn-success" type="button" onclick="addPropaganda();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加法制宣传</button>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<table class="table table-bordered">
				<thead>
					<tr>
					<th>法制宣传名称</th> 
					<th>开始时间</th>  
					<!-- <th>法制宣传地点</th>  --> 
					<th>受众人数</th>
					<th>组织单位</th> 
					<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="propagandaList" id="propagandaList" var="propaganda">
					<tr>
					<td><s:property value="propagandaTitle"/> </td>  
					<td><s:property value="propagandaSTime"/> </td>
					<%-- <td><s:property value="propagandaLocation"/> </td> --%>
					<td><s:property value="propagandaPeople"/> </td>
					<td><s:property value="propagandaOrgnizor"/> </td>
					<td>
						<button class="btn btn-primary btn-sm" type="button" onclick="updatePropaganda('${propagandaId}');" title="修改"><span class="glyphicon glyphicon-edit"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="lookPreview('${propagandaId}');" title="查看"><span class="glyphicon glyphicon-search"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="deletePropaganda('${propagandaId}');" title="删除"><span class="glyphicon glyphicon-remove"></span></button>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="6" style="padding: 5px;">
					<mytag:paging urlAction="propaganda_queryAllPropaganda" type="2" />
					</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>
</body>
</html>