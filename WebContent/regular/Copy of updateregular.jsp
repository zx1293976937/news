<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改地方政府规章</title>
<!--<link rel="stylesheet" type="text/css" href="css/css.css">-->
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/4028815e2c15f638012c162e57ad0005.css">
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
    	K.create('#regular_content',{
    		resizeType:0,
    		uploadJson: 'editor/jsp/upload_jsonstruts2.jsp',
    		allowFileManager: true
        });
	});
</script>
<sx:head parseContent="true" extraLocales="UTF-8"/>
</head>
<body>
<style>
#dindex{ width:972px; margin:auto;background:#FFFFFF;}
#dindex_1{ width:970px; height:80px;margin:0 auto;}
#dindex_2{ width:968px;height:650px; margin:0 auto; margin-top:2px;}
#dindex_3{ width:968px; height:87px; margin-top:1px; clear:both;}
</style>

<DIV id="dindex">
<%@ include file="../top.jsp" %>
<div id="dindex_2" class="tjdzj_detailed">
<h2><a>您所在的位置</a>-><a href="manage.jsp">首页</a>-><a>地方政府规章</a></h2>
<ul>
<li></li>
  <li>
  <table width="98%" border="0">
        <s:form method="post" action="regular_update" namespace="/" theme="simple">
        <s:hidden name="regular.regularId"></s:hidden>
  
  <tr>
      <th width="5%"></th>
	  <th width="10%">规章名称</th>
	  <th width="80%" ><s:textfield name="regular.regularTitle"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="10%">规章文本</th>
	  <th width="80%" ><s:textarea id="regular_content" name="regular.regularContent" style="width:700px;height:300px;"></s:textarea></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="10%">制定时间</th>
	  <th width="80%" ><sx:datetimepicker name="regular.regularSTime" displayFormat="yyyy-MM-dd" language="UTF-8" displayWeeks="6"/></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="10%">实施时间</th>
	  <th width="80%" ><sx:datetimepicker name="regular.regularITime" displayFormat="yyyy-MM-dd" language="UTF-8" displayWeeks="6"/></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="10%">失效时间</th>
	  <th width="80%" ><sx:datetimepicker name="regular.regularETime" displayFormat="yyyy-MM-dd" language="UTF-8" displayWeeks="6"/></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="10%">颁布机关</th>
	  <th width="80%" ><s:textfield name="regular.regularPublisher"></s:textfield></th>
  </tr>
  <!--<tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="10%">颁布机构</th>
	  <th width="80%" ><s:textfield name="regular.regularProvince" value="%{#session.loginUser.inchargeMent}"></s:textfield></th>
  </tr>-->
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="10%"></th>
	  <th width="80%" >
		<s:hidden name="regular.regularProvince"></s:hidden>
		<s:hidden name="regular.regularUTime"></s:hidden>
		<s:hidden name="regular.regularParentUnit"></s:hidden>
		<s:hidden label="发布用户" name="regular.regularPublishUserId" value="%{#session.loginUser.userId}"></s:hidden>
	  </th>
  </tr>
	<tr><th></th></tr>
	<tr><th></th></tr>
	<tr><th></th></tr>
	<tr>
      <th width="5%"></th>
	  <th width="12%" ></th>
	  <th width="80%" align="center" ><s:submit value="提交"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" onclick="javascript:history.back(-1);" value="返回" /></th>
   </s:form>
   </tr>
   <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  </table>
  </li>
</ul>
</div>

<%@ include file="../bottom.jsp" %>

</div>

</body>
</html>