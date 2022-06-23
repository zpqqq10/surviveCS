
//定义一个全局的应用上下文名称
/*
	var appName;
	var pathName=window.location.pathname;
	var paths=pathName.split("/");
	if(paths.length>=2)
		appName="/"+paths[1];
	if(!appName){
	
		alert("没有获得应用上下文名称");
	}
*/
	function fDebugAlert(debug){
		alert("debug:"+debug);
	}

//默认返回json对象,全是get	
function ajax(url,callBack,noJson){	
	var obj={};
	obj.ajax="1";
	if(noJson){
		$.get(url,function(msg){
			callBack(msg);
		});
	}else{
		
	$.getJSON(url,obj,function(msg){
	
		callBack(msg);
	});
	}
}
	
function ajaxToken(url,callBack,noJson){
	var turl=appName+"/main/tokenGen.action?ajax=1";
	$.getJSON(turl,'',function(token){
		var index=url.indexOf("?");
		if(index>-1){
			url=url+"&ajax=1&tokenName="+token.name+"&token="+token.value;
		}else{
			url=url+"?ajax=1&tokenName="+token.name+"&token="+token.value;
			
		}
		if(noJson){
			$.get(url,function(msg){
				callBack(msg);
			});
		}else{
			
		   $.getJSON(url,function(msg){
			  callBack(msg);
		   });
		}
		
		
	});
	
	
}

function postToken(url,content,callBack){
	
	var turl=appName+"/main/tokenGen.action?ajax=1";
	
	$.getJSON(turl,'',function(token){
		
		var index=url.indexOf("?");
		if(index>-1){
			url=url+"&tokenName="+token.name+"&token="+token.value;
		}else{
			url=url+"?tokenName="+token.name+"&token="+token.value;
			
		}
	
		post(url,content,callBack);
	});
}





function post(url,content,callBack){
	//url=url+"?callBack="+callBack;
	var form=document.getElementById("innerForm");
	if(!form){
		form=document.createElement("form");
		$(document.body).append(form);
		$(form).hide();
		$(form).attr("id","innerForm");
		form.target="innerFrame";
		
	}

	
	$(form).empty();
	if(callBack)
	content.callBack=callBack;
	form.action=url;
	form.method="post";
	var s='';
	for(var attr in content){
	var at=content[attr];
		if(at){
			s+='<input  type=hidden name="'+attr+'"  />';
		}
	}

	
	$(form).html(s);
	
		for(var attr in content){
			var at=content[attr];
			
			if((at)||(Number(at)==0)){
				var dom=$("#innerForm input[name="+attr+"]");
				var len=dom.length;
				if(len){
			   var ad=dom[0];
			   ad.value=at;
				}
			
			}
			at=null;
		}
		
	form.submit();
	
	
	
	
	
}


function buildTime(timeStr){
	if(timeStr){
	var time={};
	var len=timeStr.length;
	
	if(len!=14){
	    return time;	
	}
	time.year=timeStr.substr(0,4);
	time.mon=timeStr.substring(4,6);
	time.day=timeStr.substring(6,8);
	
	time.hour=timeStr.substring(8,10);
	time.min=timeStr.substring(10,12);
	time.second=timeStr.substring(12,14);
	time.dayTime=time.year+"-"+time.mon+"-"+time.day;
	time.allTime=time.dayTime+" "+time.hour+":"+time.min+":"+time.second;
	time.minTime=time.dayTime+" "+time.hour+":"+time.min;
	time.secTime=time.dayTime+" "+time.hour+":"+time.min+":"+time.second;
	time.dDtime=time.year+"年"+time.mon+"月"+time.day+"日";
	time.displayStr=time.year+"年"+time.mon+"月"+time.day+"日 "+time.hour+":"+time.min+":"+time.second;
	return time;
	}
}


/**
 * 修改时间格式将20090202020202转换成
 * @param time
 * @return
 */
function displayTime(time,number){
	var len=time.length;
	
	if(len!=14){
	    return time;	
	}
	var year=time.substr(0,4);
	
	var mon=time.substring(4,6);
	var day=time.substring(6,8);
	
	var hour=time.substring(8,10);
	var min=time.substring(10,12);
	var sec=time.substring(12,14);
if(number){
		mon=Number(mon);
		day=Number(day);
		hour=number(hour);
		min=Number(min);
		sec=Number(sec);
		
	}
    newtime=year+"-"+mon+"-"+day+" "+hour+":"+min+":"+sec;

	return newtime;
}

