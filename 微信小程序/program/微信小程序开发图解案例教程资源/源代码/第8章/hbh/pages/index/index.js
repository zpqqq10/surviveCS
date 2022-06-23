Page({
  data: {
    indicatorDots: false,
    autoplay: true,
    interval: 5000,
    duration: 1000,
    imgUrls: [
      "../../images/haibao/1.jpg",
      "../../images/haibao/2.jpg",
      "../../images/haibao/3.jpg",
      "../../images/haibao/4.jpg"
    ],
    navs: []
  },
  onLoad: function (options) {
    var page = this;
    var navs = this.loadNavData();
    page.setData({ navs: navs });
  },
  navBtn: function (e) {
    console.log(e);
    var id = e.currentTarget.id;
    if (id == "9") {
      wx.navigateTo({
        url: '../type/type'
      })
    }

  },
  loadNavData: function () {
    var navs = [];
    var nav0 = new Object();
    nav0.img = '../../images/nav/dxy.jpg';
    nav0.name = '订喜宴';
    navs[0] = nav0;

    var nav1 = new Object();
    nav1.img = '../../images/nav/phz.jpg';
    nav1.name = '拍婚照';
    navs[1] = nav1;

    var nav2 = new Object();
    nav2.img = '../../images/nav/zhq.jpg';
    nav2.name = '找婚庆';
    navs[2] = nav2;

    var nav3 = new Object();
    nav3.img = '../../images/nav/dhj.jpg';
    nav3.name = '订婚戒';
    navs[3] = nav3;

    var nav4 = new Object();
    nav4.img = '../../images/nav/xhs.jpg';
    nav4.name = '选婚纱';
    navs[4] = nav4;

    var nav5 = new Object();
    nav5.img = '../../images/nav/thp.jpg';
    nav5.name = '淘婚品';
    navs[5] = nav5;

    var nav6 = new Object();
    nav6.img = '../../images/nav/dmy.jpg';
    nav6.name = '度蜜月';
    navs[6] = nav6;

    var nav7 = new Object();
    nav7.img = '../../images/nav/zhc.jpg';
    nav7.name = '租婚车';
    navs[7] = nav7;

    var nav8 = new Object();
    nav8.img = '../../images/nav/mxn.jpg';
    nav8.name = '美新娘';
    navs[8] = nav8;

    var nav9 = new Object();
    nav9.img = '../../images/nav/qbfl.jpg';
    nav9.name = '全部分类';
    navs[9] = nav9;
    return navs;
  }
})