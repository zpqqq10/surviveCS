Page({
  data:{
    currentTab:0,
    flag:0
  },
  switchNav:function(e){
    console.log(e);
    var page = this;
    var id = e.target.id;
    if(this.data.currentTab == id){
       return false;
    }else{
      page.setData({currentTab:id});
    }
    page.setData({flag:id});
  },
  onShareAppMessage: function () {
    return {
      title: '糗事百科',
      desc: '这里有搞笑的娱乐段子',
      path: '/index/index'
    }
  }
})