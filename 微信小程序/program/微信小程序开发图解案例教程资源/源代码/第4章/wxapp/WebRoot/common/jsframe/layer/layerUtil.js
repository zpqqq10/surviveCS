

var layerUtil={
		success:function(msg,callback){
			if(!msg){
				msg="操作成功！";
			}
			window.top.layer.open({
				title:false,
				closeBtn:false,
				type:0,
				btn:[],
				icon:1,
				content:msg,
				time:1500,
				shadeClose:true,
				yes: function(index){
				},
				cancel:function(index){
				},
				end:function(index){
					if($.isFunction(callback)){
						callback();
					}
				}
			});
		},
		error:function(msg,callback){
			if(!msg){
				msg="请刷新后重试！";
			}
			window.top.layer.open({
				title:false,
				closeBtn:false,
				type:0,
				btn:[],
				icon:2,
				content:msg,
				time:1500,
				shadeClose:true,
				yes: function(index){
				},
				cancel:function(index){
				},
				end:function(index){
					if($.isFunction(callback)){
						callback();
					}
				}
			});
		}
};