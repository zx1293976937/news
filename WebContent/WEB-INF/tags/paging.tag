<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>
<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="urlAction" required="true" rtexprvalue="true"%>
<%@ attribute name="type" required="true" %>
<style>
	.spanIE{
		padding: 3px 10px 4px 12px !important;
	}
	.spanFireFox{
		padding: 3px 10px 5px 12px !important;
	}
	.spanChrome{
		padding: 3px 10px 2.5px 12px !important;
	}
</style>
<script>
	$(document).ready(function(){
		var userAgent = window.navigator.userAgent.toLowerCase();
		if(userAgent.indexOf("chrome")>0) { 
			$("#toSpan").addClass("spanChrome");
		}else if(userAgent.indexOf("firefox")>0) { 
			$("#toSpan").addClass("spanFireFox");
		}else{
			$("#toSpan").addClass("spanIE");
		}
	});
	var k = '${k}';
	function pageTo(param){
		var val = $("#pag").val();
		if(val == ''){
			return false;
		}
		if(isNaN(val)){
			alert('请输入数字');
			return false;
		}
		if(val>k){
			alert('请输入范围内的页码');
			$("#pag").val("");
			return false;
		}
		var action = param +"&pageNow="+val;
		window.location.href=action;
	}
</script>
	<div class="paging">
				<ul class="pagination" style="margin: 0px;">
				<c:url var="url_pre" value="${urlAction}">
					<c:param name="pageNow" value="${pageNow-1}"></c:param>
					<c:param name="titleQuery" value="${titleQuery}"></c:param>
					<c:param name="startTimeQuery" value="${ startTimeQuery}"></c:param>
					<c:param name="endTimeQuery" value="${endTimeQuery}"></c:param>
					<c:param name="fieldQuery" value="${fieldQuery}"></c:param>
					<c:param name="orderQuery" value="${orderQuery}"></c:param>
					<c:if test="${type eq 1}">
						<c:param name="provinceQuery" value="${provinceQuery}"></c:param>
					</c:if>
					<c:if test="${!empty news.type}">
						<c:param name="news.type" value="${news.type}"></c:param>
					</c:if>
				</c:url>
				<c:url var="url_next" value="${urlAction}">
					<c:param name="pageNow" value="${pageNow+1}"></c:param>
					<c:param name="titleQuery" value="${titleQuery}"></c:param>
					<c:param name="startTimeQuery" value="${startTimeQuery}"></c:param>
					<c:param name="endTimeQuery" value="${endTimeQuery}"></c:param>
					<c:param name="fieldQuery" value="${fieldQuery}"></c:param>
					<c:param name="orderQuery" value="${orderQuery}"></c:param>
					<c:if test="${type eq 1}">
						<c:param name="provinceQuery" value="${provinceQuery}"></c:param>
					</c:if>
					<c:if test="${!empty news.type}">
						<c:param name="news.type" value="${news.type}"></c:param>
					</c:if>
				</c:url>
				<c:url var="url_jump" value="${urlAction}">
					<c:param name="titleQuery" value="${titleQuery}"></c:param>
					<c:param name="startTimeQuery" value="${startTimeQuery}"></c:param>
					<c:param name="endTimeQuery" value="${endTimeQuery}"></c:param>
					<c:param name="fieldQuery" value="${fieldQuery}"></c:param>
					<c:param name="orderQuery" value="${orderQuery}"></c:param>
					<c:if test="${type eq 1}">
						<c:param name="provinceQuery" value="${provinceQuery}"></c:param>
					</c:if>
					<c:if test="${!empty news.type}">
						<c:param name="news.type" value="${news.type}"></c:param>
					</c:if>
				</c:url>
				<li>
					<span>共${intRowCount} 记录	   第${pageNow}页  </span>
				</li>
				<c:choose>
					<c:when test="${pageNow eq 1}"><li class="disabled"><a>最前一页</a></li></c:when>
					<c:otherwise>
						<c:if test="${k ne 0}"><li><a href="${url_pre}">上一页</a></li></c:if>
						<c:if test="${k eq 0}"><li class="disabled"><a>最前一页</a></c:if>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${pageNow eq k}"><li class="disabled"><a>最后一页</a></li></c:when>
					<c:otherwise><c:if test="${k ne 0}"><li><a href="${url_next}">下一页</a></li></c:if></c:otherwise>
				</c:choose>
				<li>
					<span style="" id="toSpan">跳转至<input type="text" id="pag" style="width: 40px !important;margin: 0px 5px;"/>页</span>
				</li>
				<li>
					<span style="padding: 0px;padding-bottom: 1px;">
						<button class="btn btn-default btn-sm" type="button" style="border: 0px;" onclick="pageTo('${url_jump}');">确定</button>
					</span>
				</li>
				</ul>
			</div>