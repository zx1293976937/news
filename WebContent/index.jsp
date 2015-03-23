<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>首页</title>
<!-- ICO -->
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<link rel="Shortcut Icon"  href="favicon.ico" type="image/x-icon">
<!-- Le styles -->

<!--skin-->
<!--skin-->
<link rel="stylesheet" type="text/css" href="css/admin-all.css" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/ui-lightness/jquery-ui-1.8.22.custom.css" />
<link rel="stylesheet" type="text/css" href="css/global.css"/>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link href="css/nivo-slider.css" rel="stylesheet" type="text/css" />
<link href="css/layout.css" type="text/css" rel="stylesheet">


<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link href="css/nivo-slider.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.9.1.js" ></script>
<script type="text/javascript" src="js/jquery-ui-1.8.22.custom.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/navf.js"></script>
<script type="text/javascript">
 	$(document).ready( function(){
		Nav('.nav','.nav_parent li','.nav_child ul','name',0,1080,41,null);
		 //为子菜单的最后一个li添加样式
		$(".nav_parent").find("li:last-child").addClass("last"); 
		$(".txt").find("li:last-child").addClass("txtlast");
		
	});
	window.location.href="info_toFront.action";
</script>
<!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <![endif]-->
</head>
<body>
<script type="text/javascript" src="js/jquery.easing.js"></script> 
<script type="text/javascript">
	$(document).ready( function(){
		$(".bootNav").find(" .animate").addClass("flipInY");
		var bootNav_li = $(".bootNav").find("li");
		bootNav_li.hover(function () {
			$(this).find("i").stop().animate({ top: "0" }, 1000, "easeOutBounce")
		}, function () {
			$(this).find("i").stop().animate({ top: "-100%" }, 1000)
		})
	})
    </script>
</div>
</body>
</html>