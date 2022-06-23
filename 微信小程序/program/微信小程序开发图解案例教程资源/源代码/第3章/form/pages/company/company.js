Page({
  data:{
    disabled:true,
    btnstate:"default"
  },
  accountblur:function(e){
    var content = e.detail.value;
    if(content !=""){
       this.setData({disabled:false,btnstate:"primary"});
    }else{
      this.setData({disabled:true,btnstate:"default"});
    }
  },
  formSubmit:function(e){
    console.log(e);
    var user = new Object();
    user.account = e.detail.value.loginName;
    user.password = e.detail.value.password;
    user.company = e.detail.value.company;
    user.userName = e.detail.value.userName;
    user.code = e.detail.value.code;
    user.mobile = e.detail.value.mobile;
    user.switch = e.detail.value.switch;
    wx.setStorageSync('user', user);
    wx.showToast({
        title:"注册成功",
        icon:"success",
        duration:1000,
        success:function(){
           wx.navigateTo({
             url: '../login/login'
           })
        }
    });
  }
})