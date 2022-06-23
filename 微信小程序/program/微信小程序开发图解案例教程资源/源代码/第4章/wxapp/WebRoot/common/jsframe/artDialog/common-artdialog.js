
/**
 * 无法访问
 */
var Show_Sad_Msg = function(msg){
	art.dialog({
	    title: '消息',
	    width: MSG_WIDTH,
		content: msg || '',
		icon: 'face-sad',
		lock: MSG_LOCK,
		opacity: MSG_OPACITY,
		cancel: function(){
	    	return true;
	    },
	    cancelVal:'关闭'
	});
};
/**
 * 无法访问 自动关闭
 */
var Show_Sad_HideMsg = function(msg,time){
	art.dialog({
	    title: '消息',
	    width: MSG_WIDTH,
		content: msg || '',
		icon: 'face-sad',
		lock: MSG_LOCK,
		time: time || MSG_TIME,
		opacity: MSG_OPACITY,
		cancel: function(){
	    	return true;
	    },
	    cancelVal:'关闭'
	});
};
/**
 * 警告信息
 */
var Show_Warn_Msg = function(msg){
	art.dialog({
	    title: '警告',
	    width: MSG_WIDTH,
		content: msg || '',
		icon: 'warning',
		lock: MSG_LOCK,
		opacity: MSG_OPACITY,
		cancel: function(){
	    	return true;
	    },
	    cancelVal:'关闭'
	});
};
/**
 * 警告信息 自动关闭
 */
var Show_Warn_HideMsg = function(msg,time){
	art.dialog({
	    title: '警告',
	    width: MSG_WIDTH,
		content: msg || '',
		icon: 'warning',
		lock: MSG_LOCK,
		time: time || MSG_TIME,
		opacity: MSG_OPACITY,
		cancel: function(){
	    	return true;
	    },
	    cancelVal:'关闭'
	});
};
/**
 * 成功信息
 */
var Show_Succ_Msg = function(msg, width){
	art.dialog({
	    title: '消息',
	    width: width || MSG_WIDTH,
		content: msg || '',
		icon: 'succeed',
		lock: MSG_LOCK,
		opacity: MSG_OPACITY,
		cancel: function(){
	    	return true;
	    },
	    cancelVal:'关闭'
	});
};
/**
 * 成功信息 自动关闭
 */
var Show_Succ_HideMsg = function(msg, time){
	art.dialog({
	    title: '消息',
	    width: MSG_WIDTH,
		content: msg || '',
		icon: 'succeed',
		lock: MSG_LOCK,
		time: time || MSG_TIME,
		opacity: MSG_OPACITY,
		cancel: function(){
	    	return true;
	    },
	    cancelVal:'关闭'
	});
};
/**
 * 错误信息
 */
var Show_Error_Msg = function(msg){
	art.dialog({
	    title: '错误',
	    width: MSG_WIDTH,
		content: msg || '',
		icon: 'error',
		lock: MSG_LOCK,
		opacity: MSG_OPACITY,
		cancel: function(){
	    	return true;
	    },
	    cancelVal:'关闭'
	});
};
/**
 * 错误信息 自动关闭
 */
var Show_Error_HideMsg = function(msg, time){
	art.dialog({
	    title: '错误',
	    width: MSG_WIDTH,
		content: msg || '',
		icon: 'error',
		lock: MSG_LOCK,
		time: time || MSG_TIME,
		opacity: MSG_OPACITY,
		cancel: function(){
	    	return true;
	    },
	    cancelVal:'关闭'
	});
};

/**
 * 修改警告提示框
 */
var Show_warnUpdate_Msg = function(msg, time) {
	this.Show_Warn_Msg(msg||'请选择要修改的记录',time);
};
/**
 * 删除警告提示框
 */
var Show_warnDelete_Msg = function(msg, time) {
	this.Show_Warn_Msg(msg||'请选择要删除的记录', time);
};

/**
 * 确认框
 * @param {} msg
 * @param {} callBack
 */
