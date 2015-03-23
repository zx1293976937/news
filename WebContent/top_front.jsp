 
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

</head> 

</div>
	<center><img src="images/img_17.jpg"></center>
<div>

 </div>
 

