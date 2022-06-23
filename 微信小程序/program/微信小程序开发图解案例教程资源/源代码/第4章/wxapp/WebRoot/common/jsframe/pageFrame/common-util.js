

var title_onfoucs = function(o, v){
	if(o){
		if(v==o.value){
			o.value = "";
			o.style.color="#000";
		}
	}
};

var title_onblur = function(o, v){
	if ("" == o.value.replace(/\s+/g, "")) {
		o.value = v;
		o.style.color = "#aaaaaa";
	}
};

var title_onkeyup = function(event){ 
    e = event ? event :(window.event ? window.event : null); 
    if(e.keyCode==13){ 
    	queryStore();
    } 
};

//初始化单击复选框后文字，复选框选中 。取消的话复选框取消
function initCheckEvent(){
	var checkObjs=$("a[name='checksText']");
	checkObjs.each(function(){
		var checkObj=$(this);
		checkObj.css("cursor","pointer");
		
		checkObj.bind("click",function(){
			var check=$(this).prev();
			var isCheck=check.attr('checked');
			if(isCheck){
				check.removeAttr('checked');
			}else{
				check.attr('checked','checked');
			}
		});
	}); 
}

/**
 * 将只读的属性框，不能获得焦点
 */
function shutDelKey(){
	var readonlys=$("[readonly]");
	readonlys.each(function(){
		var redonluObj=$(this);
		redonluObj.bind("focus",function(){
			var curObj=$(this);
			var curVal=curObj.attr("readonly");
			if(curVal)  
			curObj.blur(); 
		});
	});
}



$(document).keydown(function (e) {//绑定键盘按下事件
    var doPrevent;
    // for IE && Firefox
    var varkey = (e.keyCode) || (e.which) || (e.charCode);
    if (varkey == 8) {
        var d = e.srcElement || e.target;
        if (d.tagName.toUpperCase() == 'INPUT' || d.tagName.toUpperCase() == 'TEXTAREA') {
            doPrevent = d.readOnly || d.disabled;
            if (d.type.toUpperCase() == 'SUBMIT'
                || d.type.toUpperCase() == 'RADIO'
                || d.type.toUpperCase() == 'CHECKBOX'
                || d.type.toUpperCase() == 'BUTTON') {
                doPrevent = true;
            }
        }
        else {
            doPrevent = true;
        }
    }
    else {
        doPrevent = false;
    }
if (doPrevent)
    e.preventDefault();
});