<%@ page language="java" pageEncoding="UTF-8"%>

<!--flaxpaper -->
<script type="text/javascript" src="${appName}/common/jsframe/flexpaper/js/flexpaper_handlers.js"></script>
<script type="text/javascript" src="${appName}/common/jsframe/flexpaper/js/flexpaper.js"></script>
<script type="text/javascript">
	var loadSwfPlayer = function(url, isPrint){
		if(!isPrint) isPrint=true;
		$('#documentViewer').FlexPaperViewer({
	        config : {
	            SWFFile : url,
	            Scale : 1.30,
	            ZoomTransition : 'easeOut',
	            ZoomTime : 0.5,
	            ZoomInterval : 0.2,
	            FitPageOnLoad : true,
	            FitWidthOnLoad : true,
	            FullScreenAsMaxWindow : false,
	            ProgressiveLoading : false,
	            MinZoomSize : 0.2,
	            MaxZoomSize : 2.5,
	            SearchMatchAll : false,
	            InitViewMode : 'Portrait',
	            RenderingOrder : 'flash,html',
	            StartAtPage : '',
	
	            ViewModeToolsVisible : true,
	            ZoomToolsVisible : true,
	            NavToolsVisible : true,
	            CursorToolsVisible : true,
	            SearchToolsVisible : true,
				printEnabled : isPrint,
	            WMode : 'transparent',
	            localeChain: 'zh_CN'
	        }
	    });
	};
</script>