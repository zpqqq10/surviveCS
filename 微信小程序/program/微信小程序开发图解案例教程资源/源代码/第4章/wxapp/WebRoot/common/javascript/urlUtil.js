

//根据url获取模块的名称，默认最后两位
var getModelNameByUrl=function(lastSize){
	var modelName=[];
	if(!lastSize){
		lastSize=2;
	}
	var curUrl=window.location.href;
	var curUrlArray=curUrl.split("/");
	var j=0;
	for(var i=lastSize-1;i>=0;i--){
		modelName[i]=curUrlArray[curUrlArray.length-j-2];
		j++;
	}
	return modelName.toString(); 
};




//获取js的参数，styleType:open(全打开，默认)，close(关闭，第一个打开)
var getJsArgs=(function(){
    var sc=document.getElementsByTagName('script');
    var args={},argsStr=[],param,t,name,value;
    var splitStr=sc[sc.length-1].src.split('?');
    if(splitStr.length>1){
	    var paramsArr=splitStr[1].split('&');
    	for(var i=0,len=paramsArr.length;i<len;i++){
            param=paramsArr[i].split('=');
            name=param[0],value=param[1];
            if(typeof args[name]=="undefined"){ //参数尚不存在
                args[name]=value;
            }else if(typeof args[name]=="string"){ //参数已经存在则保存为数组
                args[name]=[args[name]];
                args[name].push(value);
            }else{  //已经是数组的
                args[name].push(value);
            }
	    }
    }
    return args;
});
//var  styleType=getJsArgs().styleType;