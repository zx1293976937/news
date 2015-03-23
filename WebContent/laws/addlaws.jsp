<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>添加地方性法规</title>
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
<script>
	$(document).ready(function(){
		$("#sTime").datetimepicker({
			  format: 'yyyy-mm-dd',
			  autoclose: true,
			  minView: 2,
			  todayBtn: true,
			  forceParse: true,
			  pickerPosition: "top-left"
		});
		$("#iTime").datetimepicker({
			  format: 'yyyy-mm-dd',
			  autoclose: true,
			  minView: 2,
			  todayBtn: true,
			  forceParse: true,
			  pickerPosition: "top-left"
		});
		$("#eTime").datetimepicker({
			  format: 'yyyy-mm-dd',
			  autoclose: true,
			  minView: 2,
			  todayBtn: true,
			  forceParse: true,
			  pickerPosition: "top-left"
		});
	});
	
	KindEditor.ready(function(K) {
    	K.create('#laws_content',{
    		resizeType:0,
    		uploadJson: 'editor/jsp/upload_jsonstruts2.jsp',
    		allowFileManager: true,
    		afterBlur:function(){ 
                this.sync(); 
            }
        });
	});
	function checkForm(){
		if(!checkNullByName("laws.lawsTitle")){
			alert("请填写法规名称");
			return false;
		}
		if(!checkTextLength("laws_content",20000)){
			alert("内容过多，请重新编辑");
			return false;
		}
		var sTime = $("#sTime").find("input").val();
		var iTime = $("#iTime").find("input").val();
		var eTime = $("#eTime").find("input").val();
		if(!checkNullByVal(sTime)){
			alert("请填写制定时间");
			return false;
		}
		/* if(!checkNullByVal(iTime)){
			alert("请填写实施时间");
			return false;
		}
		if(!checkNullByVal(eTime)){
			alert("请填写失效时间");
			return false;
		} */
		if(!compareTime(sTime,iTime)){
			if(checkNullByVal(iTime)){
				alert("实施时间必须大于制定时间");
				return false;	
			}
		}
		if(!compareTime(iTime,eTime)){
			if(checkNullByVal(eTime)){
				alert("失效时间必须大于实施时间");
				return false;	
			}
		}
	}
</script>
</head>
<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">地方性法规</a>
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
        <s:form method="post" action="laws_add" namespace="/" theme="simple" onsubmit="return checkForm();">
  <tr>
	  <th width="10%">法规名称 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:textfield name="laws.lawsTitle" cssClass="form-control" cssStyle="width:700px !important" maxlength="45"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
<tr>
	  <th width="10%">领域、类别 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:select list="{'防震减灾综合','地震侦测预报','震灾预防','应急救援','其他'}" name="laws.lawsField"></s:select>
	  </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>  
  <tr>
	  <th width="10%">法规文本</th>
	  <th width="80%" ><textarea id="laws_content" name="laws.lawsContent" style="width:700px;height:300px;"></textarea></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">制定时间 <font color="#ff0000">*</font></th>
	  <th width="80%" >
	  	<div id="sTime" class="input-group date form_date">
			<input name="laws.lawsSTime" class="form-control">
			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		</div>
	  </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">实施时间</th>
	  <th width="80%" >
	  	<div id="iTime" class="input-group date form_date">
			<input name="laws.lawsITime" class="form-control">
			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		</div>
	  </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">效力状况</th>
	  <th width="80%" >
	  	<input type="radio" name="laws.lawsETime" value="有效" checked="checked"/>有效
	  	<input type="radio" name="laws.lawsETime" value="失效"/>失效
	  </th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">颁布机关</th>
	   <th width="80%" ><%--  --%>
	   <s:textfield name="laws.lawsPublisher" cssClass="form-control"></s:textfield>
	   <%--  <s:select list="%{provinceList}" name="laws.lawsPublisher"></s:select> --%>
	  <s:hidden name="laws.lawsProvince" value="%{#session.loginUser.inchargeMent}"></s:hidden>
	  <s:hidden name="laws.lawsUTime"></s:hidden>
	  <s:hidden name="laws.lawsParentUint" value="%{#session.loginUser.parentUnit}"></s:hidden>
	  <s:hidden label="发布用户" name="laws.lawsPublishUserId" value="%{#session.loginUser.userId}"></s:hidden></th>
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