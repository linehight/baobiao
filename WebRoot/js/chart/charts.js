	/*二次开发统计报表*/
  	
  	$.chart=function(options){
  		//默认参数定义
  		var defaults={
  			type:"column2d",
  			target:"chartContainer",
  			width:"100%",
  			height:360,
  			dataType:"xml",
  			data:""
  		};
  		var opts=$.extend({},defaults,options);
  		FusionCharts.ready(function(){
    var revenueChart = new FusionCharts({
        "type": opts.type,//统计报表类型column2d、column3d、pie2d、pie3d
        "renderAt": opts.target,//统计报表的目标
        "width": opts.width,
        "height": opts.height,
        "dataFormat": opts.dataType,//统计数据渲染类型 json/xml两种类型
        "dataSource": opts.data

	  });
	revenueChart.render();
	});
  };