	/*���ο���ͳ�Ʊ���*/
  	
  	$.chart=function(options){
  		//Ĭ�ϲ�������
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
        "type": opts.type,//ͳ�Ʊ�������column2d��column3d��pie2d��pie3d
        "renderAt": opts.target,//ͳ�Ʊ����Ŀ��
        "width": opts.width,
        "height": opts.height,
        "dataFormat": opts.dataType,//ͳ��������Ⱦ���� json/xml��������
        "dataSource": opts.data

	  });
	revenueChart.render();
	});
  };