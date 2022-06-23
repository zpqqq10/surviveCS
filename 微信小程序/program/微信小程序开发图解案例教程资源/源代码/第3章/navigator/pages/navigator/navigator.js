// pages/navigator/navigator.js
Page({
  data:{},
  onLoad:function(options){
    console.log("title="+options);
    wx.setNavigationBarTitle({
       title: '新页面'
    });
    wx.showNavigationBarLoading();
  },
  backBtn:function(){
    wx.navigateBack({
      delta: 1
    })
  }
  
})