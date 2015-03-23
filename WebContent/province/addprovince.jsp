<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>添加机构</title>
<script type="text/javascript">
	function checkForm(){
		if(!checkNullByName("province.provinceName")){
			alert("请填写机构名称");
			return false;
		}
		if(!checkNullByName("province.priority")){
			alert("请填写单位编码");
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
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">机构管理</a>
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
        <s:form method="post" action="province_add" namespace="/" theme="simple" onsubmit="return checkForm();">
  
  <tr>
	  <th width="10%">机构名称 <font color="#ff0000">*</font></th>
	  <th width="80%" > <s:textfield name="province.provinceName" cssClass="form-control" maxlength="45"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">上级单位</th>
	  <th width="80%" > <s:select list="%{listProvince}" name="province.parentUnit"></s:select>
	  </th>
  </tr>
 
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">单位编码 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:textfield name="province.priority" cssClass="form-control" maxlength="45"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">权限 <font color="#ff0000">*</font></th>
	  <th width="80%" >
	  <select name="province.privilege">
	  	<c:forEach items="${rivilegeMap}" var="rivilege">
	  		<option value="${rivilege.key}">${rivilege.value}</option>
	    </c:forEach>
	  </select>
	  </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
   <tr style="margin-top: 10px;">
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