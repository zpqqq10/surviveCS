/*
 * lijian 1.0
 * jQuery JavaScript Library v1.0.0
 */
 
(function($){  

    $.fn.extend({    
        //plugin name - animatemenu   
        columnCharts: function(options) {   
            var defaults = { 
            	charName:'chart',	//funtionchart对象
                swfName: 'FusionCharts/Column3D.swf',//哪种flash 饼图还是柱状图   
                charId: 'myChartId',//chart的id   
                width: '400',   
                height: '300' ,
                debugMode:'1',//是否调试
                registerWithJS:'1',//和js互调
                jsonDate:'Data.json',//json字符串
               // divId:"chartContainer", //生成图形的div的id
                jsonType:"data"		//是否字符串还是对象,还是url方式。
            }; 

            var options = $.extend(defaults, options);   
            divId=$(this)[0].id;
            //图片名称，id，宽，高，是否调试，是否和js相互条用
            var myChart = new options.charName(options.swfName,options.charId,options.width,options.height,options.debugMode,options.registerWithJS);  
            if(options.jsonType=='data'){
            	myChart.setJSONData(options.jsonDate);   
            }else{
            	myChart.setJSONUrl(options.jsonDate);  
            }
            myChart.render(divId);
        } ,
        changeData:function(obj){
        	var chartReference = FusionCharts(obj.chartId);   
        	if(obj.type){
        		chartReference.setJSONUrl(obj.url);
        	}else{
        		chartReference.setJSONData(obj.data);
        	}
        }
    });  
})(jQuery);   