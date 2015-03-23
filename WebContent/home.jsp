<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>首页</title>
<!-- ICO -->
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<link rel="Shortcut Icon"  href="favicon.ico" type="image/x-icon">
<!-- Le styles -->

<!--skin-->
<!--skin-->
<link rel="stylesheet" type="text/css" href="css/admin-all.css" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/ui-lightness/jquery-ui-1.8.22.custom.css" />
<link rel="stylesheet" type="text/css" href="css/global.css"/>


<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link href="css/nivo-slider.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.9.1.zjs" ></script>
<script type="text/javascript" src="js/jquery-ui-1.8.22.custom.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<!-- <script type="text/javascript" src="js/tb.js"></script> -->

<script type="text/javascript" src="js/navf.js"></script>
<script type="text/javascript">
	
	$(document).ready( function(){
		Nav('.nav','.nav_parent li','.nav_child ul','name',0,1080,41,null);
		 //为子菜单的最后一个li添加样式
		$(".nav_parent").find("li:last-child").addClass("last"); 
		$(".txt").find("li:last-child").addClass("txtlast");
		var strs = $.trim($("#dis1").text());
		if(strs.length > 100){
			strs = strs.substring(0,100);
		}
		strs = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+strs+"....>> 全文";
		
		var href = $("#a6").val();
		var title = $("#title6").val();
		$("#contextTitle").attr("href",href);
		$("#contextTitle").html(title);
		$("#contexta").attr("href",href);
		$("#contexta").html(strs);
	});
</script>
<script type="text/javascript" src="js/index.js"></script>
</head>
<body>
<div class="main">
  <div class="m-t"></div>
  <div class="f-l w490">
    <div class="focus">
      <div id="slider" class="nivoSlider">
		<c:choose>  
			<c:when test="${empty newsImgList}">   
				<a href="#"><img src="uploads/2.jpg" title="" alt="" ></a>
			</c:when>
			<c:otherwise>  
				<c:forEach items="${newsImgList}" var="newsimg" varStatus="v">
						<a href="news_front.action?news.newsId=${newsimg.newsId}"><img src="${newsimg.newsImgsrc}" title="${newsimg.newsTitle}" alt="" ></a>
				</c:forEach>
			</c:otherwise>

	   </c:choose>  
	 </div>
      <script type="text/javascript" src="js/jquery.min.js"></script> 
      <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script> 
      <script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider();
	});
