<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>新闻信息发布审批</title>
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
function approveNews(id){
	$("#hiddenId").val(id);
	$("#showTemplate").modal("show");
}
function closeTem(){
	$("#showTemplate").modal("hide");
}
function saveRelease(){
	var id = $("#hiddenId").val();
	var lenght = $("input[name=release]:checked").length;
	if(lenght<1){
		alert("请选择要发布的类型");
		return false;
	}
	var type="";
	$("input[name=release]:checked").each(function(){
		type+=$(this).val()+",";
	});
	
	type = type.substring(0,type.length-1);
	var url = "${rootPath}/anews_saveRelease.action?news.newsId="+id+"&type="+type;
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
	jsonArray.push({"name":"地方性法规","val":"5"});
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
			<form action="anews_approvedNews" method="post" class="form-inline">
			<input type="hidden" name="pageNow" value="${pageNow }"/>
			<input type="hidden" name="fieldQuery" value="${fieldQuery}"/>
			<input type="hidden" name="orderQuery" value="${orderQuery}"/>
				<div class="row">
			  	<div class="col-xs-12 form-x">
				  <div class="form-group">
				  	<div class="form-group searchFont">关键字：</div>
				    <input type="text" name="titleQuery" class="form-control searchText" value="${titleQuery}"/>
				  </div>
				  <div class="form-group">
				  	<div class="form-group searchFont">审核：</div>
				    <select name="approveQuery" >
							<c:forEach items="${approvedMap}" var="approve">
								<option value="${approve.key}" <c:if test="${approve.key eq approveQuery}">selected="selected"</c:if> >${approve.value}</option>
							</c:forEach>
						</select>
				  </div>
			  	</div>
			  </div>
			  <div class="row" style="height:5px"></div>
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
				  <div class="form-group">
				    <button type="submit" class="btn btn-primary" style="width: 100px;"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;查询</button>
				  </div>
				  <!-- <div class="form-group">
				    <button type="button" class="btn btn-primary" style="width: 100px;" onclick="lookCount();"><span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;统计</button>
				  </div> -->
			    </div>
			  </div>
			  </form>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<!-- <div class="row">
		<div class="col-xs-12">
			<button class="btn btn-success" type="button" onclick="addNews();"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;添加新闻信息发布</button>
		</div>
	</div> -->
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
						<s:if test="%{submitFlg == 1}">
							<button class="btn btn-default btn-sm" type="button" onclick="approveNews('${newsId}');" title="审核"><span class="glyphicon glyphicon-ok"></span></button>
					    </s:if>
					    <s:if test="%{submitFlg == 2}">
					    	已审核
					    </s:if>
					</td>
					</tr>
					</s:iterator>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="2" style="padding: 5px;">
						<mytag:paging urlAction="anews_approvedNews" type="2" />
					</td>
					</tr>
				</tfoot>
			</table>
			</div>
		</div>
	</div>
</div>
<div id="showTemplate" class="modal fade in" style="z-index: 3050;">
  <div class="modal-dialog"  style="width: 750px;"> 
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" onclick="closeTem();">&times;</button>
        <h4 class="modal-title">发布</h4>
      </div>
      <div class="modal-body" id="showBody">
      	<div class="btn-group" data-toggle="buttons">
      	  <c:forEach items="${releaseMap}" var="release">
		  <label class="btn btn-default">
		    <input type="checkbox" name="release" value="${release.key}"> ${release.value}
		  </label>
		  </c:forEach>
		</div>
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" onclick="saveRelease();">保存</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
<input type="hidden" id="hiddenId"/>
</body>
</html>