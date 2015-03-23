<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>地方性法规</title>
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
 function addLaws(){
	 var url = "${rootPath}/laws_addUI.action";
	 window.location.href=url;
 }
 function updateLaws(id){
	 var url = "${rootPath}/laws_updateUI.action?laws.lawsId="+id;
	 window.location.href=url;
 }
 function deleteLaws(id){
	 var url = "${rootPath}/laws_delete.action?laws.lawsId="+id;
	 window.location.href=url;
 }
 function lookPreview(id){
	 var url = "${rootPath}/laws_front.action?laws.lawsId="+id;
	 window.parent.showT(url);
 }
 function lookCount(){
	var url = "${rootPath}/laws_getCount.action";
	var downloadUrl = "${rootPath}/laws_downloadExcel.action";
	window.parent.showCount(url,downloadUrl);
 }
 
</script>
</head>

<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">地方性法规</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default panel-people">
			<form action="laws_queryAllLaws" method="post" class="form-inline" onsubmit="return checkSearchForm();">
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
					  		<div class="form-group searchFont">结束时间：</div> 
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
					  	<div class="form-group searchFont">领域类别：</div>
							<div class="form-group">
								<select name="fieldclassifyQuery" class="form-control searchText" value="${fieldclassifyQuery}">
									<option value="">---全部---</option>
									<option value="防震减灾综合">防震减灾综合</option>
									<option value="地震侦测预报">地震侦测预报</option>
									<option value="震灾预防">震灾预防</option>
									<option value="应急救援">应急救援</option>
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
				</div>
			    </form>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<button class="btn btn-success" type="button" onclick="addLaws();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加地方性法规</button>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default" style="padding: 0px;">
			<table class="table table-bordered table-condensed">
				<thead>
					<tr>
					<th>法规名称</th>
					<th>制定时间</th>
					<th>实施时间</th>
					<th>效力状况</th>
					<th >颁布机关</th>
					<th >操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="lawsList" id="lawsList" var="laws">
					<tr>
					   <s:if test="%{null!=lawsTitle&&lawsTitle.length()>10}">
			                  <td title="<s:property value="%{lawsTitle}" />"><s:property value="%{lawsTitle.substring(0, 10)}" />……</td>
			           </s:if>
			           <s:else>
			                  <td><s:property value="%{lawsTitle}" /></td>
			           </s:else>
					<td><s:property value="lawsSTime" /></td>	
					<td><s:property value="lawsITime" /></td>
					<td><s:property value="lawsETime" /></td>
					<td><s:property value="lawsPublisher" /></td>
					<td>
						<button class="btn btn-primary btn-sm" type="button" onclick="updateLaws('${lawsId}');" title="修改"><span class="glyphicon glyphicon-edit"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="lookPreview('${lawsId}');" title="查看"><span class="glyphicon glyphicon-search"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="deleteLaws('${lawsId}');" title="删除"><span class="glyphicon glyphicon-remove"></span></button>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="6" style="padding: 5px;">
					<mytag:paging urlAction="laws_queryAllLaws" type="2" />
					</td>
					</tr>
				</tfoot>
			</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>