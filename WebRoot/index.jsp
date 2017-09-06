<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>My first chart using FusionCharts Suite XT</title>
<!-- 统计报表的核心js文件 -->
<script type="text/javascript" src="js/chart/fusioncharts.js"></script>
<!-- 统计报表的主题 -->
<script type="text/javascript" src="js/chart/fusioncharts.theme.fint.js"></script>
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
</head>
<body>
<!-- 统计报表的目标 -->
  <div id="chartContainer">FusionCharts XT will load here!</div>
  <div id="chartContainer2">FusionCharts XT will load here!</div>
  <script type="text/javascript" src="js/chart/charts.js"></script>
  <script type="text/javascript">
  
  	$(function(){
  		
  		//统计出2015年度每个月的收入明细
  		$.chart({
  			target:"chartContainer",
  			type:"pie3d",
  			width:"100%",
  			height:150,
  			data:"<chart caption='Top 10 Most Popular Sports in the World' subcaption='Based on number of viewers' yaxisname='Number of Viewers' plotgradientcolor='' bgcolor='FFFFFF' showalternatehgridcolor='0' showplotborder='0' divlinecolor='#CCCCCC' showvalues='1' showcanvasborder='0' canvasbordercolor='#CCCCCC' canvasborderthickness='1' captionpadding='30' linethickness='3' yaxisvaluespadding='15' showshadow='0' labelsepchar=': ' basefontcolor='000000' labeldisplay='AUTO' numberscalevalue='1000,1000,1000' numberscaleunit='K,M,B' animation='0' palettecolors='e44a00' showborder='0'>"+
				"	<set label='Football' value='3500000000' alpha='100' tooltext='Popular in: {br}Europe{br}Africa{br}Asia{br}Americas' />"+
				"	<set label='Cricket' value='3000000000' alpha='90' tooltext='Popular in: {br}India{br}UK{br}Pakistan{br}England{br}Australia' />"+
				"	<set label='Field Hockey' value='2200000000' alpha='80' tooltext='Popular in: {br}Asia{br}Europe{br}Africa{br}Australia' />"+
				"	<set label='Tennis' value='1000000000' alpha='70' tooltext='Popular in: {br}Europe{br}Americas{br}Asia' />"+
				"	<set label='Volleyball' value='900000000' alpha='55' tooltext='Popular in: {br}Asia{br}Europe{br}Americas{br}Australia' />"+
				"	<set label='Table Tennis' value='900000000' alpha='55' tooltext='Popular in: {br}Asia{br}Europe{br}Africa{br}Americas' />"+
				"	<set label='Baseball' value='500000000' alpha='40' tooltext='Popular in: {br}US{br}Japan{br}Cuba{br}Dominican Republic' />"+
				"	<set label='Golf' value='400000000' alpha='30' tooltext='Popular in: {br}US{br}Canada{br}Europe' />"+
				"	<set label='Basketball' value='400000000' alpha='30' tooltext='Popular in: {br}US{br}Canada' />"+
				"	<set label='American Football' value='390000000' alpha='25' tooltext='Popular in: {br}US' />"+
				"	</chart>"
  		});
  		
  		
  		$.chart({
  			target:"chartContainer2",
  			type:"line",
  			width:"100%",
  			height:420,
  			dataType:"json",
  			data:{
    "chart": {
        "caption": "Sales by salesperson",
        "yaxisname": "Sales",
        "numberprefix": "$",
        "bgcolor": "#FFFFFF",
        "showalternatehgridcolor": "0",
        "showvalues": "1",
        "labeldisplay": "WRAP",
        "divlinecolor": "#CCCCCC",
        "divlinealpha": "70",
        "useroundedges": "1",
        "canvasbgcolor": "#FFFFFF",
        "canvasbasecolor": "#CCCCCC",
        "showcanvasbg": "0",
        "animation": "0",
        "palettecolors": "#008ee4,#6baa01,#f8bd19,#e44a00,#33bdda",
        "showborder": "0"
    },
    "data": [
        {
            "label": "Jerry",
            "value": "5000"
        },
        {
            "label": "Harry",
            "value": "5500"
        },
        {
            "label": "James",
            "value": "7000"
        },
        {
            "label": "Rita",
            "value": "8200"
        },
        {
            "label": "Jenny",
            "value": "6000"
        }
    ]
}
  		});
  	});
  </script>
</body>
</html>
