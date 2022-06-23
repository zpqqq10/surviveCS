var util = require('../../utils/util.js')
Page({
  data:{
    date:'',
    trainList:[],
    winHeight:600,
    currentTab:'1'
  },
  onLoad:function(e){
     var startStation = e.startStation;//始发站
     var endStation = e.endStation;//终点站
     var date = e.date;//日期
     console.log("startStation="+startStation+"---endStation="+endStation+"---date="+date);
     wx.setNavigationBarTitle({
       title: startStation+'→'+endStation
     });
     this.setData({date:date});
     this.loadTrainsList(startStation,endStation);
  },
  loadTrainsList:function(startStation,endStation){
    var page = this;
    var key = util.getDataKey();
    console.log(key)
    wx.request({
      url: 'https://api.apishop.net/common/train/getLeftTicket?apiKey=' + key + '&date=2018-09-05' + '&startStation=' + startStation + '&endStation=' + endStation,
      method: 'GET', 
      success: function(res){
        console.log(res);
        var trainList = res.data.result;
        console.log(trainList);
        var size = trainList.length;
        var winHeight = size * 100 + 30;
        page.setData({trainList:trainList});
        page.setData({winHeight:winHeight});
      }
    });    
  },
  switchNav:function (e) {
    var id = e.currentTarget.id;
    console.log(id);
    this.setData({ currentTab: id });
  }
})