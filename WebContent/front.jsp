<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>首页</title>
<!--skin-->
<link rel="stylesheet" type="text/css" href="css/admin-all.css" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/ui-lightness/jquery-ui-1.8.22.custom.css" />
<link rel="stylesheet" type="text/css" href="css/global.css"/>


<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link href="css/nivo-slider.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.9.1.js" ></script>
<script type="text/javascript" src="js/jquery-ui-1.8.22.custom.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<!-- <script type="text/javascript" src="js/tb.js"></script> -->

<script type="text/javascript" src="js/navf.js"></script>
<script type="text/javascript">
	var code = "";
	$(document).ready( function(){
		createCode();
		Nav('.nav','.nav_parent li','.nav_child ul','name',0,1080,41,null);
		 //为子菜单的最后一个li添加样式
		$(".nav_parent").find("li:last-child").addClass("last"); 
		$(".txt").find("li:last-child").addClass("txtlast");
		
	});
	function checkForm(){
		
		var name = $("#proName").val();
		var password = $("#password").val();
		var checkc = 2;
		$.ajax({
	        url:'user_checkPassword.action',
	        type:"post",
	        data:{name:name,password:password},
	        async:false, 
	        dataType:"json", //服务器返回的数据类型  
	        error:function(){
	        },
	        success:function(data){
	        	checkc = data.checkCode;
	    		if(checkc == 1){
	    			$("#errorDiv").html("密码错误!");
	    			$("#errorDiv").show();
	    			return false;
	    		}
	        }
	    });
		if(checkc == 1){
			return false;
		}
		var cct = $("#checkCodeText").val();
		if(cct == ""){
			$("#errorDiv").html("请输入验证码");
			$("#errorDiv").show();
			return false;
		}
		if(cct.toLowerCase()!=code.toLowerCase()){
			$("#errorDiv").html("请输入正确的验证码");
			$("#errorDiv").show();
			return false;
		}
	}
	function showCount(url){
		
		$("#showCount").modal("show");
		/* $.post(url,function(data){
			 $("#home").html(data);
			 $("#showCount").modal("show");
		 }); */
	}
	function createCode(){   
	       code = "";   
	       var codeLength = 6;//验证码的长度   
	       var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//所有候选组成验证码的字符，当然也可以用中文的   
	       for(var i=0;i<codeLength;i++){   
		       var charIndex = Math.floor(Math.random()*36);   
		       code +=selectChar[charIndex];   
	       }  
	       $("#checkCode").val(code);
	}
</script>
<script type="text/javascript" src="js/index.js"></script>
</head>
<body>
<!-- <div class="shortcut"> -->
<!--   <div class="main" style="width:980px;margin:0px auto;"> -->
  <!--   <div class="loginfo" style="float:right;"><a href="javascript:;" class="theme-login">[请登录]</a></div> -->
    <script type="text/javascript">
$(document).ready(function($){

	$('.theme-login').click(function(){
		$('.theme-popover-mask').show();
		
		$('.theme-popover-mask').height($(document).height());
		$('.theme-popover').slideDown(200);
	})
	
	$('.theme-poptit .close').click(function(){
		$('.theme-popover-mask').hide();
		$('.theme-popover').slideUp(200);
	})
	//login_form
	$("#username").blur(function(){
		 if($('#username').val()==""){
			 $(this).parent().addClass('showPlaceholder');
		}else{
		 	$(this).parent().removeClass('showPlaceholder');
			
		}
	});
	$("#password").blur(function(){
		 if($('#password').val()==""){
			 $(this).parent().addClass('showPlaceholder');
		}else{
		 	$(this).parent().removeClass('showPlaceholder');
			
		}
	});
	/* 三级菜单 */
	/* $('.nav_child ul li').bind('mouseover',function(){
		var height= $(this).height();
		$(this).css({"float":"none","vertical-align":"top", "overflow":"hidden"});
		var nav = $('.nav_parent').offset().top + $(".nav_parent li").height();
		var t = ($(this).offset().top) - nav;
		$(this).find('ul').css({"top":t,"vertical-align":"top"});
		$(this).find('ul').show();
	}).bind('mouseout',function(){
		$(this).find('ul').hide();
	}); */

});

