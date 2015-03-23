<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>统计</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#countList").find("div").each(function(){
		if($(this).find("li").length <1){
			$(this).remove();
		}
	});
	$("#countList").children("li").each(function(){
		if($(this).next("div").length >0){
			$(this).css("cursor", "pointer");
		}
	});
	$("#countList li").click(function(){
		$(this).next("div").toggle(500);
	});
});
</script>
</head>
<body>
	<div style="margin-top: 10px;">
		<ul class="list-group" id="countList">
			<li class="list-group-item" style="background-color: #47a447;color: white;">
	          <span class="badge">${allCount}</span>合计
	        </li>
	        <li class="list-group-item" style="background-color: #d2322d;color: white;">
	          <span class="badge"><c:if test="${dataMap[loginUser.inchargeMent] eq null}">0</c:if>${dataMap[loginUser.inchargeMent]}</span>${loginUser.inchargeMent}
	        </li>
			<c:forEach items="${proList1}" var="p1">
				<li class="list-group-item" style="background-color: #428bca;color: white;">
		          <span class="badge"><c:if test="${dataMap[p1.provinceName] eq null}">0</c:if>${dataMap[p1.provinceName]}</span>${p1.provinceName}
		        </li>
		        <c:if test="${fn:length(proList2) >0}">
		        	<div style="margin-left: 0.5px;margin-right: 0.5px;display: none;">
			          	<ul class="list-group" style="margin-bottom: -1px;">
			          		<c:forEach items="${proList2}" var="p2">
			          			<c:if test="${p2.parentUnit eq p1.provinceName}">
			          				<li class="list-group-item" style="border-radius:0px;">
					          			<span class="badge"><c:if test="${dataMap[p2.provinceName] eq null}">0</c:if>${dataMap[p2.provinceName]}</span>${p2.provinceName}
					          		</li>
			          			</c:if>
			          		</c:forEach>
			          	</ul>
			          </div>
		        </c:if>
			</c:forEach> 
	    </ul>
	</div>
</body>
</html>