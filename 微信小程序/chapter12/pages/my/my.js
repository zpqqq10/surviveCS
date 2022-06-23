// pages/my/my.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    /*
    //临时微信用户昵称和头像
    nickName: '未登录',
    src: '/images/index.png',

    //临时收藏夹新闻数据
    newsList: [{
      id: '264698',
      title: '俄罗斯联邦驻华大使杰尼索夫会见校党委书记顾家山一行并接受《力冈译文全集》赠予',
      poster: 'http://www.ahnu.edu.cn/uploads/20180305/20180305130736_25127.jpg',
      add_date: '2018-03-05'
    }],
    */
    num: 0
  },

  //获取微信用户信息
  getMyInfo: function (e) {
    let info = e.detail.userInfo;
    this.setData({
      isLogin: true, //确认登陆状态
      src: info.avatarUrl,   //更新图片来源
      nickName: info.nickName //更新昵称
    })
    //获取收藏列表
    this.getMyFavorites();
  },

  //获取收藏列表
  getMyFavorites: function () {
    let info = wx.getStorageInfoSync();//读取本地缓存信息
    let keys = info.keys;//获取全部key信息
    let num = keys.length;//获取收藏新闻数量

    let myList = [];
    for (var i = 0; i < num; i++) {
      let obj = wx.getStorageSync(keys[i]);
      myList.push(obj);//将新闻添加到数组中
    }
    //更新收藏列表
    this.setData({
      newsList: myList,
      num: num
    });
  },
  /**
   * 自定义函数--跳转新页面浏览新闻内容
   */
  goToDetail: function (e) {
    //获取携带的data-id数据
    let id = e.currentTarget.dataset.id;
    //携带新闻id进行页面跳转
    wx.navigateTo({
      url: '../detail/detail?id=' + id
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

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