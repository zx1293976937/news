 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<%@ page language="java" pageEncoding="utf-8"%><head> 
<link rel="shortcut icon" href="http://10.12.2.233:8080/beian/images/favicon.ico" type="image/x-icon" /> 

<style> 
/*reset*/ 
body,div,ul,li,a{padding:0; margin:0;} 
 
/*导航条容器   */ 
#nav{ 
width:970px; 
height:45px; 
background:#00508A;/*为了便亍查看区域范围大小，故而加个背景色*/ 
margin:0 auto;/*水平屁中*/ 
margin-top:0px;/*距离顶部30px*/ 
 /* border-bottom:#000 5px solid; */
} 
 
#nav  li{
  margin-left:7px;/*菜单项目中间的分割线宽度*/ 
  float:left; /*ul 和li都是块元素，想要一行，就要浮动   */ 
  list-style:none;  /*去掉li前面的圆点*/ 
  /*background:#f00;  便于观察容器位置*/ 
   
  /*width:100px;  导航栏每个链接的宽度,  加入padding:0 10px;后就取消宽度了*/ 
  height:45px;    line-height:45px;/*使li高度与背景ul一样，并设置行距使文字垂直居中*/ 
  text-align:center;/*文字水平居中*/  
     
  /*margin-left:1px;便于观察*/ 
 /* padding:0 10px;*/使li自适应文字宽度*/ 
} 
 
/*鼠标移入移出效果设置*/ 
#nav  li a{display:block; /*background:#ccc;font-weight:bold;*//*便于观察*/ 
   font-size:18px;  color:#fff;
  min-width:100px;   
     cursor:pointer;
 text-decoration:none;   
       
  /* float:left;完全是为了IE6.    但是，如果有这一句，就会出现*/ 
    padding:0 5px;/*因为float而拥挤，此句增加空间*/ 
} 
#nav  li a:hover{color: #FF0000; } /*background:#000;*/
 
/*----------------------------------------------- 
下拉菜单*/ 
#nav li ul{ 
  display:none; 
    position:absolute; 
  background:#608ab3; 
  z-index: 4000;
  /*width:150px; /*定义下拉菜单宽度*/ */
} 
 
#nav ul li:hover>ul{position:relative;  left:150px; top:-35px; }/*子子菜单定位*/ 
 
#nav li:hover>ul{ 
  display:block; 
} 
 
#nav  li ul li { 
  float:none; 
  border-bottom:#CCC 1px solid; 
  margin:0px;/*为了清除上个菜单留下的margen-left*/ 
} 
#nav li ul li a{ 
  background:none;/*否则显示不出li的下边框*/ 
  cursor:pointer;
} 
</style> 
 <script>

　　function submit1()
　　{
　　document.myForm.action="user_queryAllUser";
	document.myForm.submit();
	}
function submit2()
	{
	document.myForm.action="province_queryAllProvince";
	document.myForm.submit();
	}
  function submit21()
　　{
　　document.myForm.action="laws_queryAllLaws";
　　document.myForm.submit();
　　}
  function submit22()
　　{
　　document.myForm.action="regular_queryAllRegular";
　　document.myForm.submit();
　　}
　function submit23()
　　{
　　document.myForm.action="document_queryAllDocument";
　　document.myForm.submit();
　　}
  function submit24()
　　{
　　document.myForm.action="lstandards_queryAllLstandards";
　　document.myForm.submit();
　　}
  function submit31()
　　{
　　document.myForm.action="approved_queryAllApproved";
　　document.myForm.submit();
　　}　function submit32()
　　{
　　document.myForm.action="penaltycase_queryAllPenaltycase";
　　document.myForm.submit();
　　}
  function submit33()
　　{
　　document.myForm.action="reconsiderationcase_queryAllReconsiderationcase";
　　document.myForm.submit();
　　}
  function submit34()
　　{
　　document.myForm.action="enforcementinspect_queryAllEnforcementinspect";
　　document.myForm.submit();
　　}
  function submit41()
　　{
　　document.myForm.action="lawagency_queryAllLawagency";
　　document.myForm.submit();
　　}　function submit42()
　　{
　　document.myForm.action="enforcement_queryAllEnforcement";
　　document.myForm.submit();
　　}
  function submit43()
　　{
　　document.myForm.action="employee_queryAllEmployee";
　　document.myForm.submit();
　　}
  function submit51()
　　{
　　document.myForm.action="propaganda_queryAllPropaganda";
　　document.myForm.submit();
　　}　function submit52()
　　{
　　document.myForm.action="train_queryAllTrain";
　　document.myForm.submit();
　　}
  function submit53()
　　{
　　document.myForm.action="policy_queryAllPolicy";
　　document.myForm.submit();
　　}
  function submit54()
　　{
　　document.myForm.action="news_queryAllNews";
　　document.myForm.submit();
　　}
	function submit55()
　　{
　　document.myForm.action="statics_totalStatics";
　　document.myForm.submit();
　　}
　
　　</script>
</head> 
<div class="zhong" style="height:20px;margin:0 auto;padding-left:40px;padding-top:5px;padding-bottom:5px;">
当前用户：<s:property value="%{#session.loginUser.trueName}"/>&nbsp;&nbsp;&nbsp;&nbsp;
<s:a action="user_logout">退出登录</s:a>
</div>
	<center><img src="images/img_17.jpg"></center>
<div>

<ul id=nav> 
         <li><a href="#" >系统管理</a>
		 	 	 <ul> 
                 <li><a onClick="submit1();">用户管理</a></li> 
                 <li><a onClick="submit2();">机构管理</a></li> 
             </ul> 
		 
		 </li> 
         <li><a onClick="submit54();">工作信息</a></li> 
         <li><a href="#" >法律规范和规范性文件</a>
		 	 	 <ul> 
                 <li><a onClick="submit21();">地方性法规</a></li> 
                 <li><a onClick="submit22();">地方政府规章</a></li> 
				 <li><a onClick="submit23();">规范性文件</a></li> 
				 <li><a onClick="submit24();">地方标准</a></li> 
             </ul> 
		 
		 </li> 
         <li><a>法制工作机构和人员</a>
		 	 <ul> 
                 <li><a onClick="submit41();">法制工作机构</a></li> 
                 <li><a onClick="submit42();">行政执法队伍</a></li> 
				 <li><a onClick="submit43();">行政执法人员</a></li> 
             </ul> 
		 </li> 
         <li><a>法制宣教</a>
		     <ul> 
                 <li><a onClick="submit51();">法制宣传</a></li> 
                 <li><a onClick="submit52();">法制培训</a></li> 
             </ul> 
		 </li> 
		 <li><a onClick="submit55();" >数据统计</a></li> 
</ul><!--the end of nav--> 
 </div>
 <form name="myForm" METHOD=POST></form>

