var app = getApp()
Page({
  data:{
     userInfo: {}
  },
  onLoad:function(options){
    var that = this
    //调用应用实例的方法获取全局数据
    app.getUserInfo( function(userInfo) {
      console.log(userInfo);
      //更新数据
      that.setData( {
        userInfo: userInfo
      })
    })
  },
  grabTicket:function(){
    wx.navigateTo({
      url: '../grabticket/grabticket'
    })
  }
})