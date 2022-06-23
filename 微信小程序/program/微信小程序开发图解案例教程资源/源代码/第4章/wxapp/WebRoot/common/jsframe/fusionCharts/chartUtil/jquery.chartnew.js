/*
 * lijian 1.0
 * jQuery JavaScript Library v1.0.0
 */
 
(function($){  

   $.fn.buildChart=function(options){
	   var defaults = { 
           	   charName:'chart',	//funtionchart对象
               swfName: 'FusionCharts/Column3D.swf',//哪种flash 饼图还是柱状图   
               charId: 'myChartId',//chart的id   
               width: '400',   
               height: '300' ,
               debugMode:'1',//是否调试
               registerWithJS:'1',//和js互调
               jsonDate:'Data.json',//json字符串
               isUrl:false		//是否字符串还是对象,还是url方式,ture:json对象。
           }; 
	   
	   
	   var settings=$.extend(defaults,options||{});
	   var divId=$(this).attr("id");
	   
	   var myChart = new options.charName(options.swfName,options.charId,options.width,options.height,options.debugMode,options.registerWithJS);  
       if(!options.isUrl){
       		myChart.setJSONData(options.jsonDate);   
       }else{
       		myChart.setJSONUrl(options.jsonDate);  
       }
       myChart.render(divId);
	   
   }
   
   //创建饼图和线图数据
  $.createPieLineData=function(options){
	  var O_PLData=this;
	  var defalults={
		 	  chartAttr:"",
			  caption:'图形标题',
			  o_data:{},
			  o_dataXValName:'deptName',
			  o_toolText:'',
			  o_link:'',
			  o_dataYValName:'visits'//o_data对象里面的哪个字段存统计数字
			  
	  };
	  var settings=$.extend(defalults,options||{});
	  
	
	  
	  var initData=function(settings){
		 	
		 	var data1=[];
		 	$(settings.o_data).each(function(i){
		 		var data1Chiled={};
		 		data1Chiled.label=this[settings.o_dataXValName];
		 		data1Chiled.value=this[settings.o_dataYValName];
		 		if(i==0){
		 			data1Chiled.isSliced="1";
		 		}
		 		var toolText=this[settings.o_toolText];
		 		if(toolText){
		 			data1Chiled.toolText=toolText;
		 		}
		 		
		 		var o_link=this[settings.o_link];
		 		if(o_link){
		 			data1Chiled.link=o_link;
		 		}
		 		
		 		
		 		data1.push(data1Chiled);
		 	});
		 	
		 	
		 	
		 	return data1;
		 }
	  
	  
	  
	  var jsonObj={};
	  	jsonObj.chart=settings.chartAttr;
	  	jsonObj.data=initData(settings);
	  
	  	return jsonObj;
  } 
  
  $.buildMSColumnData=function(options){
	  var O_PLData=this;
	  var defalults={
			  caption:'图形标题',
			  o_data:{},
			  o_lables:'columnName',
			  o_values:[],
			  o_seriesnames:[],
			  o_link:[]
			  
	  };
	  var settings=$.extend(defalults,options||{});
	  
	  var buildCategories=function(settings){
		  var categories=[];
		  var category=[];
		  var categoriesChild={};
		  categoriesChild.category=category;
		  
		  $(settings.o_data).each(function(){
			  var categoryChild={};
			  categoryChild.label=this[settings.o_lables];
			  category.push(categoryChild);
		  })
		  categories.push(categoriesChild);
		  return categories;
	  }
	  var buildDataset=function(settings){
		  var dataset=[];
		 
		  $(settings.o_seriesnames).each(function(i){
			  var datasetChild={};
			  datasetChild.seriesname=this;
			  var data=[];
			  
			  var value=settings.o_values[i];
			  var links="";
			  if(settings.o_link){
			  	  links=settings.o_link[i];
			  }
			  $(settings.o_data).each(function(j){
				  var dataChild={};
				  dataChild.value=this[value];
				  if(links){
				  	 dataChild.link=links[j];
				  }
				  data.push(dataChild);
			  })
			
			  
			  datasetChild.data=data;
			  dataset.push(datasetChild);
		  });
		  return dataset;
	  }
	  
	
	  var jsonObj={};
	  jsonObj.categories=buildCategories(settings);
	  jsonObj.dataset=buildDataset(settings);
	  return jsonObj;
  }
})(jQuery);   