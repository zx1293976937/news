<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加法制宣传</title>
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
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
<script>
	KindEditor.ready(function(K) {
    	K.create('#propaganda_content',{resizeType:0});
	});
</script>
<sx:head parseContent="true" extraLocales="UTF-8"/>
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
	height: 650px;
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
<%@ include file="../top.jsp" %>
		<div id="dindex_2" class="tjdzj_detailed">
			<h2>
				<a>您所在的位置</a>-><a href="manage.jsp">首页</a>-><a>法制宣传</a>
			</h2>

				
			<ul>
				<li></li>
				<li>
					<table width="98%" border="0">
						<s:form method="post" action="propaganda_add" namespace="/"
							theme="simple">
							<tr>
								<th width="5%"></th>
								<th width="15%">活动名称</th>
								<th width="75%"><s:textfield name="propaganda.propagandaTitle"></s:textfield></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="5%"></th>
								<th width="10%">活动内容</th>
								<th width="80%"><textarea id="propaganda_content" name="propaganda.propagandaContent" style="width:700px;height:300px;"></textarea></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="5%"></th>
								<th width="10%">开始时间</th>
								<th width="80%" ><sx:datetimepicker name="propaganda.propagandaSTime" type="date" displayFormat="yyyy-MM-dd " language="UTF-8" displayWeeks="6" /></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="5%"></th>
								<th width="10%">结束时间</th>
								<th width="80%" ><sx:datetimepicker name="propaganda.propagandaETime" type="date" displayFormat="yyyy-MM-dd " language="UTF-8" displayWeeks="6" /></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="5%"></th>
								<th width="10%">活动地点</th>
								<th width="80%"><s:textfield name="propaganda.propagandaLocation"></s:textfield></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="5%"></th>
								<th width="10%">宣传形式</th>
								<th width="80%"><s:checkboxlist list="#{'广播':'广播','报纸':'报纸','电视':'电视','微博':'微博','网站':'网站','科普馆':'科普馆','公益广告':'公益广告' }" name="propaganda.propagandaRange"></s:checkboxlist></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="5%"></th>
								<th width="10%">受众人数</th>
								<th width="80%"><s:select list="{'50人以下','50--100人','100--500人','500人以上'}" name="propaganda.propagandaPeople"></s:select>
								</th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="5%"></th>
								<th width="10%">活动组织单位</th>
								<th width="80%"><s:textfield name="propaganda.propagandaOrgnizor"></s:textfield></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
								<th width="5%"></th>
								<th width="10%"></th>
								<th width="80%">
								<s:hidden name="propaganda.propagandaUTime"></s:hidden>
								<s:hidden name="propaganda.propagandaProvince" value="%{#session.loginUser.inchargeMent}"></s:hidden>
								<s:hidden name="propaganda.propagandaParentUnit" value="%{#session.loginUser.parentUnit}"></s:hidden>
								<s:hidden label="发布用户" name="propaganda.propagandaPublishUserId"
						value="%{#session.loginUser.userId}"></s:hidden></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="5%"></th>
								<th width="10%"></th>
								<th width="80%" align="center"><s:submit value="提交"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" onclick="javascript:history.back(-1);" value="返回" /></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
						</s:form>
					</table>
				</li>
			</ul>
		</div>

<%@ include file="../bottom.jsp" %>

	</div>
</body>
</html>