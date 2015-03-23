<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>备案系统</title>
<!--<link rel="stylesheet" type="text/css" href="css/css.css">-->
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/4028815e2c15f638012c162e57ad0005.css">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<script language=javascript>     
    
	function preview1() {    
    bdhtml=window.document.body.innerHTML;    
    sprnstr="<!--startprint-->";    
    eprnstr="<!--endprint-->";    
    prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17);    
    prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));    
    window.document.body.innerHTML=prnhtml;    
    window.print();
}
</script>
</head>
<body>
<center>
<style>
#dindex{ width:972px; margin:auto;background:#FFFFFF;}
#dindex_1{ width:970px; height:80px;margin:0 auto;}
#dindex_2{ width:968px;height:600px; margin:0 auto; margin-top:2px;}
#dindex_3{ width:968px; height:87px; margin-top:5px; clear:both;}
</style>

<DIV id="dindex">
<#include "top.ftl">
<div id="dindex_2" class="tjdzj_detailed">
<h2><a>您所在的位置</a>-><a href="">首页</a>-><a href="">地方法规类表列表</a></h2>
<h3><a href="javascript:window.print();">打印</a></h3>
<ul>
  <li>
  ${approved.approvedId}
  ${approved.approvedContent}
  </li>
</ul>
</div>
<a href="javascript:preview1();">打印此页</a>
<div style="display: none">
</div>
<#include "bottom.ftl">


</center>

</body>
</html>