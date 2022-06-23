// pages/cook/cook.js
Page({
  data:{
    array:[]
  },
  onLoad:function(options){
    var array = this.initData();
    this.setData({array:array});
  },
   initData:function(){
    var array = [];
    var object1 = new Object();
    object1.img = '../images/list/food-1.jpg';
    object1.title='爱心早餐';
    object1.type='健康养生';
    object1.liulan='20696浏览';
    object1.pinglun='7评论';
    array[0] = object1;

    var object2 = new Object();
    object2.img = '../images/list/food-2.jpg';
    object2.title='困了只想喝咖啡';
    object2.type='家庭医生在线';
    object2.liulan='29628浏览';
    object2.pinglun='13评论';
    array[1] = object2;

    var object3 = new Object();
    object3.img = '../images/list/food-3.jpg';
    object3.title='橘子吃多变小黄人';
    object3.type='家庭医生在线';
    object3.liulan='19585浏览';
    object3.pinglun='6评论';
    array[2] = object3;

    var object4 = new Object();
    object4.img = '../images/list/food-4.jpg';
    object4.title='搜狐新闻，手机用久了';
    object4.type='广告';
    object4.liulan='4688浏览';
    object4.pinglun='4评论';
    array[3] = object4;

    var object5 = new Object();
    object5.img = '../images/list/food-5.jpg';
    object5.title='困了只想喝咖啡';
    object5.type='家庭医生在线';
    object5.liulan='29628浏览';
    object5.pinglun='13评论';
    array[4] = object5;

    return array;
  }
  
})