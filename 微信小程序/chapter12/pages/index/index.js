// pages/index/index.js
var common = require('../../utils/common.js') //引用公共JS文件
Page({

  /**
   * 页面的初始数据
   */
  data: {
    //幻灯片素材
    swiperImg: [
      { src: 'http://www.ahnu.edu.cn/uploads/20180305/20180305130736_25127.jpg'},
      { src: 'http://www.ahnu.edu.cn/uploads/20181114/20181114090202_43004.png'},
      { src: 'http://www.ahnu.edu.cn/uploads/20181127/20181127061319_94716.png'}
    ],
/*
    //临时新闻数据
    newsList: [{
      id: '264698',
      title: '俄罗斯联邦驻华大使杰尼索夫会见校党委书记顾家山一行并接受《力冈译文全集》赠予',
      poster: 'http://www.ahnu.edu.cn/uploads/20180305/20180305130736_25127.jpg',
      add_date: '2018-03-05'
    }]*/
  },

  /**
   * 自定义函数--跳转新页面浏览新闻内容
   */
  goToDetail: function (e) {
    //获取携带的data-id数据
    let id = e.currentTarget.dataset.id; 
    //携带新闻id进行页面跳转
    wx.navigateTo({
      url: '../detail/detail?id='+id
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //获取新闻列表
    let list = common.getNewsList()
    //更新列表数据
     this.setData({ newsList: list })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})