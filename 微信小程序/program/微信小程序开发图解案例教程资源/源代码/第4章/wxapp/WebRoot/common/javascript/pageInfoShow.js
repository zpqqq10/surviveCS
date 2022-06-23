


function PageInfo(){ }

PageInfo.prototype.pageSize=10;			//每页显示条数
PageInfo.prototype.goPage=1; 			//查看第几页
PageInfo.prototype.totalCount=0; 
PageInfo.prototype.setPageSize = function(pageSize){this.pageSize=pageSize};
PageInfo.prototype.getPageSize = function(){return this.pageSize};
PageInfo.prototype.setGoPage = function(goPage){this.goPage=goPage};
PageInfo.prototype.getGoPage = function(){return this.goPage};
PageInfo.prototype.setTotalCount = function(totalCount){this.totalCount=totalCount};
PageInfo.prototype.getTotalCount = function(){return this.totalCount};


var counts = 0;//每页显示的条数（自定义，为了高度的计算）
var tipTopValue = 118;
var infos = new Array();

//根据总条数显示分页信息
function showPageInfo(totalCount){
	processPages(pageInfo.goPage, pageInfo.pageSize, totalCount);
}

var goPage = function(o){
	if(!o)o=1;
	pageInfo.goPage = o;
	queryData();
};

var processPagesHtml = function(goPage, pageSize, totalCount){
	var curPage = goPage; //当前页
	var disNum = 8;
	curPage = curPage <= 0 ? 1 : curPage;
	var totalPage = totalCount / pageSize;
	totalPage = parseInt(totalPage) + (totalCount % pageSize > 0 ? 1 : 0);
	var html = '';
	if(totalCount<1){
		html+='<span class="prev">没有可显示的数据</span>';
	}else{
		if(curPage<=1 && totalPage==1){
			html += '';
		} else if(curPage<=1){
			html += '<a href="javascript:void(0);" class="btn_pageLeft"></a>';
		}else {
			html += '<a href="javascript:void(0)" class="btn_pageLeft enableLeft" onclick="goPage(' + (parseInt(curPage)-1) + ')"></a>';
		}
		if(totalPage<=disNum){
			for(var i = 1; i <= totalPage; i++){
				if(curPage == i){
					html += '<a href="javascript:void(0)" class="btn_pageNum curr">' + i + '</a>';
				}else{
					html += '  <a href="javascript:void(0)" class="btn_pageNum" onclick="goPage(' + i + ')">' + i + '</a>';
				}
			}
		}else{
			var goPage = 1;
			if(curPage>getSpDisNum(disNum)){
				goPage = curPage-getSpDisNum(disNum);
			}
			if(goPage> (totalPage - disNum +1))
				goPage = totalPage - disNum +1;
			var end = goPage + disNum -1;
			if(goPage>2){
				html += '<a href="javascript:void(0)" class="btn_pageNum" onclick="goPage(1)">' + 1 + '</a><a href="javascript:void(0);" class="btn_pageNum">...</a>';
			}
			if(goPage<0)goPage =1;
			for(var i = goPage; i <= end; i++){
				if(curPage == i){
					html += '<a href="javascript:void(0)" class="btn_pageNum curr">' + i + '</a>';
				}else{
					html += '  <a href="javascript:void(0)" class="btn_pageNum" onclick="goPage(' + i + ')">' + i + '</a>';
				}
			}
			if(end!=totalPage){
				html += '<a href="javascript:void(0);" class="btn_pageNum">...</a><a href="javascript:void(0)" class="btn_pageNum" onclick="goPage(' + totalPage + ')">' + totalPage + '</a>';
			}
		}
		if(curPage < totalPage){
			html += '   <a href="javascript:void(0);" onclick="goPage(' + (parseInt(curPage)+1) + ')" class="btn_pageRight enableRight"></a>';
		} else if(totalPage==1){
			html +='';
		}else{
			html += '   <a href="javascript:void(0);" class="btn_pageRight"></a>';
		}
	}
	return html;
}

var processPages = function(goPage, pageSize, totalCount){
	var curPage = goPage; //当前页
	var disNum = 6;
	curPage = curPage <= 0 ? 1 : curPage;
	var totalPage = totalCount / pageSize;
	totalPage = parseInt(totalPage) + (totalCount % pageSize > 0 ? 1 : 0);
	var html = '';
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
			var goPage = 1;
			if(curPage>getSpDisNum(disNum)){
				goPage = curPage-getSpDisNum(disNum);
			}
			if(goPage> (totalPage - disNum +1))
				goPage = totalPage - disNum +1;
			var end = goPage + disNum -1;
			if(goPage>2){
				html += '<a href="javascript:void(0)" onclick="goPage(1)">' + 1 + '</a><span cless="text">...</span>';
			}
			if(goPage<0)goPage =1;
			for(var i = goPage; i <= end; i++){
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
		if(curPage < totalPage){
			html += '   <a href="javascript:void(0);" onclick="goPage(' + (parseInt(curPage)+1) + ')" class="next">下一页</a>';
		} else {
			//html += '   <a href="javascript:void(0);" class="next-disabled">下一页<b></b></a>';
		}
	}
	$('#pageId').empty();
	$('#pageId').html(html);
}

var getSpDisNum = function(disNum){
	if(disNum%2==0)
		return disNum/2;
	else return (disNum+1)/2;
}