var Show_Confirm = function(msg, callBack){
	art.dialog({
		title: '确认',
		icon: 'question',
	    content: msg || '您确定要执行该操作吗？',
		lock: window.parent.MSG_LOCK,
		opacity: window.parent.MSG_OPACITY,
	    ok: function () {
	    	callBack();
	        return true;
	    },
	    cancelVal: '取消',
	    cancel: true 
	});
};


/**
 * 返回一个等待框
 * @param {} msg
 * @return {}
 */
var Show_Mask = function(msg, width){
	width = width || 200;
	var m = '<img src="'+Config.ROOT+'/common/artdialog/skins/icons/loading.gif"/>&nbsp;&nbsp;' + (msg || '正在请求数据，请稍候...');
	return art.dialog({
		title  : '消息',
		width  : width,
		content: m,
		lock   : MSG_LOCK,
		opacity: MSG_OPACITY,
		cancel : false
	});
};
/**
 * 弹出一个框
 */
var Show_Iframe_Dialog = function(url, title, ids, values, w, h){
	var width = 700;
	var height = 500;
	if(w){try {width = parseInt(w);} catch (e) {}}
	if(h){try {height = parseInt(h);} catch (e) {}}
	if(ids && values){
		var thizids = ids.split(",");
		var thizvalues = values.split(",");
		for(var i=0;i<thizids.length;i++){
			art.dialog.data(thizids[i], thizvalues[i]);
		}
	}
	art.dialog.open(url,{
		title : title || '全区大OA',
		lock: MSG_LOCK,
		opacity: MSG_OPACITY,
		width: width, 
		height: height
	}, false);
};
/**
 * 弹出一个框
 */
var Show_Iframe_Dialog_Default = function(url, title, ids, values, w, h){
	//alert(url);
	var width = 0;
	var height = 0;
	if(w){try {width = parseInt(w);} catch (e) {}}
	if(h){try {height = parseInt(h);} catch (e) {}}
	if(width == 0){try {width = document.documentElement.clientWidth -20;} catch (e) {}};
	if(height == 0){try {height = document.documentElement.clientHeight -60;} catch (e) {}};
	if(ids && values){
		var thizids = ids.split(",");
		var thizvalues = values.split(",");
		for(var i=0;i<thizids.length;i++){
			art.dialog.data(thizids[i], thizvalues[i]);
		}
	}
	
	art.dialog.open(url,{
		title : title || '全区大OA',
		lock: MSG_LOCK,
		opacity: MSG_OPACITY,
		width: width, 
		height: height
	}, false);
};

/**
 * 弹出一个框
 */
var Show_Iframe_Dialog_Default_gq = function(url, title, ids, values, w, h){
	var width = 0;
	var height = 0;
	if(w){try {width = parseInt(w);} catch (e) {}}
	if(h){try {height = parseInt(h);} catch (e) {}}
	if(width == 0){try {width = document.documentElement.clientWidth -20;} catch (e) {}};
	if(height == 0){try {height = document.documentElement.clientHeight -60;} catch (e) {}};
	if(ids && values){
//		var thizids = ids;
//		var thizvalues = values;
		for(var i=0;i<values.length;i++){
			art.dialog.data(ids[i], values[i]);
		}
	}
	
	art.dialog.open(url,{
		title : title || '全区大OA',
		lock: MSG_LOCK,
		opacity: MSG_OPACITY,
		width: width, 
		height: height
	}, false);
};


/**
 * 弹出一个框 填满整屏
 */
var Show_Iframe_FullDialog = function(url, title, ids, values){
	var width = 700, height = 500;
	try {width = document.documentElement.clientWidth -20;} catch (e) {};
	try {height = document.documentElement.clientHeight -60;} catch (e) {};
	if(ids && values){
		var thizids = ids.split(",");
		var thizvalues = values.split(",");
		for(var i=0;i<thizids.length;i++){
			art.dialog.data(thizids[i], thizvalues[i]);
		}
	}
	art.dialog.data("ifwidth", width);
	art.dialog.data("ifheight", height);
	art.dialog.open(url,{
		title : title || '全区大OA',
		lock: MSG_LOCK,
		opacity: MSG_OPACITY,
		width: width, 
		height: height
	}, false);
};
