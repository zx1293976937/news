<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="../css/c.index.min.6ab424fdd99901dca2342bc9e6473113.css"
	type="text/css">
<link rel="stylesheet"
	href="../css/g.base.min.2beaa5623697f773d0f093148afc6e3e.css"
	type="text/css">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../top.jsp"%>
	<div class="main_w">
		<div class="citylist-box">
			<div class="hot-city">
				<s:iterator value="provinceList" var="province">
					<s:url id="test" action="statics_province">
						<s:param name="paramprovince" value="%{province}"></s:param>
						</br>
					</s:url>
					<s:a href="%{test}">${province}</s:a>
				</s:iterator>
			</div>
		</div>
	</div>
	<s:debug></s:debug>
</body>
</html>