//清除粘贴非数字类型
function replaceNoDigitPaste(){
var text=clipboardData.getData('text').replace(/[^\d\.]/g,'');

  str=text;
	 re = /^\d+\.?\d*$/;
	 if(!re.test(str))
 {   len=str.length;
    str1=str.substr(0,len-1);
	text=str1;

	}
clipboardData.setData('text',text);

}

//清除输入非数字类型
function replaceNoDigit(obj){

	obj.value=obj.value.replace(/[^\d\.]/g,'') ;
	str=obj.value;
	 re = /^\d+\.?\d*$/
	 if(!re.test(str))
 {  len=str.length;
    str1=str.substr(0,len-1);
	obj.value=str1;
 }
	

}

//打开一个居中的窗口
function openMiddleWindow(url){                                //转向网页的地址;
	  var name="";                           //网页名称，可为空;
	  var iWidth=800;                          //弹出窗口的宽度;
	  var iHeight=550;                        //弹出窗口的高度;
	  var iTop = (window.screen.availHeight-30-iHeight)/2;       //获得窗口的垂直位置;
	  var iLeft = (window.screen.availWidth-10-iWidth)/2;           //获得窗口的水平位置;
	window.open(url,name,'height='+iHeight+',,innerHeight='+iHeight+',width='+iWidth+',innerWidth='+iWidth+',top='+iTop+',left='+iLeft+',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');

}


function openFullWindow(url){
	window.open(url,"_blank","width="+(screen.availWidth-10)+",height="+(screen.availHeight-30)+",resizable=1,top=0,left=0");
	
}



function getEntityVal(html){
	if(!html || html=='null')
		html=' ';
	var con=$("<span>"+html+"</span>");
	var text=con.text();
	return text;
	
	
}


function returnNull(list){
	
	if($.isArray(list)){
		var len=list.length;
		for(var i=0;i<len;i++){
			var map=list[i];
			var obj=map.obj;
			  var val=obj.val();
			  var msg=map.msg;
			  if(!val){
				  alert(msg);
				  obj.focus();
				  return false;
			  }
		}
		return true;
		
	}
	return false;

}


function replaceNullStr(str){
	if(!str){
		return "";
	}
	return str;
}


String.prototype.startWith=function(str){
	var index=this.indexOf(str);
	return (index==0);
}


function fToDbVal(con){
	if(!con||(con=="null")){
		return "";
	}
	var span=$("<span/>");
	span.text(con);
	var html=span.html();
	return html;
	
}


function fToBrowserVal(html){
	if(!html||(html=="null")){
		return "";
	}
	var con=$("<span>"+html+"</span>");
	var text=con.text();
	return text;
	
}


function fSetDomVal_V(jqDom,val){
	if(!val){
		val="";
	}
	val=fToBrowserVal(val);
	fSetDomVal_V(jqDom,val);
	//jqDom.val(val);
}

function fGetDomVal_S(jqDom){
	var val=doms.val();
	val=fToDbVal(val);
	jqDom.val(val);
}


function replaceNoDigit(input){
	
	return input.replace(/[^0-9]/g,"");
}


function setObjAttr(dom,con){

	dom.find("input,select").each(function(){
        var name=$(this).attr("name");
        var value=$(this).val();
        if(name){
        	if(value){
        		con[name]=fToDbVal(value);
        	}else{
        		con[name]=undefined;
        	}
        	
        }
	});
	
}

function fSetDomVal_V(dom,val){
	
	var tagName=dom.attr("tagName");
	if(tagName=="SELECT"){
		setTimeout(function(){
			dom.find("option[value="+val+"]").attr("selected",true);
		},1);
	}else if(tagName=="SPAN"){
		dom.text(val);
	}else{
		dom.val(val);
	}
}


function clone(obj) {    
	// Handle the 3 simple types, and null or undefined 
	if (null == obj || "object" != typeof obj) 
		return obj;  
	// Handle Date     
	if (obj instanceof Date) {        
		var copy = new Date(); 
		copy.setTime(obj.getTime());  
		return copy;    
		}
	// Handle Array     
	if (obj instanceof Array) {       
		var copy = [];  

		var len =obj.length
		for (var i = 0;i<len; ++i) 
		{            
			copy[i] = clone(obj[i]);  
		}        
		return copy; 
		}
	// Handle Object     
	if (obj instanceof Object) 
	{         var copy = {};     
	for (var attr in obj) {         
		if (obj.hasOwnProperty(attr)) copy[attr] = clone(obj[attr]); 
		}         return copy;     
		}   
	throw new Error("Unable to copy obj! Its type isn't supported.");
	}



