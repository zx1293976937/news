﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>地方政府规章列表</title>
<script>
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
</script>
</head>
<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">地方政府规章列表</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default panel-people">
			<form action="regular_list" method="post" class="form-inline" onsubmit="return checkSearchForm();">
			<input type="hidden" name="pageNow" value="${pageNow }"/>
			  <div class="row">
			  	<div class="col-xs-12">
			  	  <div class="form-group searchFont">标题：</div>
				  <div class="form-group">
				    <input type="text" name="titleQuery" class="form-control searchText" value="${titleQuery}" maxlength="45"/>
				  </div>
				  <div class="form-group searchFont">省市：</div>
				  <div class="form-group">
				    <select name="provinceQuery" >
							<option value="">--请选择--</option>
							<c:forEach items="${provinceList}" var="province">
								<option value="${province}" <c:if test="${province eq provinceQuery}">selected="selected"</c:if> >${province}</option>
							</c:forEach>
						</select>
				  </div>
			  	</div>
			  </div>
			  <div class="row" style="height:5px"></div>
			  <div class="row">
			  	<div class="col-xs-12">
			  	  <div class="form-group searchFont">时间范围：</div> 
				  <div class="form-group">
				    	<div id="sTime" class="input-group date form_date">
							<input name="startTimeQuery" class="form-control" value="${startTimeQuery}">
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
				  </div>
				  <div class="form-group searchFont"></div> 
				  <div class="form-group">
				    	<div id="iTime" class="input-group date form_date">
							<input name="endTimeQuery" class="form-control" value="${endTimeQuery}">
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
				  </div>
				  <div class="form-group">
				    <button type="submit" class="btn btn-primary" style="width: 100px;"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;查询</button>
				  </div>
			  </div>
			  </div>
			  <div class="row" style="height:5px"></div>
			 </form>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default" style="padding: 0px;">
			<table class="table table-bordered table-condensed">
				<thead>
					<tr>
					<th>规章名称</th>
					<th>修改时间</th>
					</tr>
				</thead>
				<tbody>
					<s:if test="regularList.size()>5">
								<s:bean name="org.apache.struts2.util.Counter" id="counter">
									<s:param name="first" value="1" />
									<s:param name="last" value="regularList.size()" />
									<s:iterator value="regularList">
										<tr>
											<td><s:url id="test" action="regular_front">
													<s:param name="regular.regularId" value="%{regularId}" />
													<%-- <s:param name="regular.regularContent"
														value="%{regularContent}" /> --%>
												</s:url> <s:a href="%{test}">${regularTitle}</s:a></td><td style="width:30%"><s:a>${regularUTime}</s:a></td>
										</tr>
									</s:iterator>
								</s:bean>
							</s:if>
							<s:else>
								<s:bean name="org.apache.struts2.util.Counter" id="counter">
									<s:param name="first" value="1" />
									<s:param name="last" value="regularList.size()" />
									<s:iterator value="regularList">
										<tr>
											<td><s:url id="test" action="regular_front">
													<s:param name="regular.regularId" value="%{regularId}" />
													<%-- <s:param name="regular.regularContent"
														value="%{regularContent}" /> --%>
												</s:url> <s:a href="%{test}">${regularTitle}</s:a></td><td style="width:30%"><s:a>${regularUTime}</s:a></td>
										</tr>
									</s:iterator>
								</s:bean>
							</s:else>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="2" style="padding: 5px;">
					<mytag:paging urlAction="regular_list" type="1" />
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