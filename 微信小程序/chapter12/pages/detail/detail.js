// pages/detail/detail.js
var common = require('../../utils/common.js') //引用公共JS文件
Page({

  /**
   * 页面的初始数据
   */
  data: {
    /*
    article: {
      id: '264698',
      title: '俄罗斯联邦驻华大使杰尼索夫会见校党委书记顾家山一行并接受《力冈译文全集》赠予',
      poster: 'http://www.ahnu.edu.cn/uploads/20180305/20180305130736_25127.jpg',
      content: ' 本网讯（校出版社） 3月2日上午，俄罗斯驻华大使杰尼索夫在北京俄罗斯驻华大使馆会见了校党委书记顾家山，并接受了我校出版社赠予俄罗斯大使馆的十套《力冈译文全集》。俄罗斯驻华大使馆参赞梅利尼科娃、大使馆一秘伊戈尔、大使助理、塔斯社记者，我校校办主任曾黎明、出版社社长张奇才，我校杰出校友、俄罗斯人民友谊勋章和利哈乔夫院士奖获得者、中国俄罗斯文学研究会会长刘文飞教授等参加了会见。 ',
      add_date: '2018-03-05'
    }*/
  },
  //添加到收藏夹
  addFavorites: function (options) {
    let article = this.data.article;//获取当前新闻
    wx.setStorageSync(article.id, article);//添加到本地缓存
    this.setData({ isAdd: true });//更新按钮显示
  },
  //取消收藏
  cancelFavorites: function () {
    let article = this.data.article;//获取当前新闻
    wx.removeStorageSync(article.id);//从本地缓存删除
    this.setData({ isAdd: false });//更新按钮显示
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    let id = options.id;//获取页面跳转来时的携带数据
    let result = common.getNewsDetail(id)
    //获取到新闻内容
    if (result.code == '200') {
      this.setData({ article: result.news })
    }

    //检查当前新闻是否在收藏夹中
    var article = wx.getStorageSync(id);
    //已存在
    if (article != '') {
      this.setData({ isAdd: true })
    }
    //不存在
    else {
      this.setData({ isAdd: false })
    }
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