<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>规范性文件列表</title>
<!--<link rel="stylesheet" type="text/css" href="css/css.css">-->
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css"
	href="css/4028815e2c15f638012c162e57ad0005.css">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
</head>
<body>
	<style>
#dindex {
	width: 972px;
	margin: auto;
	background: #FFFFFF;
}

#dindex_1 {
	width: 970px;
	height: 80px;
	margin: 0 auto;
}

#dindex_2 {
	width: 968px;
	height: 600px;
	margin: 0 auto;
	margin-top: 2px;
}

#dindex_3 {
	width: 968px;
	height: 87px;
	margin-top: 5px;
	clear: both;
}
</style>

	<DIV id="dindex">
<%@ include file="../top_front.jsp" %>
		<div id="dindex_2" class="tjdzj_listnews">
			<h2>
				<a>您所在的位置</a>-><a href="index.jsp">首页</a>-><a>规范性文件列表</a>
			</h2>
			<ul>
				<li>
					<table width="90%" border="0">
						<s:if test="documentList.size()>5">
							<s:bean name="org.apache.struts2.util.Counter" id="counter">
								<s:param name="first" value="1" />
								<s:param name="last" value="documentList.size()" />
								<s:iterator value="documentList">
									<tr>
										<td><s:url id="test" action="document_front">
												<s:param name="document.documentId" value="%{documentId}" />
												<s:param name="document.documentContent"
													value="%{documentContent}" />
											</s:url> <s:a href="%{test}">${documentTitle}</s:a></td>
									</tr>
								</s:iterator>
							</s:bean>
						</s:if>
						<s:else>
							<s:bean name="org.apache.struts2.util.Counter" id="counter">
								<s:param name="first" value="1" />
								<s:param name="last" value="documentList.size()" />
								<s:iterator value="documentList">
									<tr>
										<td><s:url id="test" action="document_front">
												<s:param name="document.documentId" value="%{documentId}" />
												<s:param name="document.documentContent"
													value="%{documentContent}" />
											</s:url> <s:a href="%{test}">${documentTitle}</s:a></td>
									</tr>
								</s:iterator>
							</s:bean>
						</s:else>
					</table></li>
					<li><a>
					共 <s:property value="intRowCount" /> 记录 第 <s:property
						value="pageNow" /> 页 <s:url id="url_pre" value="document_list">
						<s:param name="pageNow" value="pageNow-1"></s:param>
					</s:url> <s:url id="url_next" value="document_list">
						<s:param name="pageNow" value="pageNow+1"></s:param>
					</s:url>
					&nbsp;&nbsp;
					 <s:if test="pageNow==1">
						<s:a href="%{url_pre}">最前一页</s:a>
					</s:if> <s:else>
						<s:a href="%{url_pre}">上一页</s:a>
					</s:else> <s:if test="pageNow==k">
						<s:a href="%{url_next}">最后一页</s:a>
					</s:if> <s:else>
						<s:a href="%{url_next}">下一页</s:a>
					</s:else></a></li>
			</ul>
		</div>

<%@ include file="../bottom.jsp" %>

	</div>

</body>
</html>