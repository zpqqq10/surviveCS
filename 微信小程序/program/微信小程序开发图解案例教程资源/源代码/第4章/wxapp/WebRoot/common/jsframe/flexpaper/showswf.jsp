<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>显示文件</title>

<!-- 
<jsp:include page="/javascript/jsp/commonjs.jsp" />
 -->
  
    <script type="text/javascript" src="js/flexpaper.js"></script>
    <script type="text/javascript" src="js/flexpaper_handlers.js"></script>
</head>
<body>



<div id="documentViewer"  style="height:400px;align=center"></div>



<script type="text/javascript">
 var startDocument = "Paper";
var apath="${param.path}";
apath=appName+"/jsframe/flexpaper/rmsweb_10.swf";
var aparent=window.parent;
apath = aparent.getSwfFileUrl();
var width=$(document.body).width();

if(aparent){

	var fu=window.parent.getIframeWidth;
	if(fu)
		width=window.parent.getIframeWidth();
	
	
	var height=window.parent.getIframeHeight();

	if(height){
		$("#documentViewer").height(height);
	}
	
}

//$("#documentViewer").width(width);

    $('#documentViewer').FlexPaperViewer(
            { config : {

                SWFFile : apath,

                Scale : 1.0,
                ZoomTransition : 'easeOut',
                ZoomTime : 0.5,
                ZoomInterval : 0.2,
                FitPageOnLoad : false,
                FitWidthOnLoad : true,
                FullScreenAsMaxWindow : false,
                ProgressiveLoading : false,
                MinZoomSize : 0.2,
                MaxZoomSize : 5,
                SearchMatchAll : false,
                InitViewMode : 'Portrait',
                RenderingOrder : 'flash,html',
                StartAtPage : '',

                ViewModeToolsVisible : true,
                ZoomToolsVisible : true,
                NavToolsVisible : true,
                CursorToolsVisible : true,
                SearchToolsVisible : true,
                WMode : 'transparent'
            }}
    );
</script>


</body>
</html>