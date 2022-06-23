Page({
  data:{
    disabled:true,
    btnstate:"default",
    account:"",
    password:""
  },
  accountInput:function(e){
      var content = e.detail.value;
      console.log(content);
      if(content != ''){
         this.setData({disabled:false,btnstate:"primary",account:content});
      }else{
         this.setData({disabled:true,btnstate:"default"});
      }
  },
  pwdBlur:function(e){
      var password = e.detail.value;
      if(password != ''){
         this.setData({password:password});
      }
  }
})