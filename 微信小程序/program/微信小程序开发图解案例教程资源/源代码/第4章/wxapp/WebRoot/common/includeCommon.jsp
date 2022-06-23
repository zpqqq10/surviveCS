<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!--jQuery等通用 -->
<script type="text/javascript" src="${appName}/common/javascript/jquery-1.8.2.js" ></script>
<script type="text/javascript" src="${appName}/common/javascript/jquery-ui.js"></script>
<script type="text/javascript" src="${appName}/common/javascript/jquery-ajax.js" ></script>
<script type="text/javascript" src="${appName}/common/javascript/json2.js" ></script>

<!--工具、页面通用类 -->
<script type="text/javascript" src="${appName}/common/javascript/util.js" ></script>
<script type="text/javascript" src="${appName}/common/javascript/urlUtil.js" ></script>
<script type="text/javascript" src="${appName}/common/javascript/domUtil.js" ></script>
<script type="text/javascript" src="${appName}/common/javascript/date.js" ></script>
<script type="text/javascript" src="${appName}/common/javascript/PinyinUtil.js"></script>
<script type="text/javascript" src="${appName}/common/javascript/loading.js"></script>
<script type="text/javascript" src="${appName}/common/javascript/doc.js"></script>
<script type="text/javascript" src="${appName}/common/javascript/HashMap.js"></script>
<script type="text/javascript" src="${appName}/common/javascript/common-page.js"></script>

<!-- layer -->
<script type="text/javascript" src="${appName}/common/jsframe/layer/layer.js"></script>
<script type="text/javascript" src="${appName}/common/jsframe/layer/layerUtil.js"></script>
<script type="text/javascript" src="${appName}/common/jsframe/layer/laydate.js"></script>

<!-- 时间控件 -->
<script  type="text/javascript" src="${appName}/common/jsframe/My97DatePicker/WdatePicker.js"></script>



<script type="text/javascript">
	var appName="${appName}";
	var windowHeight=$(window).height();
	var windowWidth=$(window).width();
	layer.config({
	    shade:0.6,
	    shift:5
	});
	
	$(document).ready(function(){
		$("body").ajaxStart(onStart)
			     .ajaxStop(onStop);
		function onStart(event) {
			//$(this).append("<div class='loading pa'></div>");
			loadingIndex = layer.load(1, {
					shade: [0.1,'#000'],
				    shadeClose: true
				});
		}
		function onStop(event, xhr, settings) {
			//$(this).find(".loading").hide();
			layer.close(loadingIndex);
		}
		function onSuccess(event, xhr, settings) {
		}
		function onComplete(event, xhr, settings) {
		}
	});

</script>


