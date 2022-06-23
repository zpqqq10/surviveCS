var MSG_OPACITY = 0.4;
var MSG_LOCK = true;
var MSG_TIME = 10;
var MSG_WIDTH = 240;
var lockiframe = false;
var setLockiframe = function(flag){
	this.lockiframe = flag;
}
/**
 * 消息提示对话框
 */
var ArtDefConfig = function(){
	return {
	    title: '消息', 	//标题内容
		content: '', 	//消息内容
	    width: 220, 	//内容宽度
		icon: 'warning',//消息图标
		lock: true, 	//开启锁屏
		opacity: 0.4, 	//锁屏遮罩透明度
		lockiframe: lockiframe,
		autoclose: false, 	//自动关闭
		cancel: function(){
	    	return true;
	    },				//取消按钮回调函数
	    cancelVal:'关闭'//"取消按钮"文字
	};
}
var ArtMsg = {
	Msg : {
		Save_Succ 	: '保存成功！',
		Save_Error 	: '保存失败，请稍后重试！',
		Del_Succ 	: '删除成功！',
		Del_Error 	: '删除失败，请稍后重试！',
		Edit_Succ 	: '修改成功！',
		Edit_Error 	: '修改失败，请稍后重试！',
		Operate_Succ : '操作成功！',
		Operate_Error: '操作失败！'
	},
	/**
	 * 普通对话框
	 */
	Dialog : function (config){
		var defConfig = ArtDefConfig();
		$.extend(defConfig,config || {});
		var title = defConfig.title;
		defConfig.init = function () {
	    	var that = this, i = 5;
	        var fn = function () {
	            that.title(title +"：（消息框将在 "+ i + ' 秒后关闭）');
	            !i && that.close();
	            i --;
	        };
	        timer = setInterval(fn, 1000);
	        fn();
	    };
	    defConfig.close = function () {
	    	clearInterval(timer);
	    };
		return art.dialog(defConfig);
	},
	/**
	 * 没有权限，禁止访问可以调用此消息提示（图标是一悲伤的表情）
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	Sad : function(msg,time){
		this.Dialog({title:'消息', content:msg, time: time, icon: 'face-sad'});
	},
	/**
	 * 友好的消息提示（图标是一笑脸）
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	Smile : function(msg,time){
		this.Dialog({title:'消息', content:msg, time: time, icon: 'face-smile'});
	},
	/**
	 * 警告信息
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	Warn : function(msg,time){
		this.Dialog({title:'警告', content:msg, time: time, icon: 'warning'});
	},
	/**
	 * 修改操作时没有选中要修改的信息 可以使用此提示框
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	WarnUpdate : function(msg,time){
		this.Dialog({title:'警告', content:msg||'请选择要修改的记录', time: time, icon: 'warning'});
	},
	/**
	 * 删除操作时没有选中要修改的信息 可以使用此提示框
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	WarnDelete : function(msg,time){
		this.Dialog({title:'警告', content:msg||'请选择要删除的记录', time: time, icon: 'warning'});
	},
	/**
	 * 操作成功后的消息提示
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	Succ : function(msg,time){
		this.Dialog({title:'消息', content:msg, time: time, icon: 'succeed'});
	},
	/**
	 * 操作失败后的消息提示
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	Error : function(msg,time){
		this.Dialog({title:'错误', content:msg, time: time, icon: 'error'});
	},
	/**
	 * 在提交Ajax请求时，停留在页面的遮罩层
	 * @param msg  提示内容
	 */
	Mask : function(msg){
		var m = '<img src="'+Config.ROOT+'/common/artdialog/skins/icons/loading.gif"/>&nbsp;&nbsp;' + (msg || '正在请求数据，请稍候...');
		return art.dialog({
			title  : '消息',
			width  : 200,
			content: m,
			lock   : MSG_LOCK,
			opacity: MSG_OPACITY,
			cancel : false
		});
	},
	/**
	 * 选择对话框
	 * @param msg  提示内容
	 * @param callBack  回调函数
	 */
	Confirm : function(msg, callBack){
		var config = {
			title : '确认',
			icon: 'question',
		    content: msg || '您确定要执行该操作吗？',
		    time : '',
		    ok: function () {
		    	if($.isFunction(callBack)){callBack();}
		        return true;
		    },
		    cancelVal: '取消',
		    cancel: true 
		};
		this.Dialog(config);
	},
	/**
	 * 选择对话框
	 * @param msg  提示内容
	 * @param callBack  回调函数
	 */
	Confirm2 : function(msg, callBack,cancelCallBack){
		var config = {
			title : '确认',
			icon: 'question',
		    content: msg || '您确定要执行该操作吗？',
		    time : '',
		    ok: function () {
		    	if($.isFunction(callBack)){callBack();}
		        return true;
		    },
		    cancelVal: '取消',
		    cancel:  function () {
		    	if($.isFunction(cancelCallBack)){cancelCallBack();}
		        return true;
		    }
		};
		this.Dialog(config);
	},Confirm3 : function(msg, callBack,cancelCallBack){
		var config = {
				width: 220, 	//内容宽度
				lock: true, 	//开启锁屏
				opacity: 0.4, 	//锁屏遮罩透明度
				lockiframe: lockiframe,
				autoclose: false, 	//自动关闭
				title : '确认',
				icon: 'question',
			    content: msg || '您确定要执行该操作吗？',
			    button:[{name:'是',
			    	id:'btn1',
			    	callback:function(){
			    		callBack();
			    	}},{
			    		id:'btn2',
			    		name:'否',
				    	callback:function(){
				    		cancelCallBack();
				    	}
			    	}]
			};
			return art.dialog(config);
		},
	/**
	 * 确认删除对话框
	 * @param {} callBack	回调函数
	 */
	ConfirmDelete : function(callBack){
		this.Confirm('确定要删除选择的记录？', callBack);
	},
	/**
	 * 带有回调函数的消息提示
	 * @param msg  消息内容
	 * @param callBack 回调函数
	 */
	Alert : function(msg, callBack){
		var config = {
			title : '消息',
			icon: 'succeed',
		    content: msg || '操作成功！',
		    time : '',
		    ok: function () {
		    	if($.isFunction(callBack)){callBack();}
		        return true;
		    },
		    cancel: false 
		};
		this.Dialog(config);
	}
}
