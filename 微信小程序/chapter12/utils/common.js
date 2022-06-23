//模拟新闻数据
const news = [{
    id: '264698',
    title: '俄罗斯联邦驻华大使杰尼索夫会见校党委书记顾家山一行并接受《力冈译文全集》赠予',
    poster: 'http://www.ahnu.edu.cn/uploads/20180305/20180305130736_25127.jpg',
    content: ' 本网讯（校出版社） 3月2日上午，俄罗斯驻华大使杰尼索夫在北京俄罗斯驻华大使馆会见了校党委书记顾家山，并接受了我校出版社赠予俄罗斯大使馆的十套《力冈译文全集》。俄罗斯驻华大使馆参赞梅利尼科娃、大使馆一秘伊戈尔、大使助理、塔斯社记者，我校校办主任曾黎明、出版社社长张奇才，我校杰出校友、俄罗斯人民友谊勋章和利哈乔夫院士奖获得者、中国俄罗斯文学研究会会长刘文飞教授等参加了会见。 ',
    add_date: '2018-03-05'
  },
  {
    id: '304083',
    title: '我校学子代表国家队获中国羽毛球公开赛男双亚军',
    poster: 'http://www.ahnu.edu.cn/uploads/20181114/20181114090202_43004.png',
    content: ' 本网讯 （体育学院 徐梦涛）11月11日，世界羽联中国羽毛球公开赛在福州落下帷幕。在男子双打半决赛中，我校2018级运动训练专业学生谭强与搭档何济霆以2比0战胜印尼组合莫哈末•阿山/亨德拉，晋级决赛。决赛中，这对年轻组合以1:2负于现世界排名第一的印尼组合，获得了本次比赛的亚军。这也是谭强在本年度内获得的最好成绩。 ',
    add_date: '2018-11-14'
  },
  {
    id: '305670',
    title: '我校学子在全省第八届少数民族传统体育运动会上喜获佳绩',
    poster: 'http://www.ahnu.edu.cn/uploads/20181127/20181127061319_94716.png',
    content: '本网讯（体育学院 邹华刚）11月18日至23日，由安徽省人民政府主办，省民委、省体育局和蚌埠市人民政府承办的安徽省第八届少数民族传统体育运动会在蚌埠市成功举行，全省16个地市代表团近1300名运动员、教练员、裁判员参加了本次运动会。\n本届运动会共设武术、民族式摔跤、毽球、蹴球、押加、高脚竞速、陀螺和板鞋竞速等8个项目。我校组建了由周慧雅、王和章、王强等23名少数民族学生组成的运动员队伍，代表芜湖市参加了高脚竞速、武术、蹴球、陀螺和板鞋竞速等5个大项的比赛。经过激烈角逐，我校运动健儿共获得4个一等奖（第1名），6个二等奖（第2-4名），9个三等奖（第5-8名）的优异战绩，出色地完成了比赛任务。 ',
    add_date: '2018-11-27'
  }
];

//获取新闻列表
function getNewsList() {
  let list = [];
  for (var i = 0; i < news.length; i++) {
    let obj = {};
    obj.id = news[i].id;
    obj.poster = news[i].poster;
    obj.add_date = news[i].add_date;
    obj.title = news[i].title;
    list.push(obj);
  }
  return list; //返回新闻列表
}

//获取新闻内容
function getNewsDetail(newsID) {
  let msg = {
    code: '404', //没有对应的新闻
    news: {}
  };
  for (var i = 0; i < news.length; i++) {
    if (newsID == news[i].id) { //匹配新闻id编号
      msg.code = '200'; //成功
      msg.news = news[i]; //更新当前新闻内容
      break;
    }
  }
  return msg; //返回查找结果
}

/*
 * 对外暴露接口
 */
module.exports = {
  getNewsList: getNewsList,
  getNewsDetail: getNewsDetail
}

//module.export.getNewsDetail = getNewsDetail