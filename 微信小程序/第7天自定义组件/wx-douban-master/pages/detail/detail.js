// pages/detail/detail.js
const app = getApp();
Page({
    // 组件的初始数据
    data: {
        movieInfo: {}
    },
    // 组件加载事件
    onLoad(options){
        let _this = this;
        wx.showLoading();
        wx.request({
            url: app.globalData.apiUrl + '/movie/subject/' + options.id,
            method: 'GET',
            header: {
                "Content-Type": "application/json,application/json"
              },
            success: function (res) {
                // 此处省略请求是否成功校验
                _this.setData({
                    movieInfo: res.data
                })
                _this.movieInfo = res.data;
                wx.hideLoading();
            }
        })
    }
})