<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>数据统计</title>
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
<script>
	KindEditor.ready(function(K) {
    	K.create('#editor_id');
	});
</script>
<style>
#totalstatics{ width:480px; float: left; margin-top:8px; margin-left:0px} #lawsstatics{ width:480px;float:right;margin-top:8px;} 
#regularstatics{ width:480px; float: left;margin-top:8px;margin-left:0px} #documentstatics{ width:480px;float:right;margin-top:8px;} 
#lstandardsstatics{ width:480px; float: left;margin-top:8px;margin-left:0px} #approvedstatics{ width:480px;float:right;margin-top:8px;} 
#penaltycasestatics{ width:480px; float: left;margin-top:8px; margin-bottom:8px;margin-left:0px} #reconsiderationstatics{ width:480px;float:right;margin-top:8px;margin-bottom:8px;} 
#dindex_3{ width:968px; height:87px; margin-top:1px; clear:both;}
</style>
<script type="text/javascript" src="Charts/FusionCharts.js"></script>
</head>
<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">数据统计</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
</div>
<DIV id="dindex">
<div id="dindex_2" class="tjdzj_detailed">

	<div id="totalstatics" class="zhongb">地方性法规数量统计</div>
	<script type="text/javascript">
	var myChart1 = new FusionCharts( "Charts/Bar2D.swf","totalstaticsId", "480", "300", "0", "1" ); 
	myChart1.setXMLData("<chart caption='地方性法规数量统计' xAxisName='文件' " +
			"yAxisName='数量'>" +
			"<set label='北京市地震局' value='"+${北京市地震局_laws}+"' />" + 
			"<set label='天津市地震局' value='"+${天津市地震局_laws}+"' />" + 
			
			"</chart>");
	myChart1.render("totalstatics");
	</script> 
	<div id="lawsstatics" class="zhongb">地方政府规章数量统计</div>
	<script type="text/javascript">
	var myChart2 = new FusionCharts( "Charts/Doughnut2D.swf","lawsstaticsId", "480", "300", "0", "1" ); 
	myChart2.setXMLData("<chart caption='地方政府规章数量统计' xAxisName='文件' " +
			"yAxisName='数量'>" +
			"<set label='北京市地震局' value='"+${北京市地震局_regular}+"' />" + 
			"<set label='天津市地震局' value='"+${天津市地震局_regular}+"' />" + 
			
		
			"</chart>");
	myChart2.render("lawsstatics");
	</script> 

	<div id="regularstatics" class="zhongb">规范性文件数量统计</div>
	<script type="text/javascript">
	var myChart3 = new FusionCharts( "Charts/Doughnut3D.swf","regularId", "480", "300", "0", "1" ); 
	myChart3.setXMLData("<chart caption='规范性文件数量统计' xAxisName='文件' " +
			"yAxisName='数量'>" +
			"<set label='北京市地震局' value='"+${北京市地震局_document}+"' />" + 
			"<set label='天津市地震局' value='"+${天津市地震局_document}+"' />" + 
			
			"</chart>");
	myChart3.render("regularstatics");
	</script> 

	<div id="documentstatics" class="zhongb">地方标准数量统计</div>
	<script type="text/javascript">
	var myChart4 = new FusionCharts( "Charts/Pie3D.swf","documentId", "480", "300", "0", "1" ); 
	myChart4.setXMLData("<chart caption='地方标准数量统计' xAxisName='文件' " +
			"yAxisName='数量'>" +
			"<set label='北京市地震局' value='"+${北京市地震局_lstandards}+"' />" + 
			"<set label='天津市地震局' value='"+${天津市地震局_lstandards}+"' />" + 
			
		
			"</chart>");
	myChart4.render("documentstatics");
	</script> 

	<div id="lstandardsstatics" class="zhongb">行政许可数量统计</div>
	<script type="text/javascript">
	var myChart5 = new FusionCharts( "Charts/Line.swf","lstandardsId", "480", "300", "0", "1" ); 
	myChart5.setXMLData("<chart caption='行政许可数量统计' xAxisName='文件' " +
			"yAxisName='数量'>" +
			"<set label='北京市地震局' value='"+${北京市地震局_approved}+"' />" + 
			"<set label='天津市地震局' value='"+${天津市地震局_approved}+"' />" + 
			
		
			"</chart>");
	myChart5.render("lstandardsstatics");
	</script> 

	<div id="approvedstatics" class="zhongb">行政案件数量统计</div>
	<script type="text/javascript">
	var myChart6 = new FusionCharts( "Charts/Column3D.swf","approvedId", "480", "300", "0", "1" ); 
	myChart6.setXMLData("<chart caption='行政案件数量统计' xAxisName='文件' " +
			"yAxisName='数量'>" +
			"<set label='北京市地震局' value='"+${北京市地震局_penaltycase}+"' />" + 
			"<set label='天津市地震局' value='"+${天津市地震局_penaltycase}+"' />" + 
			
		
			"</chart>");
	myChart6.render("approvedstatics");
	</script> 

	<div id="penaltycasestatics" class="zhongb">行政复议数量统计</div>
	<script type="text/javascript">
	var myChart7 = new FusionCharts( "Charts/Pie2D.swf","penaltycaseId", "480", "300", "0", "1" ); 
	myChart7.setXMLData("<chart caption='行政复议数量统计' xAxisName='文件' " +
			"yAxisName='数量'>" +
			"<set label='北京市地震局' value='"+${北京市地震局_reconsiderationcase}+"' />" + 
			"<set label='天津市地震局' value='"+${天津市地震局_reconsiderationcase}+"' />" + 
			
		
			"</chart>");
	myChart7.render("penaltycasestatics");
	</script> 

	<div id="reconsiderationstatics" class="zhongb">法制宣传数量统计</div>
	<script type="text/javascript">
	var myChart8 = new FusionCharts( "Charts/Column2D.swf","reconsiderationId", "480", "300", "0", "1" ); 
	myChart8.setXMLData("<chart caption='法制宣传数量统计' xAxisName='文件' " +
			"yAxisName='数量'>" +
			"<set label='北京市地震局' value='"+${北京市地震局_propaganda}+"' />" + 
			"<set label='天津市地震局' value='"+${天津市地震局_propaganda}+"' />" + 
			
		
			"</chart>");
	myChart8.render("reconsiderationstatics");
	</script> 

</div>

</div>

</body>
</html>