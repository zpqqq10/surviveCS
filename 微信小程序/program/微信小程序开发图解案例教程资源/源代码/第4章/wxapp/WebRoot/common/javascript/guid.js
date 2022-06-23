
function Guid(options) {
  this.options = options || {};
  this.chars = this.options.chars || Guid.constants.alphanumerics;
  this.epoch = this.options.epoch || Guid.constants.epoch1970;
  this.counterSequenceLength = this.options.counterSequenceLength || 1;
  this.randomSequenceLength = this.options.randomSequenceLength || 2;
}

Guid.prototype.generate = function() {
  var now = (new Date()).getTime() - this.epoch;
  var guid = this.baseN(now);

  this.counterSeq = (now==this.lastTimestampUsed ? this.counterSeq+1 : 1);
  guid += this.counterSeq;

  for (var i=0; i<this.randomSequenceLength; i++) {
    guid += this.chars.charAt(Math.floor(Math.random() * this.chars.length));
  }

  this.lastTimestampUsed = now;

  return guid;
}

Guid.prototype.baseN = function(val) {
  if (val==0) return "";
  var rightMost = val % this.chars.length;
  var rightMostChar = this.chars.charAt(rightMost);
  var remaining = Math.floor(val / this.chars.length);
  return this.baseN(remaining) + rightMostChar;
}

Guid.constants = {};
Guid.constants.numbers = "0123456789";
Guid.constants.alphas = "abcdefghijklmnopqrstuvwxyz";
Guid.constants.lowerAlphanumerics = "0123456789abcdefghijklmnopqrstuvwxyz";
Guid.constants.alphanumerics = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
// http://tools.ietf.org/html/rfc1924
Guid.constants.base85 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

Guid.constants.epoch1970 = (new Date(0));
Guid.constants.epoch = function(year) { return (new Date("Jan 1 " + year)).getTime(); }

  var guid = new Guid();
var pageId=guid.generate(); // Returns a 

   window.onload=function(){
	    //openFile();//用于office文档的打开。合肥项目使用
        var url=window.location.href;
            url=encodeURI(url);
			
            var index=url.indexOf("/serviceweb");
            if(index==-1){
               return;
            }
           var XMLHttpReq=false;
                 if(window.XMLHttpRequest){ //Mozilla  
 				XMLHttpReq=new XMLHttpRequest();
 			}
 			else if(window.ActiveXObject){
 				try{
 					XMLHttpReq=new ActiveXObject("Msxml2.XMLHTTP");
 				}catch(e){
 					try{
 						XMLHttpReq=new ActiveXObject("Microsoft.XMLHTTP");
 					}catch(e){}
 				}
 			}    
            var serverURL="/serviceweb/app.flowsta.RecordFlowStaAction.action?ac=load&guid="+pageId+"&url="+url; 
			XMLHttpReq.open("post",serverURL,true);
 			serverURL=encodeURI(serverURL);
            XMLHttpReq.onreadystatechange=function(){
             XMLHttpReq=null;
            }
          XMLHttpReq.send(null);  //发送请求

	  }
	  
	   window.onunload=function(){
		   //closeFile();//用于dsoframer关闭office文档。合肥项目使用
	        var url=window.location.href;
            url=encodeURI(url);
            var index=url.indexOf("/serviceweb");
            if(index==-1){
               return;
            }
	        var XMLHttpReq=false;
                 if(window.XMLHttpRequest){ //Mozilla  
 				XMLHttpReq=new XMLHttpRequest();
 			}
 			else if(window.ActiveXObject){
 				try{
 					XMLHttpReq=new ActiveXObject("Msxml2.XMLHTTP");
 				}catch(e){
 					try{
 						XMLHttpReq=new ActiveXObject("Microsoft.XMLHTTP");
 					}catch(e){}
 				}
 			}
            var url=window.location.href;
            url=encodeURI(url);            
            var serverURL="/serviceweb/app.flowsta.RecordFlowStaAction.action?ac=unload&guid="+pageId+"&url="+url;
            
			XMLHttpReq.open("post",serverURL,true);
 	
 			serverURL=encodeURI(serverURL);
 			

            XMLHttpReq.onreadystatechange=function(){
             XMLHttpReq=null;
              /**if(XMLHttpReq.readyState==4){ //对象状态
 				if(XMLHttpReq.status==200){//信息已成功返回，开始处理信息
 			        alert("haha");
 			        XMLHttpReq=null;
 				}else{
 					window.alert(XMLHttpReq.status);
 					window.alert("所请求的页面有异常");
 				}
 			}*/
            }
          XMLHttpReq.send(null);  //发送请求
	   
	   
	   }
	  
	  
	  