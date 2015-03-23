<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>添加法制宣传</title>
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
	/* $("#iTime").datetimepicker({
		  format: 'yyyy-mm-dd',
		  autoclose: true,
		  minView: 2,
		  todayBtn: true,
		  forceParse: true,
		  pickerPosition: "top-left"
	}); */
});
	KindEditor.ready(function(K) {
    	K.create('#propaganda_content',{
    		resizeType:0,
    		uploadJson: 'editor/jsp/upload_jsonstruts2.jsp',
    		afterBlur:function(){ 
                this.sync(); 
            }});
	}); 
function checkForm(){
	if(!checkNull("propagandaTitle")){
		alert("请填写活动名称");
		return false;
	}
	if(!checkNull("propagandaSTime")){
		alert("请填写开始时间");
		return false;
	}
	if(!checkNull("propagandaLocation")){
		alert("请填写活动地点");
		return false;
	}
	if(!checkNull("propagandaPeople")){
		alert("请填写受众人数");
		return false;
	}
	
	/* 验证开始时间和结束时间 */
	var sTime = $("#sTime").find("input").val();
	var iTime = $("#iTime").find("input").val();

	if(!checkNullByVal(sTime)){
		alert("请填写开始时间");
		return false;
	}
/* 	if(!checkNullByVal(iTime)){
		alert("请填写结束时间");
		return false;
	} */

	if(!compareTime(sTime,iTime)){
		if(checkNullByVal(iTime)){
			alert("结束时间必须大于开始时间");
			return false;	
		}
	}
}
</script>
<style type="text/css">
	label{
		display: inline;
	}
</style>
</head>

<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">法制宣传</a>
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
						<s:form method="post" action="propaganda_add" namespace="/"
							theme="simple" onsubmit = "return checkForm();">
							<tr>
								<th width="15%">活动名称 <font color="#ff0000">*</font></th>
								<th width="75%"><s:textfield name="propaganda.propagandaTitle" id = "propagandaTitle" maxlength = "45" cssStyle="width:700px !important;" cssClass="form-control"></s:textfield></th>
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
								<th width="10%">开始时间 <font color="#ff0000">*</font></th>
								<th width="80%" >
									<div id="sTime" class="input-group date form_date">
										<input name="propaganda.propagandaSTime" id = "propagandaSTime" maxlength = "45" class="form-control">
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
									</div>
								</th>
							</tr>
							<!-- <tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="10%">结束时间</th>
								<th width="80%" >
								<div id="iTime" class="input-group date form_date">
									<input name="propaganda.propagandaETime" class="form-control">
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								</div>
								</th>
							</tr> -->
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
								<th width="10%">活动地点 <font color="#ff0000">*</font></th>
								<th width="80%"><s:textfield name="propaganda.propagandaLocation" id = "propagandaLocation" maxlength = "45" cssClass="form-control"></s:textfield></th>
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
								<th width="10%">受众人数 <font color="#ff0000">*</font></th>
								<th width="80%"><s:select list="{'100以下','100--500人','500人以上'}" name="propaganda.propagandaPeople" id = "propagandaPeople" maxlength = "45"></s:select>
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
								<th width="10%">组织单位</th>
								<th width="80%"><s:textfield name="propaganda.propagandaOrgnizor" cssClass="form-control"></s:textfield></th>
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
								<th width="10%"></th>
								<th width="80%">
								<s:hidden name="propaganda.propagandaUTime"></s:hidden>
								<s:hidden name="propaganda.propagandaProvince" value="%{#session.loginUser.inchargeMent}"></s:hidden>
								<s:hidden name="propaganda.propagandaParentUnit" value="%{#session.loginUser.parentUnit}"></s:hidden>
								<s:hidden label="发布用户" name="propaganda.propagandaPublishUserId"
						value="%{#session.loginUser.userId}"></s:hidden></th>
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
	  <th width="12%" ></th>
	  <th width="80%" align="center" >
	  <button type="submit" class="btn btn-primary" style="width: 100px;"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp;提交</button>
	  &nbsp;&nbsp;&nbsp;&nbsp;
	  <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);" style="width: 100px;">返回</button>
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
						</s:form>
					</table>
				</li>
			</ul>
		</div>


	</div>
</body>
</html>