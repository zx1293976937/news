<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>添加行政执法人员</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#sTime").datetimepicker({
		  format: 'yyyy-mm-dd',
		  autoclose: true,
		  minView: 2,
		  todayBtn: true,
		  forceParse: true,
		  pickerPosition: "bottom-left"
	});
	$("#iTime").datetimepicker({
		  format: 'yyyy-mm-dd',
		  autoclose: true,
		  minView: 2,
		  todayBtn: true,
		  forceParse: true,
		  pickerPosition: "top-left"
	});
});

function checkForm(){
	if(!checkNull("employeeName")){
		alert("请填写姓名");
		return false;
	}
	if(!checkNull("employeeIssuedBy")){
		alert("请填写发证单位");
		return false;
	}
	if(!checkNull("employeeIssuedTime")){
		alert("请填写发证日期");
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
				您所在的位置<b class="tip"></b><a href="manage.jsp">首页</a><b class="tip"></b><a href="#">行政执法人员</a>
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
        <s:form method="post" action="employee_add" namespace="/" theme="simple" onsubmit = "return checkForm();"> 
  
  <tr>
	  <th width="10%">姓名 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:textfield name="employee.employeeName" id = "employeeName" maxlength = "45" cssClass="form-control"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">出生年月</th>
	  <th width="80%" >
	  	<div id="sTime" class="input-group date form_date">
			<input name="employee.employeeBirthday" class="form-control">
			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		</div>
	  </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr>
	  <th width="10%">工作电话</th>
	  <th width="80%" ><s:textfield name="employee.employeePhone" cssClass="form-control"></s:textfield></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">移动电话</th>
	  <th width="80%" ><s:textfield name="employee.employeeCell" cssClass="form-control"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">电子邮箱</th>
	  <th width="80%" > <s:textfield name="employee.employeeEmail" cssClass="form-control"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="15%">执法证编号</th>
	  <th width="75%" >	<s:textfield name="employee.employeeNumber" cssClass="form-control"></s:textfield> </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
    <tr>
	  <th width="15%">所属单位</th>
	  <th width="75%" >	<s:textfield name="employee.employeeJob" cssClass="form-control"></s:textfield> </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
    <tr>
	  <th width="10%">发证单位 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:textfield name="employee.employeeIssuedBy" id = "employeeIssuedBy" maxlength = "45" cssClass="form-control"></s:textfield> </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">发证日期 <font color="#ff0000">*</font></th>
	  <th width="80%" >
	    <div id="iTime" class="input-group date form_date">
			<input name="employee.employeeIssuedTime" id = "employeeIssuedTime" maxlength = "45" class="form-control">
			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		</div>
	  </th>
  </tr>
  <%-- <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">执法队伍</th>
	  <th width="80%" >
	  <input type="text" name="employee.employeeEnforcement" readonly="readonly" value="${loginUser.inchargeMent}" class="form-control" />
	  <s:select list="%{enforcementList}" name="employee.employeeEnforcement"> </s:select></th>
  </tr> --%>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">专职/兼职</th>
	  <th width="80%" > 
	  	<input type="radio" name="employee.employeeFPTime" value="专职" checked="checked"/>专职
	  	<input type="radio" name="employee.employeeFPTime" value="兼职"/>兼职
	  </th>
  </tr>
<s:hidden label="上传时间" name="employee.employeeUTime"></s:hidden> 
<s:hidden label="所在单位" name="employee.employeeProvince"  value="%{#session.loginUser.inchargeMent}"></s:hidden> 
            <s:hidden label="上级单位" name="employee.employeeParentUnit" value="%{#session.loginUser.parentUnit}"></s:hidden> 
            <s:hidden label="发布用户" name="employee.employeePublishUserId" value="%{#session.loginUser.userId}"></s:hidden>
  
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