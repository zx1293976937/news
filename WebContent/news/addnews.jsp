<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>添加新闻信息发布</title>
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
<script>
	KindEditor.ready(function(K) {
    	K.create('#news_content',{
    		resizeType:0, 
    		uploadJson: 'editor/jsp/upload_jsonstruts2.jsp',
    	    afterBlur:function(){ 
                this.sync(); 
            }
		});
	});
	function checkForm(){
		if(!checkNull("title")){
			alert("请填写标题");
			return false;
		}
		if(!checkTextLength("news_content",20000)){
			alert("内容过多，请重新编辑");
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
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">新闻信息发布</a>
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
  <s:form method="post" action="news_add" namespace="/" theme="simple" onsubmit="return checkForm();">
  <input type="hidden" name="news.submitFlg" value="0"/>
  <input type="hidden" name="news.type" value="0"/>
  <tr>
	  <th width="15%">新闻信息发布标题 <font color="#ff0000">*</font></th>  
	  <th width="75%" ><s:textfield name="news.newsTitle" id="title" maxlength="45" cssClass="form-control" cssStyle="width:700px !important"></s:textfield></th>
  </tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr><th></th></tr>
  <tr>
	  <th width="10%">新闻信息发布内容</th>
	  <th width="80%" ><textarea id="news_content" name="news.newsContent" style="width:700px;height:300px;" maxlength="20000"></textarea>
	  </th>
	  
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
    
    <tr>
	  <th width="10%" ></th>								
	  <th width="80%" >
	  	<s:hidden label="发布用户" name="news.newsPublishUserId" value="%{#session.loginUser.userId}"></s:hidden>
	  	<s:hidden label="发布用户" name="news.newsProvince" value="%{#session.loginUser.inchargeMent}"></s:hidden>
	  	<s:hidden label="发布用户" name="news.newsParentUnit" value="%{#session.loginUser.parentUnit}"></s:hidden>
	  </th>
  </tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr><th></th></tr>
   <tr>
	  <th width="10%" ></th>
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