</script> 
    </div>
    </div><!-- w490 -->
    <!--focus end-->
    <div class="f-l w490">
    <div class="i_news">
      <div class="i_news_title">
      	 <h2 class="f-l" style="margin-top: 5px;">最新资讯</h2>
         <a class="f-r more" href="anews_toNewsFront.action?news.type=6">更多>></a>
 	  </div>
      <div class="i_news_list">
      	<div style="display: none;">
      		<c:set var="type61" value="0"></c:set>
      		<c:forEach items="${newsList}" var="news" varStatus="v">
	          		<c:if test="${fn:contains(news.type,6) && type61 eq 0}">
	          			<div style="display: none;" id="dis1">
	          				${news.newsContent}
	          			</div>
	          			<input type="hidden" id="title6" value="${news.newsTitle}"/>
	          			<input type="hidden" id="a6" value="news_front.action?news.newsId=${news.newsId}" />
	          			<c:set var="type61" value="${type61 + 1}"></c:set>
	          		</c:if>
	          </c:forEach>
      	</div>
      	<dl>
          <dd class="title"><a href="#" id="contextTitle"></a></dd>
          <dd class="text">
	          		<a href="#" id="contexta"></a>
          </dd>
        </dl>
        <ul>
          <c:set var="type6" value="0"></c:set>
          <c:forEach items="${newsList}" var="news" varStatus="v">
          		<c:if test="${fn:contains(news.type,6) && type6 < 3 && v.index > 0}">
          			<li><span>${news.newsATime}</span><a href="news_front.action?news.newsId=${news.newsId}">${news.newsTitle}</a></li>
          			<c:set var="type6" value="${type6+1}"></c:set>
          		</c:if>
          </c:forEach>
        </ul>
      </div>
    </div>
    </div><!-- w490 -->
 <div class="clear m-b"></div>
     <div class="f-l W480">
    <div class="tabbox">
      <div class="titlebtn_tabs">
        <h2 class="f-l">地方动态</h2>
        <a class="f-r more" href="anews_toNewsFront.action?news.type=7">更多>></a> 
      </div>
      <div class="tabcon" style="height: 453px;">
        <div class="hotlist">
          <ul>
          <c:set var="type7" value="0"></c:set>
          	<c:forEach items="${newsList}" var="news" varStatus="v">
          		<c:if test="${fn:contains(news.type,7) && type7 < 15}">
          			<li><span>${news.newsATime}</span><a href="news_front.action?news.newsId=${news.newsId}">${news.newsTitle}</a></li>
          			<c:set var="type7" value="${type7+1}"></c:set>
          		</c:if>
         	</c:forEach>
          </ul>
        </div>
      </div>
    </div>
    

    <!--piclist end-->
    <div class="clear m-b"></div>
        </div><!-- w711 -->
  <div class="f-r w490">
    <div class="tabbox">
      <div class="titlebtn_tabs">
        <h2 class="f-l">法律法规</h2>
        <!-- <a class="f-r more" href="anews_toNewsFront.action?news.type=1,2,3,4,5">更多>></a> --></div>
      <div class="tabbtn" id="tab3">
        <ul>
          <li id="tab3_1" class="current"><a href="anews_toNewsFront.action?news.type=1">法律</a><b></b></li>
          <li id="tab3_2"><a href="anews_toNewsFront.action?news.type=2">行政法规</a><b></b></li>
          <li id="tab3_3"><a href="anews_toNewsFront.action?news.type=3">部门规章</a><b></b></li>
          <li id="tab3_4"><a href="anews_toNewsFront.action?news.type=4">地方性法规</a><b></b></li>
          <li id="tab3_5"><a href="anews_toNewsFront.action?news.type=5">地方政府规章</a><b></b></li>
        </ul>
      </div>
      <!--tabbtn end-->
      <div class="tabcon picbox">
        <div id="tab3_1_body" class="piclist">
          <div class="i_tabs_list">
            <ul>
            	<c:set var="type1" value="0"></c:set>
            	<c:forEach items="${newsList}" var="news" varStatus="v">
	          		<c:if test="${fn:contains(news.type,1) && type1 < 6}">
	          			<li><span>${news.newsATime}</span><a href="news_front.action?news.newsId=${news.newsId}">${news.newsTitle}</a></li>
	          			<c:set var="type1" value="${type1+1}"></c:set>
	          		</c:if>
          		</c:forEach>
            </ul>
          </div>
        </div>
        <div id="tab3_2_body" class="piclist">
          <div class="i_tabs_list">
            <ul>
              <c:set var="type2" value="0"></c:set>
              <c:forEach items="${newsList}" var="news" varStatus="v">
	          		<c:if test="${fn:contains(news.type,2) && type2 < 6}">
	          			<li><span>${news.newsATime}</span><a href="news_front.action?news.newsId=${news.newsId}">${news.newsTitle}</a></li>
	          			<c:set var="type2" value="${type2+1}"></c:set>
	          		</c:if>
          		</c:forEach>
            </ul>
          </div>
        </div>
        <div id="tab3_3_body" class="piclist">
          <div class="i_tabs_list">
            <ul>
            	<c:set var="type3" value="0"></c:set>
            	<c:forEach items="${newsList}" var="news" varStatus="v">
	          		<c:if test="${fn:contains(news.type,3) && type3 < 6}">
	          			<li><span>${news.newsATime}</span><a href="news_front.action?news.newsId=${news.newsId}">${news.newsTitle}</a></li>
	          			<c:set var="type3" value="${type3+1}"></c:set>
	          		</c:if>
          		</c:forEach>
            </ul>
          </div>
        </div>
        <div id="tab3_4_body" class="piclist">
          <div class="i_tabs_list">
            <ul>
            	<c:set var="type4" value="0"></c:set>
            	<c:forEach items="${newsList}" var="news" varStatus="v">
	          		<c:if test="${fn:contains(news.type,4) && type4 < 6}">
	          			<li><span>${news.newsATime}</span><a href="news_front.action?news.newsId=${news.newsId}">${news.newsTitle}</a></li>
	          			<c:set var="type4" value="${type4+1}"></c:set>
	          		</c:if>
          		</c:forEach>
            </ul>
          </div>
        </div>
        <div id="tab3_5_body" class="piclist">
          <div class="i_tabs_list">
            <ul>
            	<c:set var="type5" value="0"></c:set>
            	<c:forEach items="${newsList}" var="news" varStatus="v">
	          		<c:if test="${fn:contains(news.type,5) && type5 < 6}">
	          			<li><span>${news.newsATime}</span><a href="news_front.action?news.newsId=${news.newsId}">${news.newsTitle}</a></li>
	          			<c:set var="type5" value="${type5+1}"></c:set>
	          		</c:if>
          		</c:forEach>
            </ul>
          </div>
        </div>
    </div>
    </div>
    <!--Topbox end-->
    

    <div class="clear m-b"></div>
    
  </div>
  <!--span320 end-->
  <div class="clear m-b"></div>
  
  <div class="w980">
  	<!-- 法制工作机构 -->
 <div class="tabbox" style="margin-bottom: 10px;">
     <div class="linkbtn_tabs">
        <h2 class="f-l">法制工作机构</h2>
        <!-- <a class="f-r more" href="lawagency_list">更多>></a> --> </div>
      <div class="tabcon">
          <%-- <ul class="clearfix">
          	<c:forEach items="${lawagencyList}" var="lawagency" varStatus="v">
	          		<c:if test="${v.index < 9}">
	          			<li> <img class="ipic" src="images/ico_1.png" width="34" height="32" alt="${lawagencyTitle}" />
			              <div class="dashedline"></div>
			              <dl class="listext">
			                <dt><a href="lawagency_front.action?lawagency.lawagencyId=${lawagency.lawagencyId}">${lawagency.lawagencyTitle}</a></dt>
			              </dl>
			              <div class="arrow_ico"></div>
			            </li>
	          		</c:if>
          		</c:forEach>
          </ul> --%>
          <ol class="breadcrumb" style="margin-bottom: 0px;background-color: white;font-size: 13px;">
          	  <c:forEach items="${lawagencyList}" var="lawagency" varStatus="v">
	          			<li><a style="color: #428bca;" href="lawagency_front.action?lawagency.lawagencyId=${lawagency.lawagencyId}">${lawagency.lawagencyTitle}</a></li>
          		</c:forEach>
		  </ol>
      </div>
    </div> 
    <!-- /法制工作机构 -->
  </div>
  <div class="clear"></div>
  
  <!--flashblock end-->
  
  <div class="m-t"></div>
</div>
<!--container end-->
<!--footer end-->
<c:if test="${loginUser == null}">
<script type="text/javascript">
if($('#frame_content',window.parent.document))
	$('#frame_content',window.parent.document).css('height',$(document).height() + 'px');
</script>
</c:if>
</body>
</html>