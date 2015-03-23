<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="mytag" tagdir="/WEB-INF/tags" %>
<c:set scope="page" var="rootPath" value="${pageContext.request.contextPath}" />
<!-- jQuery -->
<script type="text/javascript" src="${rootPath}/js/jquery-1.9.1.js" ></script>
<script type="text/javascript" src="${rootPath}/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- Bootstrap3  -->
<link href="${rootPath}/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="${rootPath}/js/bootstrap.js" ></script>
<!-- 全局CSS  -->
<link href="${rootPath}/css/otherCss.css" rel="stylesheet">
<!-- 日期控件 -->
<link href="${rootPath}/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${rootPath}/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="${rootPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
<!-- 字段排序 -->
<script type="text/javascript" src="${rootPath}/js/sortAll.js" ></script>
<!-- 验证 -->
<script type="text/javascript" src="${rootPath}/js/check.js" ></script>
<!--[if lt IE 11]>
<script src="js/ie/respond.min.js"></script>
<![endif]-->
<!-- <%=request.getRequestURI()%> -->
<c:if test="${!empty loginUser}">
<script>
$(function(){
	$(window.parent.document).find("#frame_content").load(function(){
		var main = $(window.parent.document).find("#frame_content");
		var thisheight = $(document).height()+20;
		var zHeight = $(window.parent.document).height() - 210;
		if(parseInt(thisheight) > parseInt(zHeight)){
			main.height(thisheight);
		}else{
			main.height(zHeight);
		} 
	});
});
</script>
</c:if>

<script>
function checkSearchForm(){
	 if(!checkSearchTime()){
		alert("请输入正确的时间范围"); 
		return false;
	 }
}
</script>