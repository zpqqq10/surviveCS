

var getClientWidth = function(){
	return document.documentElement.clientWidth;
};
var getClientHeight = function(){
	return document.documentElement.clientHeight;
};
var getScrollHeight = function(){
	return document.body.scrollHeight;
};

function onClickTitle(el)
{
	if(el.value=='请输入标题')
		el.value="";
}
function onBlurTitle(el)
{
	if(el.value=='')
	{
		el.value="请输入标题";
	}
}
function checkNum(el){
	if (isNaN(el.value)) {
		alert('请输入数字');
		el.value = '';
		el.focus();
	}    
}
function FormatDate(str){
	var result = "";
	if(str){
		if(str.length==14){
			result = str.substring(0,4) +"-"+
						str.substring(4,6)+"-"+
						str.substring(6,8)+" "+
						str.substring(8,10)+":"+
						str.substring(10,12)+":"+
						str.substring(12,14);
		}else if(str.length==8){
			result = str.substring(0,4) +"-"+
						str.substring(4,6)+"-"+
						str.substring(6,8);
		}
	}
	return result;
}
function replaceTag(str){
	str = str.replace(/\</g,"&lt;");
    str = str.replace(/\>/g,"&gt;");
    return str;
}