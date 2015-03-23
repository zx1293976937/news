<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>法制培训</title>
<script type="text/javascript">
 function addTrain(){
	 var url = "${rootPath}/train_addUI.action";
	 window.location.href=url;
 }
 function updateTrain(id){
	 var url = "${rootPath}/train_updateUI.action?train.trainId="+id;
	 window.location.href=url;
 }
 function deleteTrain(id){
	 var url = "${rootPath}/train_delete.action?train.trainId="+id;
	 window.location.href=url;
 }
 function lookPreview(id){
	 var url = "${rootPath}/train_front.action?train.trainId="+id;
	 window.parent.showT(url);
 }
 function lookCount(){
	var url = "${rootPath}/train_getCount.action";
	var downloadUrl = "${rootPath}/train_downloadExcel.action";
	window.parent.showCount(url,downloadUrl);
 }
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
</script>
</head>

<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">法制培训</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default panel-people">
			<form action="train_queryAllTrain" method="post" onsubmit = "return checkForm();" class="form-inline">
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
					  	<div class="form-group searchFont">培训对象：</div>
							<div class="form-group">
								<select name="peopleQuery" class="form-control searchText" value="${peopleQuery}">
									<option value="">---全部---</option>
									<option value="全员选择">全员选择</option>
									<option value="领导干部">领导干部</option>
									<option value="执法人员">执法人员</option>
									<option value="其他">其他</option>
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
			<button class="btn btn-success" type="button" onclick="addTrain();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加法制培训</button>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<table class="table table-bordered">
				<thead>
					<tr>
					<th>培训名称</th> 
					<th >开班时间</th>
					<!-- <th >结束时间</th>   -->
					<!-- <th >培训班地点</th>   -->
					<!-- <th >培训对象</th> -->
					<th >培训人数</th>
					<th >组织单位</th>
					<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="trainList" id="trainList" var="train">
					<tr>
					<td><s:property value="trainTitle"/> </td>  
					<td><s:property value="trainSTime"/> </td>
					<%-- <td><s:property value="trainETime"/> </td> --%>
					<%-- <td><s:property value="trainLocation"/> </td> --%>
					<%-- <td><s:property value="trainPeople"/> </td> --%>
					<td><s:property value="trainStatics"/> </td>
					<td><s:property value="trainHost"/> </td>
					<td>
						<button class="btn btn-primary btn-sm" type="button" onclick="updateTrain('${trainId}');" title="修改"><span class="glyphicon glyphicon-edit"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="lookPreview('${trainId}');" title="查看"><span class="glyphicon glyphicon-search"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="deleteTrain('${trainId}');" title="删除"><span class="glyphicon glyphicon-remove"></span></button>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="7" style="padding: 5px;">
					<mytag:paging urlAction="train_queryAllTrain" type="2" />
					</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>
</body>
</html>