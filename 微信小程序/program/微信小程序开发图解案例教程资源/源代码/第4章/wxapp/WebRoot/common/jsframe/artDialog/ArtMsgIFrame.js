/**
 * 消息提示对话框
 * 如果页面在iframe里面 可以调用此消息，穿越框架，达到全屏幕遮罩的效果
 * 必须引用 ArtMsg.js
 */
var ArtMsgIFrame = {
	Msg : ArtMsg.Msg,
	DefConfig : ArtMsg.DefConfig,
	/**
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param config
	 */
	Through_Dialog : function (config){
		var defConfig = ArtDefConfig();
		$.extend(defConfig,config || {});
		if(defConfig.autoclose==true){
			var title = defConfig.title;
			defConfig.init = function () {
		    	var that = this, i = 5;
		        var fn = function () {
			        if(i==0) that.close();
		            that.title(title +"：（消息框将在 "+ i + ' 秒后关闭）');
		            i--;
		        };
		        dialog_timer = setInterval(fn, 1000);
		    };
		    defConfig.close = function () {
		    	clearInterval(dialog_timer);
		    };
		}
		return art.dialog.through(defConfig);
	},
	/**
	 * 没有权限，禁止访问可以调用此消息提示（图标是一悲伤的表情）
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	Sad : function(msg,time){
		this.Through_Dialog({title:'消息', content:msg, time: time, icon: 'face-sad'});
	},
	/**
	 * 友好的消息提示（图标是一笑脸）
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	Smile : function(msg,time){
		this.Through_Dialog({title:'消息', content:msg, time: time, icon: 'face-smile'});
	},
	/**
	 * 警告信息
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	Warn : function(msg,time){
		this.Through_Dialog({title:'消息提示', content:msg, time: time, icon: 'warning'});
	},
	/**
	 * 修改操作时没有选中要修改的信息 可以使用此提示框
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	WarnUpdate : function(msg,time){
		this.Through_Dialog({title:'消息提示', content:msg||'请选择要修改的记录', time: time, icon: 'warning'});
	},
	/**
	 * 删除操作时没有选中要修改的信息 可以使用此提示框
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	WarnDelete : function(msg,time){
		this.Through_Dialog({title:'消息提示', content:msg||'请选择要删除的记录', time: time, icon: 'warning'});
	},
	/**
	 * 操作成功后的消息提示
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	Succ : function(msg,time){
		this.Through_Dialog({title:'消息', content:msg, time: time, icon: 'succeed'});
	},
	/**
	 * 操作失败后的消息提示
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	Error : function(msg,time){
		this.Through_Dialog({title:'错误', content:msg, time: time, icon: 'error'});
	},
	/**
	 * 在提交Ajax请求时，停留在页面的遮罩层
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 */
	Mask : function(msg){
		var m = '<img src="'+Config.ROOT+'/common/artdialog/skins/icons/loading.gif"/>&nbsp;&nbsp;' + (msg || '正在请求数据，请稍候...');
		return art.dialog.through({
			title  : '消息',
			width  : 220,
			content: m,
			lock   : MSG_LOCK,
			opacity: MSG_OPACITY,
			cancel : false
		});
	},
	/**
	 * 选择对话框
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param callBack  回调函数
	 */
	Confirm : function(msg, callBack){
		var config = {
			title: '确认',
			icon: 'question',
		    content: msg || '您确定要执行该操作吗？',
		    time:'',
		    ok: function () {
		    	if($.isFunction(callBack)){callBack();}
		        return true;
		    },
		    cancelVal: '取消',
		    cancel: true 
		};
		this.Through_Dialog(config);
	},
	/**
	 * 窗口
	 * @param {} msg
	 * @param {} callBack
	 */
	Win : function(cf, callBack){
		var config = {
			title: cf.title || '确认',
			icon: cf.icon || '',
		    content: cf.msg || '您确定要执行该操作吗？',
		    time:'',
		    ok: function () {
		    	if($.isFunction(callBack)){callBack();}
		        return true;
		    },
		    cancelVal: '取消',
		    cancel: true 
		};
		this.Through_Dialog(config);
	},
	/**
	 * 选择对话框
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param callBack  回调函数
	 */
	ConfirmCustom : function(config, callBack){
		var conf = {
				title: '确认',
				icon: 'question',
			    content: '您确定要执行该操作吗？',
			    time:'',
			    ok: function () {
			    	if($.isFunction(callBack)){callBack();}
			        return true;
			    },
			    cancelVal: '取消',
			    cancel: true 
			};
		$.extend(conf,config || {});
		this.Through_Dialog(conf);
	},
	/**
	 * 选择对话框
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param callBack  回调函数
	 */
	ConfirmCustom2 : function(config, callBack,cancelCallBack){
		var conf = {
				title: '确认',
				icon: 'question',
			    content: '您确定要执行该操作吗？',
			    time:'',
			    ok: function () {
			    	if($.isFunction(callBack)){callBack();}
			        return true;
			    },
			    cancelVal: '取消',
			    cancel: function () {
			    	if($.isFunction(cancelCallBack)){cancelCallBack();}
			        return true;
			    }
			};
		$.extend(conf,config || {});
		this.Through_Dialog(conf);
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
		this.Through_Dialog(config);
	},
	/**
	 * 操作成功后的消息提示
	 * 可穿越框架的对话框,在嵌套在 frame  iFrame 内的页面中使用
	 * @param msg  提示内容
	 * @param time 自动消失时间，不自动消失值为空 '' 单位以秒计算. 默认值为:3秒
	 */
	SuccCallback : function(msg,time,callBack){
		var config = {
			title : '消息',
			icon: 'succeed',
		    content: msg || '操作成功！',
		    time : time,
		    ok: function () {
		    	if($.isFunction(callBack)){callBack();}
		        return true;
		    },
		    cancel: function () {
		    	if($.isFunction(callBack)){callBack();}
		        return true;
		    }
		};
		this.Through_Dialog(config);
	}
}
