
//控制图片的缩放和拖拽
function imageControl(divSelecter){
	this.currEle=$(divSelecter);
	this.sourceWidth=this.currEle.width();
	this.sourceHeight=this.currEle.height();
	this.sourceLeft=(this.currEle.parent().width()+20-this.currEle.width())/2;
	this.sourceTop=10;
	this.enlarge=function(){
		var currWidth=parseFloat(this.currEle.width());
		var currHeight=parseFloat(this.currEle.height());
		this.currEle.width(currWidth*1.1);
		this.currEle.height(currHeight*1.1);
		var currLeft=parseFloat(this.currEle.css("left")=='auto'?"0":this.currEle.css("left"));
		var currTop=parseFloat(this.currEle.css("top")=='auto'?"0":this.currEle.css("top"));
		this.currEle.css("left",currLeft-currWidth*0.05);
		this.currEle.css("top",currTop-currHeight*0.05);
	};
	this.decrease=function(){
		var currWidth=parseFloat(this.currEle.width());
		var currHeight=parseFloat(this.currEle.height());
		this.currEle.width(currWidth/1.1);
		this.currEle.height(currHeight/1.1);
		var currLeft=parseFloat(this.currEle.css("left")=='auto'?"0":this.currEle.css("left"));
		var currTop=parseFloat(this.currEle.css("top")=='auto'?"0":this.currEle.css("top"));
		this.currEle.css("left",currLeft+currWidth/1.1*0.05);
		this.currEle.css("top",currTop+currHeight/1.1*0.05);
	};
	this.mousewheelEle=function(thisObj){
		this.currEle.unbind("mousewheel");
		this.currEle.bind('mousewheel', function(event, delta) {
			 event.preventDefault();
			 var dir = delta > 0 ? 'up' : 'down';
			 if(dir=='up'){
				 thisObj.enlarge();
			 }else{
				 thisObj.decrease();
			 }
		});
	};
	this.enlargeEle=function(thisObj){
		$(".enlarge").unbind("click");
		$(".enlarge").bind("click",function(){
			 thisObj.enlarge();
		});
	};
	this.decreaseEle=function(thisObj){
		$(".decrease").unbind("click");
		$(".decrease").bind("click",function(){
			 thisObj.decrease();
		});
	};
	this.restoreEle=function(thisObj){
		$(".restore").unbind("click");
		$(".restore").bind("click",function(){
			thisObj.currEle.width(thisObj.sourceWidth);
			thisObj.currEle.height(thisObj.sourceHeight);
			thisObj.currEle.css("left",0);
			thisObj.currEle.css("top",0);
		});
	};
	this.initParam=function(){
		//alert(this.currEle.parent().width());
		//alert(this.currEle.width());
		this.currEle.css("cursor","move");
		this.currEle.css("overflow","hidden");
		this.currEle.parent().css("overflow","hidden");
		this.currEle.draggable();					//拖拽事件
		//this.currEle.css("position","absolute");
		//alert(this.sourceLeft+":"+this.sourceTop);
		//this.currEle.css("left",this.sourceLeft);
		//this.currEle.css("top",this.sourceTop);
	};
	this.init=function(){
		this.initParam();
		this.mousewheelEle(this);
		this.enlargeEle(this);
		this.decreaseEle(this);
		this.restoreEle(this);
	};
}




function imageControl2(selecter){
		$(document).ready(function(){
				$(selecter).css("cursor","move");
				$(selecter).parent().css("overflow","hidden");
				
				$(selecter).draggable();
				$(selecter).css("position","absolute");
				var hh=$("#contentSwitch").width()-10-$(selecter).width();
				$(selecter).css("left",hh/2);
				$(selecter).css("top",10);
				$(selecter) .bind('mousewheel', function(event, delta) {
					 event.preventDefault();
					 var dir = delta > 0 ? 'up' : 'down';
					imgHeight=parseFloat($(selecter).height());
					imgWidth=parseFloat($(selecter).width());
					
					if(dir=='up'){
						$(this).height(imgHeight*1.1);
						$(this).width(imgWidth*1.1);
						var left=parseFloat($(this).css("left")=='auto'?"0":$(this).css("left"));
						var top=parseFloat($(this).css("top")=='auto'?"0":$(this).css("top"));
						$(this).css("left",left-imgWidth*0.05);
						$(this).css("top",top-imgHeight*0.05);
					}else{
						$(this).height(imgHeight/1.1);
						$(this).width(imgWidth/1.1);
						var left=parseFloat($(this).css("left")=='auto'?"0":$(this).css("left"));
						var top=parseFloat($(this).css("top")=='auto'?"0":$(this).css("top"));
						$(this).css("left",left+imgWidth/1.1*0.05);
						$(this).css("top",top+imgHeight/1.1*0.05);
					}
				});  
				
			});


	}




function imgDrag2(){
	var dragging = false;
    var iX, iY;
    $("#ldImage").mousedown(function(e) {
        dragging = true;
        iX = e.clientX - this.offsetLeft;
        iY = e.clientY - this.offsetTop;
        this.setCapture && this.setCapture();
        return false;
    });
    $(document).mousemove(function(e) {
        if (dragging) {
			var e = e || window.event;
			var oX = e.clientX - iX;
			var oY = e.clientY - iY;
			$("#ldImage").css({"left":oX + "px", "top":oY + "px"});
			return false;
        }
    });
    $(document).mouseup(function(e) {
        dragging = false;
        $("#ldImage")[0].releaseCapture();
        e.cancelBubble = true;
    })
}


function imgDrag(selecter){
	var dragging = false;
    var iX, iY;
    document.addEventListener("mousemove", function(){
    	 if (dragging) {
				var e = event || window.event;
				var oX = e.clientX - iX;
				var oY = e.clientY - iY;
				$(selecter).css({"left":oX + "px", "top":oY + "px"});
				return false;
         }
       },false);

    document.addEventListener("mouseup", function(){
    	 dragging = false;
         $(selecter)[0].releaseCapture();
         window.event.cancelBubble = true;
      },false);
    $(selecter).get(0).addEventListener("mousedown",function() {
        dragging = true;
        iX = window.event.clientX - this.offsetLeft;
        iY = window.event.clientY - this.offsetTop;
        this.setCapture && this.setCapture();
        return false;
    },false);
	
}

function imgMouseWheel(selecter){
	$(document).ready(function() {   
        $(selecter).smartZoom({'containerClass':'zoomableContainer'});
        $('#topPositionMap,#leftPositionMap,#rightPositionMap,#bottomPositionMap').bind("click", moveButtonClickHandler);
        $('#zoomInButton,#zoomOutButton').bind("click", zoomButtonClickHandler);
        
        function zoomButtonClickHandler(e){
            var scaleToAdd = 0.2;
            if(e.target.id == 'zoomOutButton')
                scaleToAdd = -scaleToAdd;
            $(selecter).smartZoom('zoom', scaleToAdd);
        }        
        function moveButtonClickHandler(e){
            var pixelsToMoveOnX = 0;
            var pixelsToMoveOnY = 0;
    
            switch(e.target.id){
                case "leftPositionMap":
                    pixelsToMoveOnX = 50;	
                break;
                case "rightPositionMap":
                    pixelsToMoveOnX = -50;
                break;
                case "topPositionMap":
                    pixelsToMoveOnY = 50;	
                break;
                case "bottomPositionMap":
                    pixelsToMoveOnY = -50;	
                break;
            }
            $(selecter).smartZoom('pan', pixelsToMoveOnX, pixelsToMoveOnY);
        }
    });
}