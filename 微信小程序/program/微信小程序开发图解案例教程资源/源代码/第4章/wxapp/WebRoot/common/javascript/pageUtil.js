/**
 * 分页方法
 * @param pageBean
 * @returns {String}
 */
function toPageHtml(pageBean) {
	pageInfo.offset=pageBean["pageno"];
	var j=pageBean["pagecount"]>=10?10:pageBean["pagecount"];
	var f=1;
	var tohtml="<div class='wPagin bc'>";
	if(pageBean["pageno"]<=1) {
		tohtml+="<a href='javascript:void(0)'>上一页</a>";
	}
	if(pageBean["pageno"]>1) {
		tohtml+="<a href='javascript:void(0)' onclick='javascript:selectPage("+(parseInt(pageBean["pageno"])-1)+")'>上一页</a>";
	}
	if(pageBean["pageno"]>5 && pageBean["pageno"]<=pageBean["pagecount"]-5) {
		j=pageBean["pageno"]+5;
		f=pageBean["pageno"]-4;
	}else if(pageBean["pageno"]>pageBean["pagecount"]-5){
		j=pageBean["pagecount"];
		f=pageBean["pagecount"]-9>0?pageBean["pagecount"]-9:1;
	}
	for(var i=f;i<=pageBean["pagecount"];i++) {
			if(i!=pageBean["pageno"]) {
				if(parseInt(i)<=parseInt(j)) {
					tohtml+="<a href='javascript:void(0)' onclick='javascript:selectPage("+(parseInt(i))+")'>"+(parseInt(i))+"</a>";	
				}
			}else {
				tohtml+="<a href='javascript:void(0)' class='curr'>"+pageBean["pageno"]+"</a>";
			}
		}if(pageBean["pageno"]>=pageBean["pagecount"]) {
			tohtml+="<a href='javascript:void(0)'>下一页</a>";
		}if(pageBean["pageno"]<pageBean["pagecount"]) {
			tohtml+="<a href='#' onclick='javascript:selectPage("+(parseInt(pageBean["pageno"])+1)+")'  class='next'>下一页<b></b></a></div>";
		}
		return tohtml;
}
function toPageHtmlTow(pageBean) {
	pageInfo.offset=pageBean["pageno"];
	var j=pageBean["pagecount"]>=10?10:pageBean["pagecount"];
	var f=1;
	var tohtml="<div class='pageCount'>";
	if(pageBean["pageno"]<=1) {
		tohtml+="<a href='javascript:void(0);' onclick='javascript:selectPage("+(1)+")'>首页</a>";
		tohtml+="<a href='javascript:void(0);'>上一页</a>";
	}
	if(pageBean["pageno"]>1) {
		tohtml+="<a href='javascript:void(0);' onclick='javascript:selectPage("+(1)+")'>首页</a>";
		tohtml+="<a href='javascript:void(0)' onclick='javascript:selectPage("+(parseInt(pageBean["pageno"])-1)+")'>上一页</a>";
	}
	if(pageBean["pageno"]>5 && pageBean["pageno"]<=pageBean["pagecount"]-5) {
		j=pageBean["pageno"]+5;
		f=pageBean["pageno"]-4;
	}else if(pageBean["pageno"]>pageBean["pagecount"]-5){
		j=pageBean["pagecount"];
		f=pageBean["pagecount"]-9>0?pageBean["pagecount"]-9:1;
	}
	for(var i=f;i<=pageBean["pagecount"];i++) {
			if(i!=pageBean["pageno"]) {
				if(parseInt(i)<parseInt(j)) {
					tohtml+="<a href='javascript:void(0)' onclick='javascript:selectPage("+(parseInt(i))+")'>"+(parseInt(i))+"</a>";	
				}
			}else {
				tohtml+="<a href='javascript:void(0)' class='curr' onclick='javascript:selectPage("+pageBean["pageno"]+")'>"+pageBean["pageno"]+"</a>";
			}
		}if(pageBean["pageno"]>=pageBean["pagecount"]) {
			tohtml+="<a href='javascript:void(0);'>下一页</a>";
			tohtml+="<a href='javascript:void(0);')>最后一页</a>";
		}if(pageBean["pageno"]<pageBean["pagecount"]) {
			tohtml+="<a href='#' onclick='javascript:selectPage("+(parseInt(pageBean["pageno"])+1)+")'>下一页</a>";
			tohtml+="<a href='javascript:void(0);' onclick='javascript:selectPage("+(parseInt(pageBean["pagecount"]))+")'>最后一页</a>";
		}
		tohtml+="<span>共<strong>"+(parseInt(pageBean["pagecount"]))+"</strong>页 <strong>"+(parseInt(pageBean["datacount"]))+"</strong>条</span></div>";
		return tohtml;
}