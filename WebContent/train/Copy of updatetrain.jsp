<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改法制培训</title>
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
    	K.create('#train_content',{resizeType:0});
	});
</script>
<sx:head parseContent="true" extraLocales="UTF-8"/>
</head>
<body>
<style>
#dindex{ width:972px; margin:auto;background:#FFFFFF;}
#dindex_1{ width:970px; height:80px;margin:0 auto;}
#dindex_2{ width:968px;height:650px; margin:0 auto; margin-top:2px;}
#dindex_3{ width:968px; height:87px; margin-top:5px; clear:both;}
</style>

<DIV id="dindex">
<%@ include file="../top.jsp" %>
<div id="dindex_2" class="tjdzj_detailed">
<h2><a>您所在的位置</a>-><a href="manage.jsp">首页</a>-><a>法制培训</a></h2>
<ul>
<li></li>
  <li>
  <table width="98%" border="0">
  <s:form method="post" action="train_update" namespace="/" theme="simple">
  <s:hidden name="train.trainId"></s:hidden>  
  <tr>
      <th width="5%"></th>
	  <th width="15%">培训班名称</th>
	  <th width="75%" ><s:textfield name="train.trainTitle"></s:textfield></th>
  </tr>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">开班时间</th>
	  <th width="80%" ><sx:datetimepicker name="train.trainSTime" type="date" displayFormat="yyyy-MM-dd " language="UTF-8" displayWeeks="6" /></th>
  </tr>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">结束时间</th>
	  <th width="80%" ><sx:datetimepicker name="train.trainETime" type="date" displayFormat="yyyy-MM-dd " language="UTF-8" displayWeeks="6" /></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
      <th width="5%"></th>
	  <th width="10%">培训主要内容</th>
	  <th width="80%" ><s:textarea id="train_content" name="train.trainContent" style="width:700px;height:300px;"></s:textarea></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
  <tr>
	  <th width="5%"></th>
	  <th width="10%">培训班地点</th>
	  <th width="80%" ><s:textfield name="train.trainLocation" ></s:textfield></th>
  </tr>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">培训对象</th>
	  <th width="80%" ><s:select list="{'领导','执法人员','其他'}" name="train.trainPeople" ></s:select></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
  <tr>
	  <th width="5%"></th>
	  <th width="10%">受众人数</th>
	  <th width="80%" ><s:textfield name="train.trainStatics" ></s:textfield></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="5%"></th>
	  <th width="10%">活动组织单位</th>
	  <th width="80%" ><s:textfield name="train.trainHost" ></s:textfield></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
  <tr>
	  <th width="5%"></th>
	  <th width="10%" ></th>
	  <th width="80%" >
	  <s:hidden name="train.trainUTime"></s:hidden>
	  <s:hidden name="train.trainProvince"></s:hidden>
	  <s:hidden name="train.trainParentUnit"></s:hidden>
	  <s:hidden label="发布用户" name="train.trainPublishUserId" value="%{#session.loginUser.userId}"></s:hidden></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr>
      <th width="5%"></th>
	  <th width="10%" ></th>
	  <th width="80%" align="center" ><s:submit value="提交"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" onclick="javascript:history.back(-1);" value="返回" /></th>
  </tr>
   <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
	</s:form>
  </table>
  </li>
</ul>
</div>

<%@ include file="../bottom.jsp" %>

</div>

</body>
</html>