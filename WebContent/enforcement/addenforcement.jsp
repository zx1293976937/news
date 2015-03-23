<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>添加行政执法队伍</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#sTime").datetimepicker({
		  format: 'yyyy-mm-dd',
		  autoclose: true,
		  minView: 2,
		  todayBtn: true,
		  forceParse: true,
		  pickerPosition: "top-left"
	});
});

function checkForm(){
	if(!checkNull("enfrocementName")){
		alert("请填写行政执法队伍名称");
		return false;
	}
	if(!checkNull("enforcementIncharge")){
		alert("请填写负责人姓名");
		return false;
	}
	if(!checkNull("enfrocementProvice")){
		alert("请填写下属单位");
		return false;
	}
}
</script>
</head> 
<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="manage.jsp">首页</a><b class="tip"></b><a href="#">行政执法队伍</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
</div>
<DIV id="dindex">
<div id="dindex_2" class="tjdzj_detailed">
<ul>
<li></li>
  <li>
  <table width="98%" border="0">
  <s:form method="post" action="enforcement_add" namespace="/" theme="simple" onsubmit = "return checkForm();">
  <tr>
	  <th width="18%">行政执法队伍名称 <font color="#ff0000">*</font></th>
	  <th width="75%" ><s:textfield name="enforcement.enforcementName" id = "enfrocementName" maxlength = "45" cssClass="form-control"></s:textfield> </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">独立设置</th>
	  <th width="80%" >
	  	<input type="radio" name="enforcement.enforcementProperty" value="是"/>是
	  	<input type="radio" name="enforcement.enforcementProperty" value="否"/>否
	  </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">负责人姓名 <font color="#ff0000">*</font></th>
	  <th width="80%" >	<s:textfield name="enforcement.enforcementIncharge" id = "enforcementIncharge" maxlength = "45" cssClass="form-control"></s:textfield> </th>
  </tr>
   
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">负责人性别</th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementInchargeSex" cssClass="form-control"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">负责人电话</th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementInchargePhone" cssClass="form-control"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">负责人邮箱</th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementInchargeEmail" cssClass="form-control"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">负责人学历</th>
	  <th width="80%" ><s:select list="{'本科以下','本科','硕士','博士'}" name="enforcement.enforcementInchargeEB"></s:select></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">负责人出生年月</th>
	  <th width="80%" >
	  	<div id="sTime" class="input-group date form_date">
			<input name="enforcement.enforcementInchargeBirthday" class="form-control">
			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		</div>
	  </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">是否法学专业</th>
	  <th width="80%" >
	  	<input type="radio" name="enforcement.enforcementInchargeLN" value="是" checked="checked"/>是
	  	<input type="radio" name="enforcement.enforcementInchargeLN" value="否" />否
	  </th>
  </tr>
<s:hidden label="上传时间" name="enforcement.enforcementUTime"></s:hidden> 
 <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>

    <tr>
    
	  <th width="10%">下属单位 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementProvince" id = "enfrocementProvice" maxlength = "45" value="%{#session.loginUser.inchargeMent}" cssClass="form-control"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
<tr>
	  <th width="10%">专职/兼职</th>
	  <th width="80%" > 
	  	<input type="radio" name="enforcement.enforcementFPTime" value="专职" checked="checked"/>专职
	  	<input type="radio" name="enforcement.enforcementFPTime" value="兼职"/>兼职
	  </th>
  </tr>
   <%--  <tr>
    
	  <th width="10%">上级单位</th>
	  <th width="80%" ><s:textfield name="enforcement.enforcementParentUnit" value="%{#session.loginUser.parentUnit}" cssClass="form-control"></s:textfield> </th>
  </tr> --%>
      <s:hidden label="发布用户" name="enforcement.enforcementPublishUserId" value="%{#session.loginUser.userId}"></s:hidden>
  <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="12%" ></th>
	  <th width="80%" align="center" >
	  <button type="submit" class="btn btn-primary" style="width: 100px;"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp;提交</button>
	  &nbsp;&nbsp;&nbsp;&nbsp;
	  <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);" style="width: 100px;">返回</button>
	  </th>
	  </tr>
	</s:form>
   <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  </table>
  </li>
</ul>

</div>


</div>

</body>
</html>