</script>
<div class="theme-popover-mask"></div>
    <div class="theme-popover">
      <div class="theme-poptit"> <a href="javascript:;" title="关闭" class="close">×</a> </div>
      <div id="login_form">
        <form action="user_login" method="post" onsubmit="return checkForm();">
          <fieldset>
            <div id="inputs">
             <label>用户名：</label>
              <select name="user.userName"  id="proName">
               		<c:forEach items="${userList}" var="user">
               			<option value="${user.proName}">${user.proName}</option>
               		</c:forEach>
              </select>
             <!--  <input id="username" name="user.userName" type="text" value="" title="请输入用户名"> -->
              <label for="idInput"  class="placeholder" id="idPlaceholder"></label>
            </div>
            <div id="inputs">
              <label>密&nbsp;&nbsp;&nbsp;码：</label>
              <input id="password" name="user.passWord" type="password" value="" title="请输入密码">
              <label for="pwdInput" class="placeholder" id="pwdPlaceholder"></label>
            </div>
             <div id="inputs">
            	<label>验证码：</label>
            	<input type="text" style="width: 50px;" id="checkCodeText">
	            <input type="text" class="" id="checkCode" style="width: 90px;background: url(images/yzm.gif) no-repeat;border:none; font-size: 20px;font-weight: bold;padding: 5px 5px 4px 5px;color: red;" readonly="readonly"  />		      
				<a onclick="createCode()" style="cursor: pointer;"><font color="#0066FF" size="2" style="cursor:hand; text-decoration:underline;">看不清，换一张</font></a>
			</div>
             <div class="errorholder" id="errorDiv" style="display: none;">密码错误!</div>
          </fieldset>
          <div class="loginFormBtn">
            <input type="submit" id="submit" value="登 录">
          </div>
        </form>
      </div>
    </div>
<!--   </div>
</div> -->
<!--shortcut end-->

<div class="header">
    <div class="loginfo" style="float:right;"><a href="javascript:;" class="theme-login">[请登录]</a></div>
  <div class="headerarea">
    <div class="logoarea"></div>
 
  </div>
  
  <!--searchbox end--> 
</div>
<!--container end-->
<div class="nav">
  <ul class="nav_parent">
    <li class=""><a href="info_queryAllInfo" target="main-iframe">首页</a></li>
    <li name="cate_1"><a href="anews_toNewsFront.action?news.type=6" target="main-iframe">最新资讯</a></li>
    <li name="cate_2"><a href="anews_toNewsFront.action?news.type=7" target="main-iframe">地方动态</a></li>
    <li name="cate_3"><a href="#" target="main-iframe">法律法规</a></li>
    <li name="cate_5"><a href="lawagency_list" target="main-iframe">法制工作机构</a></li>
    <!-- <li name="cate_1"><a href="#" target="main-iframe">新闻信息发布</a></li>
    <li name="cate_2" class="" style="width: 150px;"><a href="#">法制工作上报</a></li> -->
   <!--  <li name="cate_3" class="" style="width: 150px;"><a href="#">系统管理</a></li> -->
  </ul>
  <div class="nav_child">
   <ul id="cate_3" style="width: 150px;">
      <li><a href="anews_toNewsFront.action?news.type=1" target="main-iframe">法律</a></li>
      <li><a href="anews_toNewsFront.action?news.type=2" target="main-iframe">行政法规</a></li>
      <li><a href="anews_toNewsFront.action?news.type=3" target="main-iframe">部门规章</a></li>
      <li><a href="anews_toNewsFront.action?news.type=4" target="main-iframe">地方性法规</a></li>
      <li><a href="anews_toNewsFront.action?news.type=5" target="main-iframe">地方政府规章</a></li>
    </ul>
  </div>
</div>
  <script type="text/javascript">
function adjustIFramesHeightOnLoad(iframe) {
	
	/* var iframeHeight= (iframe.contentWindow.window.document.documentElement.scrollHeight, iframe.contentWindow.window.document.body.scrollHeight);

	$(iframe).height(iframeHeight); */
	
	//alert(iframeHeight);
}
</script>
<!--navbox end-->
<div class="iframe-box" style="margin: 0px auto;width: 1000px;">
      <iframe name="main-iframe" id="frame_content" class="main-iframe" src="info_queryAllInfo" frameborder="0" scrolling="no" allowtransparency="true" onLoad="adjustIFramesHeightOnLoad(this)" style="max-width: 1000px; overflow: auto;"></iframe>
      <script type="text/javascript">
	    //注意：下面的代码是放在和iframe同一个页面调用,放在iframe下面
	      /* $("#frame_content").load(function () {
	          var mainheight = $(this).contents().find("body").height() + 30;
	          $(this).height(mainheight);
	      }); */
       </script>
</div>
<div class="footer">
  <div class="container">
    <div class="copyright">
    	<P style="margin-top: 10px;">版权所有：天津中软系统股份有限公司</P>
		<P style="margin-bottom: 0px;">开发单位：天津中软系统股份有限公司</P>
    </div>
  </div>
</div>
<div id="showCount" class="modal fade in" style="z-index: 3050;">
  <div class="modal-dialog"> 
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close">&times;</button>
        <h4 class="modal-title">统计</h4>
      </div>
      <div class="modal-body">
      	<ul class="nav nav-pills">
		  <li><a href="#home">${yearsQuery-2}</a></li>
		  <li><a href="#home">${yearsQuery-1}</a></li>
		  <li class="active"><a href="#home">${yearsQuery}</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
        	<div class="tab-pane fade active in" id="home">123</div>
      	</div>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
</body>
</html>