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
<title>行政执法人员</title>
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
  <div class="breadcrumbs"> <a href="info_queryAllInfo">首页</a><span>></span><a href="employee_list">行政执法人员</a><span>> ${employee.employeeName}</span> </div>
  <!--breadcrumbs end-->
  <div class="m-t"></div>
   <div class="a-r"><a href="#" id="print"><em class="blue">【打 印】</em></div>
  <div class="detail" id="detail">
    <div class="title">
      <h1>${employee.employeeName}</h1>
      <div class="textcon"><span>发布时间：${employee.employeeUTime}</span></div>
    </div>
    <div class="pictext">
      	姓名：${employee.employeeName}<br/>
      	出生年月：${employee.employeeBirthday}<br/>
      	工作电话：${employee.employeePhone}<br/>
      	移动电话：${employee.employeeCell}<br/>
      	电子邮箱：${employee.employeeEmail}<br/>
      	
      	编号：${employee.employeeNumber}<br/>
      	发证单位：${employee.employeeIssuedBy}<br/>
      	发证日期：${employee.employeeIssuedTime}<br/>
      	专职/兼职：${employee.employeeFPTime}<br/>
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