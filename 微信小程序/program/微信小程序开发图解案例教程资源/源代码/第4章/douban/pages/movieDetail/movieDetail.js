var util = require('../../utils/util.js')
Page({
  data: {
    currentTab: 0,
    winWidth: 0,
    winHeight: 0,
    movie: {},
    directors: [],
    casts: []
  },
  onLoad: function (e) {
    var page = this;
    var key = util.getDataKey();
    wx.request({
      url: 'https://api.douban.com/v2/movie/subject/' + e.id + '?apikey=' + key,
      header: {
        "Content-Type": "json"
      },
      success: function (res) {
        console.log(res);
        var movie = res.data;
        page.setData({ movie: movie });
        page.setData({ directors: movie.directors });
        page.setData({ casts: movie.casts });
        wx.setNavigationBarTitle({
          title: movie.title
        })
      }
    });
    wx.getSystemInfo({
      success: function (res) {
        console.log(res);
        page.setData({ winWidth: res.windowWidth });
        page.setData({ winHeight: res.windowHeight });
      }
    });
  },
  switchNav: function (e) {
    var id = e.currentTarget.id;
    this.setData({ currentTab: id });
  }
})