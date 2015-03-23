<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase1.jsp"%>
<title>法制工作机构列表</title>
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
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">法制工作机构列表</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default panel-people">
			<form action="lawagency_list" method="post" class="form-inline" onsubmit="return checkSearchForm();">
			<input type="hidden" name="pageNow" value="${pageNow }"/>
			  <div class="row">
			  	<div class="col-xs-12">
			  	  <div class="form-group searchFont">关键字：</div>
				  <div class="form-group">
				    <input type="text" name="titleQuery" maxlength = "45" class="form-control searchText" value="${titleQuery}"/>
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
				<div class="form-group">
				    <button type="submit" class="btn btn-primary" style="width: 100px;"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;查询</button>
				  </div>
				  </div>

			  </div>
			  <!--div class="row" style="height:5px"></div>
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
			  </div-->
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
					<th>机构名称</th>
					<th>通讯地址</th>
					<th>邮政编码</th>
					<th>主要负责人</th>
					<th>工作电话</th>
					<th>移动电话</th>
					<th>电子邮箱</th>
					<!--th>修改时间</th-->
					</tr>
				</thead>
				<tbody>
				<s:if test="%{lawagencyList.size()>3}">
								<s:bean name="org.apache.struts2.util.Counter" id="counter">
									<s:param name="first" value="1" />
									<s:param name="last" value="lawagencyList.size()" />
									<s:iterator value="lawagencyList">
										<tr>
											<td><s:url id="test" action="lawagency_front">
													<s:param name="lawagency.lawagencyId"
														value="%{lawagencyId}" />
													<s:param name="lawagency.lawagencyTitle"
														value="%{lawagencyTitle}" />
												</s:url> <s:a href="%{test}">${lawagencyTitle}</s:a></td>
												<td>${lawagencyAddress}</td>
												<td>${lawagencyZip}</td>
												<td>${lawagencyInchargeName}</td>
												<td>${lawagencyPhone}</td>
												<td>${lawagencyMobilePhone}</td>
												<td>${lawagencyInchargeEmail}</td>
												<!--td>${lawagencyUTime}</td-->
										</tr>
									</s:iterator>
								</s:bean>
							</s:if>
							<s:else>
								<s:bean name="org.apache.struts2.util.Counter" id="counter">
									<s:param name="first" value="1" />
									<s:param name="last" value="lawagencyList.size()" />
									<s:iterator value="lawagencyList">
										<tr>
											<td><s:url id="test" action="lawagency_front">
													<s:param name="lawagency.lawagencyId"
														value="%{lawagencyId}" />
													<s:param name="lawagency.lawagencyTitle"
														value="%{lawagencyTitle}" />
												</s:url> <s:a href="%{test}">${lawagencyTitle}</s:a></td>
												<td>${lawagencyAddress}</td>
												<td>${lawagencyZip}</td>
												<td>${lawagencyInchargeName}</td>
												<td>${lawagencyPhone}</td>
												<td>${lawagencyMobilePhone}</td>
												<td>${lawagencyInchargeEmail}</td>
												<!--td>${lawagencyUTime}</td-->
										</tr>
									</s:iterator>
								</s:bean>
							</s:else>
				</tbody>
				<tfoot>
					<tr>
					<td colspan="2" style="padding: 5px;">
					<mytag:paging urlAction="lawagency_list" type="1" />
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