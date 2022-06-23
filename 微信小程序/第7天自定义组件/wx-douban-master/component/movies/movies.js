const app = getApp();
Component({
    properties: {
        // 定义组件的对外属性，属性值可以在组件使用时指定
        movieType: {
            type: String,
            value: 'in_theaters',
        }
    },
    data: {
        // 这里是一些组件内部数据
        movieTitle: '',
        movieList: []
    },
    ready(){
        // 验证请求来源 搜索、首页
        let _url = 'in_theaters';
        if (this.properties.movieType == 'search') {
            // 搜索页面请求处理
            var _pages = getCurrentPages(),
                _curPage = _pages[_pages.length - 1];
            // 获取到搜索带过来的参数并复制到请求的url接口中
            _url = 'search?q=' + _curPage.options.q;
        }
        // 获取电影列表
        this.getMovieList(_url);
    },
    methods: {
        // 获取电影列表
        getMovieList (url) {
            let _this = this;
            wx.showLoading();
            wx.request({
                url: app.globalData.apiUrl + '/movie/' + url,
                method: 'GET',
                data: { count: 15 },
                header: {
                    "Content-Type": "application/json,application/json"
                  },
                success: function (res) {
                    // 此处省略请求是否成功校验
                    _this.setData({
                        movieTitle: res.data.title,
                        movieList: res.data.subjects
                    });
                    wx.hideLoading();
                }
            })
        }
    }
})