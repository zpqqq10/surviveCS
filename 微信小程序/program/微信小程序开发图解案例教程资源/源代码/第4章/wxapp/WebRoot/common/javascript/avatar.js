//加载个人信息
function loadUserAvatar(){
	var userInfoParams={};
	var url=appName+"/main/loadPersonalUserInfo.do";
	fAjaxAsyncPost(url,userInfoParams,function(resForm){
		if(resForm.success){
			showUserAvatar(resForm.data);
		}else{
			$("#errorMessage").text(resForm.errorInfo);
		}
	});
}
//显示头像
function showUserAvatar(asopUser){
	var avatarSuffix = asopUser.avatarSuffix;
	var url = asopUser.avatarUrl;
	if(avatarSuffix){
		if(url){
			$('.avatarArea>img').attr("src", url);
		}else {
			var url = '${appName}' + "/upload/avatar/" + userId+avatarSuffix+"?t=" + Math.random();
			$('.avatarArea>img').attr("src", url);
		}
	}
}