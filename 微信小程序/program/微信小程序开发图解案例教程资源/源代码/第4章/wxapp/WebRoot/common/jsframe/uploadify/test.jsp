<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>批量上传图片</title>
<meta name="robots" content="noindex, nofollow" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="swfobject.js"></script>
    <script type="text/javascript" src="jquery.uploadify.v2.1.0.js"></script>
    <link href="uploadify.css" rel="stylesheet" type="text/css" />
    
	<script type="text/javascript">
	$(document).ready(function() {
	 $("#uploadify").uploadify({
	        'uploader'       : 'uploadify.swf',//指定uploadify.swf路径  
	        'script'         : 'a' ,//后台处理的请求的servlet,同时传递参数,由于servlet只能接收一个参数，所以将两个参数合并成一个。
	        'cancelImg'      : 'images/cancel.png',
	        'folder'         : 'uploads',
	        'queueID'        : 'fileQueue',//与页面的id对应  
	        'fileDesc'       : 'Slikovne datoteke (*.jpg, *.gif, *.png, *.jpeg, *.bmp)',
	        'fileExt'        : '*.jpg;*.gif;*.jpeg;*.png;*.bmp',//控制可上传文件的扩展名，启用本项时需同时声明fileDesc  
	        'auto'           : false,//是否自动上传，即选择了文件即刻上传。
	        'multi'          : true,//是否允许同时上传多文件，默认false
	        //'simUploadLimit' : 2,//多文件上传时，同时上传文件数目限制 
	        'queueSizeLimit' : 10,//队列中同时存在的文件个数限制 
	        'sizeLimit'      : 2097152, //2M 设置单个文件大小限制 
	        'buttonText'     : '浏览上传文件',
	      
	        //'hideButton'     : true,
	        onComplete: function (evt, queueID, fileObj, response, data) {
	        	insertImage(response, queueID);
	        }, 
	    	onAllComplete: function(evt, data){
	        	dialog.Cancel();
	        }
	    });

	});


	function insertImage(json, queueID) {
		var obj = eval( "(" + json + ")" );//转换后的JSON对象
		var status = obj.status;
		
		switch ( status )
		{
			case 1 :	// success
				var imgSrc = obj.uploadFilePath;
				imgSrc = imgSrc.replace( new RegExp("&","g"), "&amp;") ;
				var width = $('#txtWidth').val();
				var height = $('#txtHeight').val();
				var html = '<img border="0" alt="" src="' + imgSrc + '"';
				html += width == 0 ? '' : ' width="' + $('#txtWidth').val() + '"';
				html += height == 0 ? '' : ' height="' + $('#txtHeight').val() + '"';
				html += '>';
				oEditor.FCK.InsertHtml(html);// 插入HTML
				break ;
			case 500 :
				alert( obj.errorMessage ) ;
				$('#uploadify').uploadifyCancel(queueID);
				break ;
			default :
				alert( "系统忙，请稍后再试！" ) ;
				return ;
		}
	}

	function OnSizeChanged( dimension, value )
	{
		if(isNaN(value)){
			alert('输入的字符必须是数字！');
			if(dimension == "Width") {
				$('#txtWidth').val('');
				$("#txtWidth").focus();
			} else {
				$('#txtHeight').val('');
				$("#txtHeight").focus();
			}
			return false;
		} 
	}

	startUpload = function() {
		
		if($("#waterMark").attr("checked")==true){
			var uploadAction = 'bs.edit.content.ImageBatch.action' + '?contentId=' + dialog.parent.getContentSId() + "&waterMark=1";
			$('#uploadify').uploadifySettings('script', uploadAction);
		}
		$('#uploadify').uploadifyUpload();
	}
	
	</script>
</head>
<body >
	<input type="file" name="uploadify" id="uploadify" />&nbsp;&nbsp;&nbsp;&nbsp;
	
	添加水印<input type="checkbox" name="waterMark" id="waterMark" value="1" onfocus="this.blur()">&nbsp;
	
	<span >宽度</span>
	<input type="text" size="3" id="txtWidth" maxlength="4" onkeyup="OnSizeChanged('Width',this.value);" />&nbsp;
	<span >高度</span>
	<input type="text" size="3" id="txtHeight" maxlength="4" onkeyup="OnSizeChanged('Height',this.value);" />
	<div id="fileQueue"></div>
    <p>
    <input type="button" name="button1" value=" 上    传 " onclick="javascript:startUpload();">&nbsp;&nbsp;&nbsp;&nbsp;   
    <input type="button" name="button2" value="取消所有上传" onclick="javascript:$('#uploadify').uploadifyClearQueue()">
    </p>
</body>
</html>