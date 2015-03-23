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
<title>地方性法规</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- ICO -->
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<link rel="Shortcut Icon"  href="favicon.ico" type="image/x-icon">
<!-- Le styles -->
<script type="text/javascript" src="js/jquery-1.9.1.js" ></script>
<script type="text/javascript" src="js/jquery.PrintArea.js" ></script>
<!--skin-->
<link rel="stylesheet" type="text/css" href="css/style.css"/>
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
</head>

<body>
<div class="main">
  <div class="m-t"></a></div>
  <div class="breadcrumbs"> <a href="info_queryAllInfo">首页</a><span>></span><a href="laws_list">地方性法规</a><span>> ${laws.lawsTitle}</span> </div>
  <!--breadcrumbs end-->
  <div class="m-t"></div>
  <div class="a-r"><a href="#" id="print"><em class="blue">【打 印】</em></div>
  <div class="detail" id="detail">
    <div class="title">
      <h1>${laws.lawsTitle}</h1>
      <div class="textcon"><span>发布时间：${laws.lawsUTime}</span></div>
    </div>
    <div class="pictext">
      ${laws.lawsContent}
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