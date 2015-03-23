<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<title>数据统计</title>

<link rel="stylesheet"
	href="../css/c.index.min.6ab424fdd99901dca2342bc9e6473113.css"
	type="text/css">
<link rel="stylesheet"
	href="../css/g.base.min.2beaa5623697f773d0f093148afc6e3e.css"
	type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
	<%@ include file="../top.jsp"%>
	
		<div class="main_w">
			<div class="citylist-box">
				<div class="hot-city">
					<s:iterator value="provinceList" var="province">
					<%-- <c:forEach var="province" items="${provinceList}"> --%>
						<%-- <c:url value="${province}" var="url"></c:url>
						<a href="${url}">${province}</a> --%>
						<s:url id="test" action="statics_province">
							<s:param name="paramprovince" value="%{province}"></s:param>
						</s:url>
						<s:a href="%{test}">${province}</s:a>
						</br>
					<%-- </c:forEach> --%>
					</s:iterator>
				</div>
			</div>
		</div>
	
<s:debug></s:debug>
</body>
</html>
