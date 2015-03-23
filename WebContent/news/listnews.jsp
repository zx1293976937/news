<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>新闻信息发布</title>
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
 function addNews(){
	 var url = "${rootPath}/news_addUI.action";
	 window.location.href=url;
 }
 function updateNews(id){
	 var url = "${rootPath}/news_updateUI.action?news.newsId="+id;
	 window.location.href=url;
 }
 function deleteNews(id){
	 var url = "${rootPath}/news_delete.action?news.newsId="+id;
	 window.location.href=url;
 }
 function lookPreview(id){
	 var url = "${rootPath}/news_front.action?news.newsId="+id;
	 window.parent.showT(url);
 }
 function submitNews(id){
	 var url = "${rootPath}/news_submit.action?news.newsId="+id;
	 window.location.href=url;
 }
 function lookCount(){
		var jsonArray = new Array();
		var url = "${rootPath}/anews_getCount.action";
		var downloadUrl = "${rootPath}/anews_downloadExcel.action";
		jsonArray.push({"name":"法律","val":"1"});
		jsonArray.push({"name":"行政法规","val":"2"});
		jsonArray.push({"name":"部门规章","val":"3"});
		jsonArray.push({"name":"地方性法规","val":"4"});
		jsonArray.push({"name":"地方政府规章","val":"5"});
		jsonArray.push({"name":"最新资讯","val":"6"});
		jsonArray.push({"name":"地方动态","val":"7"});
		jsonArray.push({"name":"行政执法","val":"8"});
		window.parent.showCount(url,downloadUrl,jsonArray);
		
	}
</script>
</head>
<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">新闻信息发布</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default panel-people">
			<form action="news_queryAllNews" method="post" onsubmit="return checkSearchForm();" class="form-inline">
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
			<button class="btn btn-success" type="button" onclick="addNews();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加新闻信息发布</button>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default" style="padding: 0px;">
			<table class="table table-bordered">
				<thead>
					<tr>
					<th>新闻信息发布标题</th>
					<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="newsList" id="newsList" var="news">
					<tr>
					<td><s:property value="newsTitle" /></td>
					<td>
						<s:if test="%{submitFlg != 2}">
							<button class="btn btn-primary btn-sm" type="button" onclick="updateNews('${newsId}');" title="修改"><span class="glyphicon glyphicon-edit"></span></button>
						</s:if>
						<button class="btn btn-default btn-sm" type="button" onclick="lookPreview('${newsId}');" title="查看"><span class="glyphicon glyphicon-search"></span></button>
						<button class="btn btn-default btn-sm" type="button" onclick="deleteNews('${newsId}');" title="删除"><span class="glyphicon glyphicon-remove"></span></button>
						<s:if test="%{submitFlg == 0}">
							<button class="btn btn-default btn-sm" type="button" onclick="submitNews('${newsId}');" title="提交"><span class="glyphicon glyphicon-ok"></span></button>
					    </s:if>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="2" style="padding: 5px;">
						<mytag:paging urlAction="news_queryAllNews" type="2" />
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