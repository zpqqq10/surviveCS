//上传项目图片，最多10个
function uploadifyDemandImg(){
    var url=appName + '/UploadServlet?model=demand|img';
    new Q.Uploader({
        url:url,
        target: document.getElementById("uploadify_demandImg"),
        view: "",
        allows: ".jpg,.gif,.png,.jpeg,.bmp",
        upName:"uploadify_demandImg",
        ShowOnlyOne:true,
        on: {
            //添加之前触发
            add: function (task) {
                if (task.ext == ".exe" || task.ext == ".dll"|| task.ext == ".jsp") return false;
                if (task.disabled) return alert("允许上传的文件格式为：" + this.ops.allows);
            },
            //上传完成后触发
            complete: function (task) {
            	 var resData=JSON2.parse(task.response);
				 /*$('.projectImgNameList').show();*/
				 if(resData.success){
					var imgUrl=appName + resData.data;
					//chineseNames[chineseNames.length] = resData.msg;
					var imgHtml="<img height='96' src='"+imgUrl+"'/>";
					$('.projectImgNameList').html(imgHtml);
					$('#headPath').val(resData.data);
				 }else{
					alert(resData.errorInfo);
				 }
            }
        }
    });
    new Q.Uploader({
        url:url,
        target: document.getElementById("uploadify_demandImg1"),
        view: "",
        allows: ".jpg,.gif,.png,.jpeg,.bmp",
        upName:"uploadify_demandImg",
        ShowOnlyOne:true,
        on: {
            //添加之前触发
            add: function (task) {
                if (task.ext == ".exe" || task.ext == ".dll"|| task.ext == ".jsp") return false;
                if (task.disabled) return alert("允许上传的文件格式为：" + this.ops.allows);
            },
            //上传完成后触发
            complete: function (task) {
            	 var resData=JSON2.parse(task.response);
				 /*$('.projectImgNameList').show();*/
				 if(resData.success){
					var imgUrl=appName + resData.data;
					//chineseNames[chineseNames.length] = resData.msg;
					var imgHtml="<img height='96' src='"+imgUrl+"'/>";
					$('.projectImgNameList1').html(imgHtml);
					$('#EnterprisePhotoPath').val(resData.data);
				 }else{
					alert(resData.errorInfo);
				 }
            }
        }
    });
    new Q.Uploader({
        url:url,
        target: document.getElementById("uploadify_demandImg2"),
        view: "",
        allows: ".jpg,.gif,.png,.jpeg,.bmp",
        upName:"uploadify_demandImg",
        ShowOnlyOne:true,
        on: {
            //添加之前触发
            add: function (task) {
                if (task.ext == ".exe" || task.ext == ".dll"|| task.ext == ".jsp") return false;
                if (task.disabled) return alert("允许上传的文件格式为：" + this.ops.allows);
            },
            //上传完成后触发
            complete: function (task) {
            	 var resData=JSON2.parse(task.response);
				 /*$('.projectImgNameList').show();*/
				 if(resData.success){
					var imgUrl=appName + resData.data;
					//chineseNames[chineseNames.length] = resData.msg;
					var imgHtml="<img height='96' src='"+imgUrl+"'/>";
					$('.projectImgNameList2').html(imgHtml);
					$('#ProfilePhotoPathOne').val(resData.data);
				 }else{
					alert(resData.errorInfo);
				 }
            }
        }
    });
    new Q.Uploader({
        url:url,
        target: document.getElementById("uploadify_demandImg3"),
        view: "",
        allows: ".jpg,.gif,.png,.jpeg,.bmp",
        upName:"uploadify_demandImg",
        ShowOnlyOne:true,
        on: {
            //添加之前触发
            add: function (task) {
                if (task.ext == ".exe" || task.ext == ".dll"|| task.ext == ".jsp") return false;
                if (task.disabled) return alert("允许上传的文件格式为：" + this.ops.allows);
            },
            //上传完成后触发
            complete: function (task) {
            	 var resData=JSON2.parse(task.response);
				 /*$('.projectImgNameList').show();*/
				 if(resData.success){
					var imgUrl=appName + resData.data;
					//chineseNames[chineseNames.length] = resData.msg;
					var imgHtml="<img height='96' src='"+imgUrl+"'/>";
					$('.projectImgNameList3').html(imgHtml);
					$('#ProfilePhotoPathTwo').val(resData.data);
				 }else{
					alert(resData.errorInfo);
				 }
            }
        }
    });
    new Q.Uploader({
        url:url,
        target: document.getElementById("uploadify_demandImg4"),
        view: "",
        allows: ".jpg,.gif,.png,.jpeg,.bmp",
        upName:"uploadify_demandImg",
        ShowOnlyOne:true,
        on: {
            //添加之前触发
            add: function (task) {
                if (task.ext == ".exe" || task.ext == ".dll"|| task.ext == ".jsp") return false;
                if (task.disabled) return alert("允许上传的文件格式为：" + this.ops.allows);
            },
            //上传完成后触发
            complete: function (task) {
            	 var resData=JSON2.parse(task.response);
				 /*$('.projectImgNameList').show();*/
				 if(resData.success){
					var imgUrl=appName + resData.data;
					//chineseNames[chineseNames.length] = resData.msg;
					var imgHtml="<img height='96' src='"+imgUrl+"'/>";
					$('.projectImgNameList4').html(imgHtml);
					$('#ProfilePhotoPathThree').val(resData.data);
				 }else{
					alert(resData.errorInfo);
				 }
              
            }
        }
    });
    new Q.Uploader({
        url:url,
        target: document.getElementById("uploadify_demandImg5"),
        view: "",
        allows: ".jpg,.gif,.png,.jpeg,.bmp",
        upName:"uploadify_demandImg",
        ShowOnlyOne:true,
        on: {
            //添加之前触发
            add: function (task) {
                if (task.ext == ".exe" || task.ext == ".dll"|| task.ext == ".jsp") return false;
                if (task.disabled) return alert("允许上传的文件格式为：" + this.ops.allows);
            },
            //上传完成后触发
            complete: function (task) {
            	 var resData=JSON2.parse(task.response);
				 $('.uploadMutliTip').hide();
				 /*$('.projectImgNameList').show();*/
				 if(resData.success){
					var imgUrl=appName + resData.data;
					//chineseNames[chineseNames.length] = resData.msg;
					var imgHtml="<img height='96' src='"+imgUrl+"'/>";
					$('.projectImgNameList5').html(imgHtml);
					$('#ProfilePhotoPathFour').val(resData.data);
				 }else{
					alert(resData.errorInfo);
				 }
            }
        }
    });
 }