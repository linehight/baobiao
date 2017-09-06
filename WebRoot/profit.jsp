<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML >
<html>
  <head>
    
    <title>本年度收入明细</title>
    <!-- 统计报表的核心js文件 -->
	<script type="text/javascript" src="js/chart/fusioncharts.js"></script>
	<!-- 统计报表的主题 -->
	<script type="text/javascript" src="js/chart/fusioncharts.theme.fint.js"></script>
	<!-- jQuery核心包 -->
	<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
	<!-- chart核心报表插件 -->
	 <script type="text/javascript" src="js/chart/charts.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <!-- 数据报表目标 -->
    <div id="contentBox"></div>
    <script type="text/javascript">
    	$(function(){
    		tm_loadingData();
    	});
    	//ajax是普通的http请求，是一种无状态的通过JavaScript事件去触发请求方式
    	function tm_loadingData(){
    		$.ajax({
    			type:"post",
    			url:"data.jsp",
    			success:function(data){//data是服务器端返回到客户端数据
    				var jsonData=eval("("+data+")");
    				var length=jsonData.length;
    				var html="";
    				for(var i=0;i<length;i++){
    					//$("body").append("<div>"+jsonData[i].money+"--"+jsonData[i].month+"</div>");
    					//和数据报表进行对接
    					html+="<set label='"+jsonData[i].month+"' value='"+jsonData[i].money+"' />";
    				}
   					$.chart({
   						type:"column2d",
   						target:"contentBox",
   						width:"100%",
   						height:"560",
   						data:"<chart caption='2015年度平均工资' subcaption='' xaxisname='月份' yaxisname='每月/元' plotgradientcolor='' bgcolor='FFFFFF' showalternatehgridcolor='0' showplotborder='0' divlinecolor='#CCCCCC' showvalues='1' showcanvasborder='0' canvasbordercolor='#CCCCCC' canvasborderthickness='1' captionpadding='30' linethickness='3' yaxisvaluespadding='15' showshadow='0' labelsepchar=': ' basefontcolor='000000' labeldisplay='AUTO' numberscalevalue='1000,1000,1000'  animation='0' palettecolors='e44a00' showborder='0'>"+html+"</chart>"
   					});
    			}
    		});
    	};
    </script>
  </body>
</html>
