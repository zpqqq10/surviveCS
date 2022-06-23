function initSubMenuDisplay(){
  return ['hidden','hidden'];
}
Page({
  data:{
     subMenuDispaly:initSubMenuDisplay(),
     currentTab:-1
  },
   tapMainMenu:function(e){
     console.log(e);
     var index = parseInt(e.currentTarget.dataset.index);
     console.log(index);
     var newSubMenuDisplay = initSubMenuDisplay();
     if(this.data.subMenuDispaly[index] == 'hidden'){
          newSubMenuDisplay[index] = 'show';
          this.setData({currentTab:index});
     }else{
          newSubMenuDisplay[index] = 'hidden';
          this.setData({currentTab:-1});
     }
     this.setData({subMenuDispaly:newSubMenuDisplay});
  }
})