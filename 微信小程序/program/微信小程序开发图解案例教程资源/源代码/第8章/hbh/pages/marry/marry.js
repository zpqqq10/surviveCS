Page({
  data:{
    flag:'1',
    way:'请选择获知渠道'
  },
  selectWay:function(){
     this.setData({flag:'0'});
  },
  radioChange:function(e){
    console.log(e);
    var way = e.detail.value;     
    this.setData({flag:'1'});
    this.setData({way:way});
  },
  formSubmit:function(e){
    console.log(e);
    var ticket = e.detail.value;
     ticket.way = this.data.way;
     wx.setStorageSync('ticket', ticket);
  }
})