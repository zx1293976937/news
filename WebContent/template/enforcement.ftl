<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<html>
<head>
<meta charset="utf-8">
<title>行政执法队伍</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- ICO -->
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<link rel="Shortcut Icon"  href="favicon.ico" type="image/x-icon">
<!-- Le styles -->
<script type="text/javascript" src="js/jquery-1.9.1.js" ></script>
<script type="text/javascript" src="js/jquery.PrintArea.js" ></script>
<script>
	$(document).ready(function(){
		$(window.parent.document).find("#frame_content").load(function(){
			var main = $(window.parent.document).find("#frame_content");
			var thisheight = $(document).height()+30;
			main.height(thisheight);
		});
		$("#print").bind("click",function(event){  
			  $(".breadcrumbs").hide();
			  $("#detail").addClass("detailNone");
              $("#detail").printArea();  
              $("#detail").removeClass("detailNone");
              $(".breadcrumbs").show();
         }); 
	});
</script>
<!--skin-->
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>

<body>
<div class="main">
  <div class="m-t"></div>
  <div class="breadcrumbs"> <a href="info_queryAllInfo">首页</a><span>></span><a href="enforcement_list">行政执法队伍</a><span>> ${enforcement.enforcementName}</span> </div>
  <!--breadcrumbs end-->
  <div class="m-t"></div>
   <div class="a-r"><a href="#" id="print"><em class="blue">【打 印】</em></div>
  <div class="detail" id="detail">
    <div class="title">
      <h1>${enforcement.enforcementName}</h1>
      <div class="textcon"><span>发布时间：${enforcement.enforcementUTime}</span></div>
    </div>
    <div class="pictext">
      	行政执法队伍名称：${enforcement.enforcementName}<br/>
      	独立设置：${enforcement.enforcementProperty}<br/>
      	负责人姓名：${enforcement.enforcementIncharge}<br/>
      	负责人性别：${enforcement.enforcementInchargeSex}<br/>
      	负责人电话：${enforcement.enforcementInchargePhone}<br/>
      	负责人邮箱：${enforcement.enforcementInchargeEmail}<br/>
      	负责人学历：${enforcement.enforcementInchargeEB}<br/>
      	负责人出生年月：${enforcement.enforcementInchargeBirthday}<br/>
      	是否法学专业：${enforcement.enforcementInchargeLN}<br/>
      	所在单位：${enforcement.enforcementProvince}<br/>
      <div class="clear"></div>
    </div>
  </div>
</div>
<div class="clear"></div>
<div class="m-t"></div>
<!--container end-->

<!--footer end-->
</body>
</html>