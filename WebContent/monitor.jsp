<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>天津市地震局监控管理平台</title>
<style>
#vedio{position:absolute; left:300px; top:60px; width:400px; height:300px;}
#temprature{position:absolute; left:900px; top:60px; width:150px; height:300px;}
#humidity{position:absolute; left:300px; top:400px; width:100%; height:100%;}
#power{position:absolute; left:900px; top:400px; width:100%; height:100%;}
</style>
</head>
<body>
 	<div id="vedio">
 		<img src="img/vedio.png" sytle="height:100%;width:100%;"/>
 	</div>
 	<div id="temprature">
 		<img src="img/temprature.png" sytle="height:100%;width:100%;"/>
 	</div>
 	<div id="humidity">
 		<img src="img/humidity.png"/>
 	</div>
 	<div id="power">
 		<img src="img/ups.png"/>
 	</div>
</body>
</html>