

//由于页面本身已经存储了tabName,conId,所以对象不存储这些信息

function asopDoc(tId,sh){
	var oDoc=this;
	this.tabId="tabs";
	if(tId){
	   this.tabId=tId;	
	}
	this.tabs={};
	this.tabNames=[];
	this.culName=null;
	this.bSingleShow=false;//单个tab标签是否还显示该标签
	this.init=false;
	if(sh){
	   this.bSingleShow=true;	
	}
	
	
	function fBuildTabsV(tabList,num){
		var len=tabList.length;
		var show=false;
		if(num){
		   var n=Number(num);
		   if(0<=n<len){
			   show=true;
		   }
		}
		if(!show){
			num=0;
		}
		
		$(tabList).each(function(i){
			var tab=this;
			var sname=this.sname;
			if(i==num){	
				  oDoc.culName=sname;	
			}
		    oDoc.tabs[sname]=tab;
		});
		
	}
	

	function fBuildTabsO(sname,name){
		var obj={}
		obj.sname=sname;
		obj.name=name;
		oDoc.tabNames.push(sname);
		oDoc.tabs[sname]=obj;
		return obj;
	}

	
	//点击tab触发
	function fClickTabV(name){
		this.culName=name;
		var tab=$("#"+oDoc.tabId);
		tab.find("td[tname]").attr("class","borderB");
		tab.find("td[tname="+name+"]").attr("class","bor1");
	}

	function fListTabsV(id,width){
		if(!width){
			width=100;
		}
		var len=oDoc.tabNames.length;
		if(len==1){
			if(!oDoc.bSingleShow){
				return;
			}
		}
		
		var tabs=$("#"+id);
	
		$(oDoc.tabNames).each(function(i){
			var tab=oDoc.tabs[this];
			var width=tab.width;
			if(!width){
			    width=100;	
			}
			
			var td=$(' <td tname="'+tab.sname+'"  style="cursor:pointer" width="'+width+'" align="center" height="28" class="borderB">'+tab.name+'</td>');
			td.bind("click",function(){
				oDoc.fClickName_V(tab.sname);
			});
			tabs.append(td);
		});	
		var tdend=$('<td width="10" class="borderB">&nbsp;</td>');
		tabs.append(tdend);
	}



	this.fPushTab_V=function(tab){
		
		if(tab.sname){
			var sname=tab.sname;
			var obj=oDoc.tabs[sname];
			if(!obj){
				oDoc.tabs[sname]=tab;
				oDoc.tabNames.push(sname);
			}
			
		}
	}
	this.fClickName_V=function(tabName){
       
		if(tabName){
		oDoc.culName=tabName;
		}else{
		   tabName=oDoc.culName;	
		}
		var tab=$("#"+oDoc.tabId);
		tab.find("td[tname]").attr("class","borderB");
		tab.find("td[tname="+tabName+"]").attr("class","bor1");
		var obj=oDoc.tabs[tabName];
		obj.fLoad_V();
		
	}
	
	this.fStart=function(num){
		
		if(oDoc.init){
			this.fClickName_V();
			return;
		}
		if(!num){
		    num=0;	
		}
		var aname=oDoc.tabNames[num];
		//展示tab标签
		fListTabsV(this.tabId);
		oDoc.fClickName_V(aname);
		oDoc.init=true;
		
	}
	
	return oDoc;


}

