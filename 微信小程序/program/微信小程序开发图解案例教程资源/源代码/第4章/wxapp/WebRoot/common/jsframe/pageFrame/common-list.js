Array.prototype.contains = function (obj) { //利用Array的原型prototype点出一个我想要封装的方法名contains 
        for(var i=0;i<this.length;i++) {
            if (this[i].getOid() === obj.getOid()) {
            	return i;
            }
        }
        return -1;
};
Array.prototype.remove = function(val){
	var index = this.contains(val);
	if (index > -1) {
		this.splice(index, 1);
	}
};



var sUrl = "";
var oParams = new PageInfo();
var fCallBack;
var old_tab_id = "0";
var checkedObjects=new Array();// 翻页保存选中的id


function CheckMultiPagesInfo(){ } 
CheckMultiPagesInfo.prototype.oid=""; 
CheckMultiPagesInfo.prototype.inforId=""; 
CheckMultiPagesInfo.prototype.alt=""; 
CheckMultiPagesInfo.prototype.relationId="";
CheckMultiPagesInfo.prototype.setOid = function(oid){this.oid=oid};
CheckMultiPagesInfo.prototype.getOid = function(){return this.oid};
CheckMultiPagesInfo.prototype.setInforId = function(inforId){this.inforId=inforId};
CheckMultiPagesInfo.prototype.getInforId = function(){return this.inforId};
CheckMultiPagesInfo.prototype.setAlt = function(alt){this.alt=alt};
CheckMultiPagesInfo.prototype.getAlt = function(){return this.alt};
CheckMultiPagesInfo.prototype.setRelationId = function(relationId){this.relationId=relationId};
CheckMultiPagesInfo.prototype.getRelationId = function(){return this.relationId};

/*
 * 翻页选择ids
 */
function checkMultiPagesIds(){
	var oneches=document.getElementsByName("index_chk");
	for(var i=0;i<oneches.length;i++){
		var checkMultiParams = new CheckMultiPagesInfo();
		checkMultiParams.setOid(oneches[i].value);
		var inforIds=oneches[i].getAttribute("inforId");
		if(inforIds!=undefined && inforIds!="undefined" && inforIds!=""){
			checkMultiParams.setInforId(inforIds);
		}
		if(oneches[i].alt!=undefined && oneches[i].alt!="undefined" && oneches[i].alt!=""){
			checkMultiParams.setAlt(oneches[i].alt);
		}
		var relationIds=oneches[i].getAttribute("relationId");
		if(relationIds!=undefined && relationIds!="undefined" && relationIds!=""){
			checkMultiParams.setRelationId(relationIds);
		}
		if(oneches[i].checked==true){
			// 避免重复累计id （不含该id时进行累加）
			if(checkedObjects.length==0){
				checkedObjects.push(checkMultiParams);
			}else{
				if(checkedObjects.contains(checkMultiParams)==-1){
					checkedObjects.push(checkMultiParams);
				}
			}
		}
		if(oneches[i].checked==false){
			// 取消复选框时 含有该id时将id从全局变量中去除
			if(checkedObjects.contains(checkMultiParams)!=-1){
				checkedObjects.remove(checkMultiParams);
			}
		}
	}
}

/*
 * 设置ids的选中状态
 */
function getChecked(){
	var oneches=document.getElementsByName("index_chk");
	for(var i=0;i<oneches.length;i++){
		var checkMultiParams = new CheckMultiPagesInfo();
		checkMultiParams.setOid(oneches[i].value);
		var inforIds=oneches[i].getAttribute("inforId");
		if(inforIds!=undefined && inforIds!="undefined" && inforIds!=""){
			checkMultiParams.setInforId(inforIds);
		}
		if(oneches[i].alt!=undefined && oneches[i].alt!="undefined" && oneches[i].alt!=""){
			checkMultiParams.setAlt(oneches[i].alt);
		}
		var relationIds=oneches[i].getAttribute("relationId");
		if(relationIds!=undefined && relationIds!="undefined" && relationIds!=""){
			checkMultiParams.setRelationId(relationIds);
		}
		// 全局变量中含有id，则该复选框选中
		if(checkedObjects.contains(checkMultiParams)!=-1){
			oneches[i].checked=true;
		}
	}
}


/**
 * 加载数据列表
 * @param start 分页起始数
 * @param limit 每页显示数量
 */
function fLoadContents_V(start,limit){	
	oParams.setStart(start);
	oParams.setLimit(limit);
	counts = 0;
	infos = new Array();
	fLoadPageContents_V(sUrl,oParams,function(contents){
		 var s='';
		 var tc=0;
		 if(contents && contents.pageData){
			 $(contents.pageData).each(function(i){
				 counts = i + 2;
				 var tr=fCallBack(this,i);
				 s+=tr;
			 });
		 }
		 $("#mbody").html(s);
		 getChecked();
		 if(contents && contents.totalCount){
			 tc = contents.totalCount;
		 }
		 oParams.setTotalCount(tc);
		 initPage(oParams.getStart(),oParams.getLimit(), oParams.getTotalCount());
	});
};
/**
 * 向服务器段请求加载分页列表数据
 * @param url   请求链接
 * @param page  分页对象
 * @param callBack  回调函数
 */
function fLoadPageContents_V(url,page,callBack) {
	$.ajax({
		type : "post",
		url : url,
		data : page,
		dataType : "json",
		async : false,
		success : function(obj) {
			callBack(obj);
		},
		error : function() {
			ArtMsgIFrame.Error("加载失败，请稍后重试！");
		}
	});
};

/**
 * 切换TAB选项卡
 * @param id
 */
function switchTab(id){
	var old_obj = document.getElementById("tab_"+old_tab_id);
	if(old_obj){old_obj.className ="dbblack18_bold";}
	var now_obj = document.getElementById("tab_"+id);
	if(now_obj){now_obj.className ="dbblack18_bold_chose";}
	old_tab_id = id;
	if($("#checkbox"))$("#checkbox").attr("checked", false);
};

/**
 * checkbox 全选 or 反选
 * @param o
 */
var checkAll = function(o){
	var flag = $("#checkbox").prop("checked") || false;
	if(o)flag = o.checked;
	$("input[name='index_chk']").attr("checked", flag);
};

/**
 * 获取checkbox选择的值
 * @param name 获取的对象名 默认：index_chk
 */
var getCheckedValue = function(name){
	var values = new Array(), nam = name || 'index_chk';
	$("input[name='"+nam+"']").each(function(){
		if(this.checked=='checked' || this.checked==true){
			if(this.value)
 	            values.push(this.value);
		}
    })
   return values.toString();
};

/**
 * 向服务端发送一个post请求
 * @param url       请求链接
 * @param params    请求参数
 * @param callBack  回调函数
 */
var fPost_V = function(url,params,callBack){
	var mask = ArtMsgIFrame.Mask();
	jQuery.post(url,params,function(o){
		mask.hide();
		callBack(o);
	});
};

/**
 * 删除确认对话框
 */
var fDeleteContents_V = function(url,params, callBack) {
	var msg = '删除后所选记录不可恢复，您确定要删除吗？';
	ArtMsgIFrame.Confirm(msg,function(){
		fPost_V(url,params, callBack);
	});
};
/**
 * 操作提示对话框
 */
var fPoseContents_V = function(msg, url, params, callBack) {
	msg = msg || '您确定要执行此操作吗？';
	ArtMsgIFrame.Confirm(msg,function(){
		fPost_V(url,params, callBack);
	});
};
