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
<title>法制工作机构</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- ICO -->
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<link rel="Shortcut Icon"  href="favicon.ico" type="image/x-icon">
<!-- Le styles -->
<script type="text/javascript" src="js/jquery-1.9.1.js" ></script>
<script type="text/javascript" src="js/jquery.PrintArea.js" ></script>
<script>
	$(document).ready(function(){
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
  <div class="breadcrumbs"> <a href="info_queryAllInfo">首页</a><span>></span><a href="lawagency_list">法制工作机构</a><span>> ${lawagency.lawagencyTitle}</span> </div>
  <!--breadcrumbs end-->
  <div class="m-t"></div>
   <div class="a-r"><a href="#" id="print"><em class="blue">【打 印】</em></div>
 <div class="detail" id="detail">
    <div class="title">
      <h1>${lawagency.lawagencyTitle}</h1>
      <div class="textcon"><span>发布时间：${lawagency.lawagencyUTime}</span></div>
    </div>
    <div class="pictext">
              法制机构名称：${lawagency.lawagencyTitle}<br/>
              法制人员编制：${lawagency.lawagencyInchargeNumber}<br/>
  	      法制人员姓名：${lawagency.lawagencyInchargeName}
      <div class="clear"></div>
    </div>
  </div>
</div>
<div class="clear"></div>
<div class="m-t"></div>
<!--container end-->
<script type="text/javascript">
if($('#frame_content',window.parent.document))
	$('#frame_content',window.parent.document).css('height',$(document).height() + 'px');
</script>
<!--footer end-->
</body>
</html>