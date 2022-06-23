Page({
    data: {},
    formSubmit(e){
        let _searchKey = e.detail.value.searchKey;
        // 这里做值校验
        if(!_searchKey)return;
        wx.navigateTo({
            url: '/pages/search/search?q=' + _searchKey
        })
    }
})