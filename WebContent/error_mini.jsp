<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- ICO -->
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<link rel="Shortcut Icon"  href="favicon.ico" type="image/x-icon">
<!-- Le styles -->

<!--skin-->
<!--skin-->
<link rel="stylesheet" type="text/css" href="css/admin-all.css" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/ui-lightness/jquery-ui-1.8.22.custom.css" />
<link rel="stylesheet" type="text/css" href="css/global.css"/>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link rel="stylesheet" type="text/css" href="css/error.css"/>
<script type="text/javascript" src="js/jquery-1.9.1.js" ></script>
<script type="text/javascript">
/* $(window.parent.document).find("#frame_content").load(function(){
	var main = $(window.parent.document).find("#frame_content");
	var thisheight = $(document).height()+30;
	main.height(thisheight);
}); */
$(window.parent.document).find("#frame_content").load(function(){
	var main = $(window.parent.document).find("#frame_content");
	var thisheight = $(document).height()+30;
	main.height(thisheight);
});
function backtohome(){
	window.parent.location.href="info_toFront.action";
}
</script>
</head>

<body>
<body>
<div class="main">
 <div class="m-t"></div>
  <!-- <div class="error_title">
    <h1><span class="icon">!</span>404<span class="sub">错误</span></h1>
  </div>-->
  <div class="contentHeader"></div>
  <div class="container contentMiddle">
    <div class="leftContent">
      <div class="smiley"></div>
    </div>
    <div class="rightContent">
      <h1>系统链接超时...</h1>
      <div class="m-t"></div>
      <h3>请选择您要进行的下一步操作：</h3>
      <ul>
        <li>请与管理员联系</li>
        <li>请退出系统后，重新登录</li>
      </ul>
      <div class="utilities"><a class="button right" onclick="backtohome();">返回首页</a> </div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="contentFooter"></div>
  <!--flashblock end-->
  <div class="m-t"></div>
</div>
<!--container end--> 
<!--footer end-->
</body>
</html>