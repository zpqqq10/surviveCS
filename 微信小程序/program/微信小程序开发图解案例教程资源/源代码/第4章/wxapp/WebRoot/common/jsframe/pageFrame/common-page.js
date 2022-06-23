function PageInfo(){ } 
PageInfo.prototype.limit=30; 
PageInfo.prototype.start=0; 
PageInfo.prototype.totalCount=0; 
PageInfo.prototype.setLimit = function(limit){this.limit=limit};
PageInfo.prototype.getLimit = function(){return this.limit};
PageInfo.prototype.setStart = function(start){this.start=start};
PageInfo.prototype.getStart = function(){return this.start};
PageInfo.prototype.setTotalCount = function(totalCount){this.totalCount=totalCount};
PageInfo.prototype.getTotalCount = function(){return this.totalCount};


var counts = 0;//每页显示的条数（自定义，为了高度的计算）
var tipTopValue = 118;
var infos = new Array();
var goPage = function(o){
	$('#tipId').hide();
	if(!o)o=1;
	var start = (o-1)*oParams.getLimit();
	fLoadContents_V(start,oParams.getLimit());
}

var getSpDisNum = function(disNum){
	if(disNum%2==0)
		return disNum/2;
	else return (disNum+1)/2;
}

var processPages = function(start, limit, totalCount){
	var curPage = 0; //当前页
	var disNum = 6;
	curPage = start / limit + 1;
	curPage = curPage <= 0 ? 1 : curPage;
	var totalPage = totalCount / limit;
	totalPage = parseInt(totalPage) + (totalCount % limit > 0 ? 1 : 0);
	var html = '';
	if(isMaintenanceUser()){
		html+='<span class="prev">没有可显示的数据</span>';
	}else{
		if(totalCount<1){
			html+='<span class="prev">没有可显示的数据</span>';
		}else{
			if(curPage<=1){
				html += '<span class="prev-disabled">上一页</span>';
			} else {
				html += '<a href="javascript:void(0)" class="prev" onclick="goPage(' + (parseInt(curPage)-1) + ')">上一页</a>';
			}
			if(totalPage<=disNum){
				for(var i = 1; i <= totalPage; i++){
					if(curPage == i){
						html += '<a href="javascript:void(0)" class="current">' + i + '</a>';
					}else{
						html += '  <a href="javascript:void(0)" onclick="goPage(' + i + ')">' + i + '</a>';
					}
				}
			}else{
				var start = 1;
				if(curPage>getSpDisNum(disNum)){
					start = curPage-getSpDisNum(disNum);
				}
				if(start> (totalPage - disNum +1))
					start = totalPage - disNum +1;
				var end = start + disNum -1;
				if(start>2){
					html += '<a href="javascript:void(0)" onclick="goPage(1)">' + 1 + '</a><span cless="text">...</span>';
				}
				if(start<0)start =1;
				for(var i = start; i <= end; i++){
					if(curPage == i){
						html += '<a href="javascript:void(0)" class="current">' + i + '</a>';
					}else{
						html += '  <a href="javascript:void(0)" onclick="goPage(' + i + ')">' + i + '</a>';
					}
				}
				if(end!=totalPage){
					html += '<span cless="text">...</span><a href="javascript:void(0)" onclick="goPage(' + totalPage + ')">' + totalPage + '</a>';
				}
			}
		/*	if(totalPage >= 1){
				if(curPage == totalPage){
					 html += '   <a class="current" href="javascript:void(0)" onclick="goPage(' + totalPage + ')">'  +  totalPage + '</a>';
				} else {
					 html += '   <a href="javascript:void(0)" onclick="goPage(' + totalPage + ')">' + totalPage + '</a>';
				}
		    }*/
			
			if(curPage < totalPage){
				html += '   <a href="javascript:void(0);" onclick="goPage(' + (parseInt(curPage)+1) + ')" class="next">下一页</a>';
			} else {
				//html += '   <a href="javascript:void(0);" class="next-disabled">下一页<b></b></a>';
			}
		}
	}
	$('#pageId').empty();
	$('#pageId').html(html);
}

document.onclick = function(e){
	 $('#tipId').hide();
}

function initPage(start, limit, totalCount){
	processHeight();
	//setTimeout(processheight, 1000);
	processPages(start, limit, totalCount);
}

function processHeight(){
	var dh=$(document).height();
	//dh = window.parent.getIframHeight();
	
	var h1 = dh - 118;
	h1 = h1 - counts * 40 - 10;
//	$("#spaceId").css('height', h1);
}

var oldmouse;
var oldmouseattr;
function onlyMouseoverDisplay(i){
	var o = $('#moveId' + i);
	if(o){
		oldmouse = o;
		oldmouseattr = o.attr('bgcolor');
		o.attr('bgcolor', '#fdffce');
		if(typeof displayTipWDTG!='undefined' && displayTipWDTG instanceof Function)displayTipWDTG(i);
	}
}
function mouseoverDisplay(i){
	var o = $('#moveId' + i);
	if(o){
		oldmouse = o;
		oldmouseattr = o.attr('bgcolor');
		o.attr('bgcolor', '#fdffce');
		if(typeof displayTip!='undefined' && displayTip instanceof Function)displayTip(i);
	}
}
function mouseoutHide(){
	$("#tipId").hide();
	if(oldmouse){
		oldmouse.attr('bgcolor', oldmouseattr);
	}
}
function getDisColor(i){
	if(i && (i+1)%2==0){ return "#F0F0F0";
	}else{ return "#FFFFFF"; }
}

