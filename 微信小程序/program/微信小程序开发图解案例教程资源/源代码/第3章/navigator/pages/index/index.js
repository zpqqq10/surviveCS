Page({
    navigateBtn:function(){
      wx.navigateTo({
        url: '../navigator/navigator',
        success: function(res){
          console.log(res);
        },
        fail: function() {
          // fail
        },
        complete: function() {
          // complete
        }
      })
   },
   redirectBtn:function(){
      wx.redirectTo({
        url: '../navigator/navigator',
        success: function(res){
          console.log(res);
        },
        fail: function() {
          // fail
        },
        complete: function() {
          // complete
        }
      })
   },
   switchBtn:function(){
     wx.switchTab({
       url: '../redirect/redirect',
       success: function(res){
         // success
       },
       fail: function() {
         // fail
       },
       complete: function() {
         // complete
       }
     })
   }
})