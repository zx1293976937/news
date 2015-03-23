<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>添加法制培训</title>
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
<script>
	KindEditor.ready(function(K) {
    	K.create('#train_content',{
    		resizeType:0,
    		uploadJson: 'editor/jsp/upload_jsonstruts2.jsp',
    		afterBlur:function(){ 
                this.sync(); 
            }});
	});
	$(document).ready(function(){
		$("#sTime").datetimepicker({
			  format: 'yyyy-mm-dd',
			  autoclose: true,
			  minView: 2,
			  todayBtn: true,
			  forceParse: true,
			  pickerPosition: "bottom-left"
		});
		/* $("#iTime").datetimepicker({
			  format: 'yyyy-mm-dd',
			  autoclose: true,
			  minView: 2,
			  todayBtn: true,
			  forceParse: true,
			  pickerPosition: "bottom-left"
		}); */
	});
	
	function checkForm(){
		if(!checkNull("trainTitle")){
			alert("请填写培训名称");
			return false;
		}
		if(!checkNull("trainSTime")){
			alert("请填写开班时间");
			return false;
		}
		if(!checkNull("trainPeople")){
			alert("请填写培训对象");
			return false;
		}
		if(!checkNull("trainStatics")){
			alert("请填写培训人数");
			return false;
		}
		if(!checkNull("trainHost")){
			alert("请填写组织单位");
			return false;
		}
		
		/* 验证开始时间和结束时间 */
		var sTime = $("#sTime").find("input").val();
		/* var iTime = $("#iTime").find("input").val(); */

		if(!checkNullByVal(sTime)){
			alert("请填写开始时间");
			return false;
		}
 		/* if(!checkNullByVal(iTime)){
			alert("请填写结束时间");
			return false;
		} */  
		/* if(!compareTime(sTime,iTime)){
			if(checkNullByVal(iTime)){
				alert("结束时间必须大于开始时间");
				return false;	
			}
		}	 */
	}
</script>
</head>
<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">法制培训</a>
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
  <s:form method="post" action="train_add" namespace="/" theme="simple" onsubmit = "return checkForm();">
  <tr>
	  <th width="15%">培训名称 <font color="#ff0000">*</font></th>
	  <th width="75%" ><s:textfield name="train.trainTitle" id = "trainTitle" maxlength = "45" cssClass="form-control"></s:textfield></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">开班时间 <font color="#ff0000">*</font></th>
	  <th width="80%" >
	  	<div id="sTime" class="input-group date form_date">
			<input name="train.trainSTime" class="form-control" id = "trainSTime" maxlength = "45">
			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		</div>
	  </th>
  </tr>
   <!-- <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">结束时间</th>
	  <th width="80%" >
	  	<div id="iTime" class="input-group date form_date">
			<input name="train.trainETime" class="form-control">
			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		</div>
	  </th> -->
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">培训主要内容</th>
	  <th width="80%" ><textarea id="train_content" name="train.trainContent" style="width:700px;height:300px;"></textarea></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
  <%-- <tr>
	  <th width="10%">培训班地点</th>
	  <th width="80%" ><s:textfield name="train.trainLocation" cssClass="form-control"></s:textfield></th>
  </tr> --%>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">培训对象 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:select list="{'全员选择','领导干部','执法人员','其他'}" name="train.trainPeople" id = "trainPeople" maxlength = "45"></s:select></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
  <tr>
	  <th width="10%">培训人数 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:textfield name="train.trainStatics" id = "trainStatics" maxlength = "45" cssClass="form-control"></s:textfield></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">组织单位 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:textfield name="train.trainHost" id = "trainHost" maxlength = "45" cssClass="form-control"></s:textfield></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
  <tr>
	  <th width="10%" ></th>
	  <th width="80%" >
	  <s:hidden name="train.trainUTime"></s:hidden>
	  <s:hidden name="train.trainProvince" value="%{#session.loginUser.inchargeMent}"></s:hidden>
	  <s:hidden name="train.trainParentUnit" value="%{#session.loginUser.parentUnit}"></s:hidden>
	  <s:hidden label="发布用户" name="train.trainPublishUserId" value="%{#session.loginUser.userId}"></s:hidden></th>
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
   <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
	</s:form>
  </table>
  </li>
</ul>
</div>

</div>

</body>
</html>