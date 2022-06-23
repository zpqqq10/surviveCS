/**
 * 消息提示对话框
 */
/**默认弹出窗口配置*/
var WinDefConfig = function(){
	return {
		title 	: '窗口',
		lock	: MSG_LOCK,
		opacity	: MSG_OPACITY,
		width	: 650, 
		height	: 400
	};
}
var ArtWindow = {
	/**
	 * 弹出一个窗口
	 * @param {} url	新页面的url
	 * @param {} config	窗口配置
	 * @param {} params	要传递到新页面的参数
	 * @param {} callBack	窗口关闭时的回调函数
	 */
	Open : function(url, config, params, callBack){
		config = config || {};
		var cfg = WinDefConfig();
		$.extend(cfg, config);
		if($.isFunction(callBack)){
			cfg.close = callBack;
		}
		//传递参数给url页面
		if(params){
			for(var p in params){
				art.dialog.data(p, params[p]);
			}
		}
		art.dialog.open(url, cfg, false);
	}
}
