<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>

<title>修改工作机构</title>
<script type="text/javascript" src="${rootPath}/js/jquery.cityselect.js" ></script>

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
		$("#citychoose").citySelect({
    	prov:"${lawagency.lawagencyAddressProvince}", 
    	city:"${lawagency.lawagencyAddressCity}"
	});
});
function checkForm(){
	if(!checkNull("title")){
		alert("请填写机构名称");
		return false;
	}
	if(!checkNull("address")){
		alert("请填写通讯地址");
		return false;
	}
	if(!checkNull("inchargeName")){
		alert("请填写主要负责人");
		return false;
	}
	if(!checkNull("mobilePhone")){
		alert("请填写移动电话");
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
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">工作机构</a>
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
  <s:form method="post" action="lawagency_update" namespace="/" theme="simple" onsbumit = "return checkForm();">
  <s:hidden name="lawagency.lawagencyId"></s:hidden>
  
  <tr>
  <tr>
	  <th width="15%">机构名称 <font color="#ff0000">*</font></th>
	  <th width="75%" ><s:textfield name="lawagency.lawagencyTitle" id = "title" maxlength = "45" cssClass="form-control"></s:textfield></th>
  </tr>
  <%-- <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%">是否独立设置</th>
	  <th width="80%" >
	  	<input type="radio" name="lawagency.lawagencyProperty" value="是" <c:if test="${lawagency.lawagencyProperty eq '是'}">checked="checked"</c:if>/>是
	  	<input type="radio" name="lawagency.lawagencyProperty" value="否" <c:if test="${lawagency.lawagencyProperty eq '否'}">checked="checked"</c:if>/>否
	  </th>
  </tr> --%>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%">通讯地址 <font color="#ff0000">*</font></th>
	  <th width="80%" >
	    <div id="citychoose">
			<select class="prov" name="lawagency.lawagencyAddressProvince"></select> <br>
			<div class="row" style="height:6px"></div>
			<select class="city" disabled="disabled" name="lawagency.lawagencyAddressCity"></select>
			<div class="row" style="height:6px"></div>
		</div>
	  <s:textfield name="lawagency.lawagencyAddress" id = "address" maxlength = "45" cssClass="form-control"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%">机构邮编</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyZip" cssClass="form-control"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%">人员编制</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyInchargeNumber" cssClass="form-control"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%">主要负责人 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyInchargeName" id = "inchargeName" maxlength = "45" cssClass="form-control"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="15%">主要负责人出生日期</th>
	  <th width="80%" >
	  	<div id="sTime" class="input-group date form_date">
			<input name="lawagency.lawagencyInchargeBirthday" class="form-control" value="${lawagency.lawagencyInchargeBirthday}">
			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		</div>
	  </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%">主要负责人性别</th>
	  <th width="80%" >
	  	<input type="radio" name="lawagency.lawagencyInchargeSex" value="男" <c:if test="${lawagency.lawagencyInchargeSex eq '男'}">checked="checked"</c:if>/>男
	  	<input type="radio" name="lawagency.lawagencyInchargeSex" value="女" <c:if test="${lawagency.lawagencyInchargeSex eq '女'}">checked="checked"</c:if>/>女
	  </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="20%">主要负责人电子邮箱</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyInchargeEmail" cssClass="form-control"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
   <tr>
	  <th width="20%">工作电话</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyPhone" cssClass="form-control"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
   <tr>
	  <th width="20%">移动电话 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyMobilePhone" id = "mobilePhone" maxlength = "45" cssClass="form-control"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  
  <tr>
	  <th width="12%">主要负责人学历</th>
	  <th width="80%"><s:select lable="学历" name="lawagency.lawagencyInchargeEB" 
	  list="#{'本科以下':'本科以下','本科及以上':'本科及以上'}"></s:select></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%">是否法学专业</th>
	  <th width="80%" >
	  	<input type="radio" name="lawagency.lawagencyInchargeLN" value="是" <c:if test="${lawagency.lawagencyInchargeLN eq '是'}">checked="checked"</c:if>/>是
	  	<input type="radio" name="lawagency.lawagencyInchargeLN" value="否" <c:if test="${lawagency.lawagencyInchargeLN eq '否'}">checked="checked"</c:if>/>否
	  </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%">分管领导姓名</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyLeadershipName" cssClass="form-control"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%">分管领导职务</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyLeadershipTitle" cssClass="form-control"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%">分管领导电话</th>
	  <th width="80%" ><s:textfield name="lawagency.lawagencyLeadershipPhone" cssClass="form-control"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="12%" ></th>
	 <th width="80%" >
	 <s:hidden label="上传时间" name="lawagency.lawagencyUTime"></s:hidden>
	 <s:hidden label="所在单位" name="lawagency.lawagencyProvince"></s:hidden>
	 <s:hidden label="上级单位" name="lawagency.lawagencyParentUnit"></s:hidden>
	 <s:hidden label="发布用户" name="lawagency.lawagencyPublishUserId"	 value="%{#session.loginUser.userId}"></s:hidden></th>
  </tr>
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