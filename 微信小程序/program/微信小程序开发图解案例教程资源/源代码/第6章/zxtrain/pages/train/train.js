Page({
  data:{
      indicatorDots:false,
      autoplay:true,
      interval:5000,
      duration:1000,
      imgUrls:[
         '/images/haibao/1.jpg',
         '/images/haibao/2.jpg',
         '/images/haibao/3.jpg'
      ],
      currentTab:0
  },
  onLoad:function(options){
    // 页面初始化 options为页面跳转所带来的参数
  },
  switchNav:function (e) {
    var id = e.currentTarget.id;
    this.setData({ currentTab: id });
  },
  formSubmit:function(e){
    console.log(e);
    var startStation = e.detail.value.startStation;//始发站
    var endStation = e.detail.value.endStation;//终点站
    var date = e.detail.value.date;//日期：2月月2日
    var week = e.detail.value.week;//星期：周四
    wx.navigateTo({
      url: '../trainList/trainList?startStation=' + startStation+"&endStation="+endStation+"&date="+date+"&week="+week
    })
  }
})