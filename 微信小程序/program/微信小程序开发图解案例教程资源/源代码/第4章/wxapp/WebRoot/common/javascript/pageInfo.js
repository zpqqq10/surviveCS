
function goFirstPage(obj){
if($(obj).attr("disabled")){
	return;
}
  pageInfo.goPage=0;
  initContent(0);
	
}


function goNextPage(obj){
	if($(obj).attr("disabled")){
		return;
	}
	var page=pageInfo.currentPage;
	pageInfo.goPage=page+1;
   initContent(0);
}

function goToPage(obj){
	if($(obj).attr("disabled")){
		return;
	}
	var page=$("#goPage").val();
	pageInfo.currentPage=page;
	initContent(0);
}

function goLastPage(obj){
	if($(obj).attr("disabled")){
		return;
	}
	var page=pageInfo.currentPage;
	pageInfo.goPage=page-1;
	 initContent(0);
}

function goEndPage(obj){
	if($(obj).attr("disabled")){
		return;
	}
	pageInfo.goPage=pageInfo.totalPageNum-1;
	 initContent(0);
}
 
function computeNum(i){
	 var num=i;
     var cpage=pageInfo.currentPage;
     if(cpage){
       cpage=0;	
     }
     num=cpage*pageInfo.pageSize+i+1;
     return num;
}






//展示分页信息
 function displayPageInfo(data){
	    var pageSize=$("#pageSize").val();
	  	var curPage=data.curPage;
	  	var totalContentNum=data.totalContentNum;
	  	var totalPageNum=data.totalPageNum;
	  	var conFrom=curPage*pageSize+1;
	  	var conTo=conFrom+data.contents.length-1;
	  	$("#conFrom").text(conFrom);
	  	$("#curPageText").val(curPage+1);
	  	$("#totalContentNum").text(totalContentNum);
	  	$("#totalPageNum").text(totalPageNum);
	  	$("#conTo").text(conTo);
	 	$("#relateTable").tableDnD();
 }
 
 
 
 //展示分页信息
 function displayPageInfo(data,pageSize){
 	
		    var curPage=data.pageInfo.curPage+1;
		    
		  	var totalContentNum=data.pageInfo.totalContentNum;
		  	var totalPageNum=data.pageInfo.totalPageNum;
		  	var conFrom=curPage*pageSize+1;
		  	var conTo=conFrom+data.contents.length-1;
		  	
		  	$("#conFrom").text(conFrom);
		  	$("#curPageText").html(curPage);
		  	$("#totalContentNum").text(totalContentNum);
		  	$("#totalPageNum").text(totalPageNum);
		  	$("#conTo").text(conTo);
		 
		 	
		 	if(curPage==1){
		 		$("#lastPage a").attr("disabled",true);
		 		$("#firstPage a").attr("disabled",true);
		 	}else{
		 		$("#lastPage a").removeAttr("disabled",true);
		 		$("#firstPage a").removeAttr("disabled",true);
		 	}
		 	
		 	if(curPage==totalPageNum){
		 		$("#nextPage a").attr("disabled",true);
		 		$("#endPage a").attr("disabled",true);
		 	}else{
		 		$("#nextPage a").removeAttr("disabled");
		 		$("#endPage a").removeAttr("disabled");
		 	}
		 	
		 	
 }


