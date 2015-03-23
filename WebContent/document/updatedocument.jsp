<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>修改规范性文件</title>
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
<script>
KindEditor.ready(function(K) {
	K.create('#document_content',{
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
//		$("#eTime").datetimepicker({
//			  format: 'yyyy-mm-dd',
//			  autoclose: true,
//			  minView: 2,
//			  todayBtn: true,
//			  forceParse: true,
//			  pickerPosition: "top-left"
//		});
	});
	function checkForm(){
		if(!checkNullByName("document.documentTitle")){
			alert("请填写文本名称");
			return false;
		}
		if(!checkTextLength("document_content",20000)){
			alert("内容过多，请重新编辑");
			return false;
		}
		var sTime = $("#sTime").find("input").val();
		var iTime = $("#iTime").find("input").val();
//		var eTime = $("#eTime").find("input").val();
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
//		if(!compareTime(iTime,eTime)){
//			if(checkNullByVal(eTime)){
//				alert("失效时间必须大于实施时间");
//				return false;	
//			}
//		}
	}
</script>
</head>
<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">规范性文件</a>
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
        <s:form method="post" action="document_update" namespace="/" theme="simple" onsubmit="return checkForm();"> 
		 <s:hidden name="document.documentId"></s:hidden> 
 
  
  <tr>
	  <th width="10%">文件名称 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:textfield name="document.documentTitle" cssClass="form-control" cssStyle="width:700px !important" maxlength="45"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">领域、类别 <font color="#ff0000">*</font></th>
	  <th width="80%" ><s:select list="{'防震减灾综合','地震侦测预报','震灾预防','应急救援','其他'}" name="Document.documentField"></s:select></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">文件全文</th>
	  <th width="80%" ><s:textarea id="document_content" name="document.documentContent" style="width:700px;height:300px;">
</s:textarea></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">制定时间 <font color="#ff0000">*</font></th>
	  <th width="80%" ><div id="sTime" class="input-group date form_date">
			<input name="document.documentSTime" class="form-control" value="${document.documentSTime}">
			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		</div></th> </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr>
	  <th width="10%">实施时间</th>
	  <th width="80%" >
	  <div id="iTime" class="input-group date form_date">
			<input name="document.documentITime" class="form-control" value="${document.documentITime}">
			<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		</div></th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%">失效时间</th>
	  <th width="80%" >
	  	<input type="radio" name="document.documentETime" value="有效" <c:if test="${document.documentETime eq '有效'}">checked="checked"</c:if>/>有效
	  	<input type="radio" name="document.documentETime" value="失效"  <c:if test="${document.documentETime eq '失效'}">checked="checked"</c:if>/>失效
		</th>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    <tr>
	  <th width="10%"></th>
	  <th width="80%" ><s:hidden label="发布用户" name="document.documentUTime"></s:hidden>
	  <s:hidden label="发布用户" name="document.documentProvince"></s:hidden>
	  <s:hidden label="发布用户" name="document.documentParentUnit"></s:hidden>
	  <s:hidden label="发布用户" name="document.documentPubishUserId"></s:hidden></th>
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