Number.prototype.toPercent = function(n){n = n || 2;return ( Math.round( this * Math.pow( 10, n + 2 ) ) / Math.pow( 10, n ) ).toFixed( n ) + '%';}


String.prototype.endWith=function(s){
	  if(s==null||s==""||this.length==0||s.length>this.length)
	     return false;
	  if(this.substring(this.length-s.length)==s)
	     return true;
	  else
	     return false;
	  return true;
	 }
	 String.prototype.startWith=function(s){
	  if(s==null||s==""||this.length==0||s.length>this.length)
	   return false;
	  if(this.substr(0,s.length)==s)
	     return true;
	  else
	     return false;
	  return true;
	 }
	 
	 
	 
     function fGainAttrValFromCon_S(con,name){
    		var attrs=con.attrList;
    		if(attrs){
    			var len=attrs.length;
    			if(len>0){
    				for(var i=0;i<len;i++){
    					var attr=attrs[i];
    					if(attr.shortName==name){
    						return attr.value;
    					}
    					
    				}
    			}
    			
    		}
    		return "";
    	}
     var title_onfoucs = function(o, v){
    		if(o){
    			if(v==o.value){
    				o.value = "";
    				o.style.color="#000";
    			}
    		}
    	};
     
 var checkAll = function(o){
		var flag = $("#checkbox").attr("checked") || false;
		if(o)flag = o.checked;
		$("input[name='con']").attr("checked", flag);
	};
	function fGainAttrValFromCon_S(con,name){
		var attrs=con.attrList;
		if(attrs){
			var len=attrs.length;
			if(len>0){
				for(var i=0;i<len;i++){
					var attr=attrs[i];
					if(attr.shortName==name){
						return attr.value;
					}
				}
			}
		}
		return "";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 对Date的扩展，将 Date 转化为指定格式的String   
	// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，   
	// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)   
	// 例子：   
	// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423   
	// (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18   
	Date.prototype.Format = function(fmt)   
	{ //author: meizz   
	  var o = {   
	    "M+" : this.getMonth()+1,                 //月份   
	    "d+" : this.getDate(),                    //日   
	   "h+" : this.getHours(),                   //小时   
	   "m+" : this.getMinutes(),                 //分   
	   "s+" : this.getSeconds(),                 //秒   
	    "q+" : Math.floor((this.getMonth()+3)/3), //季度   
	   "S"  : this.getMilliseconds()             //毫秒   
	  };   
	  if(/(y+)/.test(fmt))   
	    fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
	  for(var k in o)   
	   if(new RegExp("("+ k +")").test(fmt))   
	  fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
	  return fmt;   
	}  

	
	
	
	
	
	

	formateTime = function(time){
		if(time.length==14){
			return time.substring(0,4) + '-' + time.substring(4,6) + '-' + time.substring(6,8) + ' ' + time.substring(8,10) + ':' + time.substring(10,12) + ':' + time.substring(12,14);
		} else {
			return "";
		}
	};
	
	
	/**
	 * 给url添加参数（注意，如果包含中文，则不适合该方法
	 */
	function fAppendUrlParam_S(url,obj){
		var index=url.indexOf("?");
		var appended=false;
		if(index>-1){
			appended=true;
		}
		for(var attr in obj){
			var at=obj[attr];
			var ap=false
			if(Number(at)==0){
				
			}
			if((at)||ap){
                  
               if(!appended){
            	   url+="?"+attr+"="+at;
               }else{
            	   url+="&"+attr+"="+at;
               }
               appended=true;
			}
		}
		return url;
		
	}
	function getFormatDateByLong(time){  
	    var datetime = new Date();  
	    datetime.setTime(time);  
	    var year = datetime.getFullYear();  
	    var month = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1;  
	    var date = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate();  
	    var hour = datetime.getHours()< 10 ? "0" + datetime.getHours() : datetime.getHours();  
	    var minute = datetime.getMinutes()< 10 ? "0" + datetime.getMinutes() : datetime.getMinutes();  
	    var second = datetime.getSeconds()< 10 ? "0" + datetime.getSeconds() : datetime.getSeconds();  
	    return year + "-" + month + "-" + date+" "+hour+":"+minute+":"+second;  
	}  
	