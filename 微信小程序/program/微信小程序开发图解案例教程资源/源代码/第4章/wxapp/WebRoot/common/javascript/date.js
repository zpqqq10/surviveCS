

function getCurrentDateStr(){
   var today=new Date();
   var day; 
   if(today.getDay()==0)  day="星期日";
   if(today.getDay()==1)  day="星期一";
   if(today.getDay()==2)  day="星期二";
   if(today.getDay()==3)  day="星期三";
   if(today.getDay()==4)  day="星期四";
   if(today.getDay()==5)  day="星期五";
   if(today.getDay()==6)  day="星期六";
   var yr = today.getYear();
   if (yr < 1000)
	   yr+=1900;
   var date=yr+"年"+(today.getMonth()+1)+"月"+today.getDate()+"日  "+day;
   return date;
}


/**
 * 把yyyy年MM月dd日转换为yyyyMMddHHmmss
 * 2015年11月11日转换为20151111000000
 **/
function getCmsFormateDataTime(yyymmrr){
	if(yyymmrr && yyymmrr.length==11)
		return yyymmrr.substring(0,4)+""+yyymmrr.substring(5,7)+""+yyymmrr.substring(8,10)+"000000";
	else
		return "";
}

function getCmsFormateData(yyymmrr){
	if(yyymmrr && yyymmrr.length==11)
		return yyymmrr.substring(0,4)+""+yyymmrr.substring(5,7)+""+yyymmrr.substring(8,10);
	else
		return "";
}

/**
 * 把yyyyMMddHHmmss转换为yyyy年MM月dd日
 * 20151111000000转换为2015年11月11日
 **/
function getPageShowData(yyymmrr){
	if(yyymmrr && yyymmrr.length==14)
		return yyymmrr.substring(0,4)+"年"+yyymmrr.substring(4,6)+"月"+yyymmrr.substring(6,8)+"日";
	else
		return "";
}
/**
 * 把yyyyMMddHHmmss转换为yyyy.MM.dd
 * 20151111000000转换为2015.11.11
 **/
function getPageShowData_point(yyymmrr){
	if(yyymmrr && yyymmrr.length==14)
		return yyymmrr.substring(0,4)+"."+yyymmrr.substring(4,6)+"."+yyymmrr.substring(6,8);
	else
		return "";
}

/**
 * 把yyyyMMddHHmmss转换为yyyy.MM.dd
 * 20151111000000转换为2015.11.11-10:21:31
 **/
function getPageShowDataTime_point(yyymmrr){
	if(yyymmrr && yyymmrr.length==14)
		return yyymmrr.substring(0,4)+"."+yyymmrr.substring(4,6)+"."+yyymmrr.substring(6,8)
				+"-"+yyymmrr.substring(8,10)+":"+yyymmrr.substring(10,12)+":"+yyymmrr.substring(12,14);
	else
		return "";
}

function getDayNumToNow(endTime){
	if(endTime && endTime.length==14){
		var now=new Date().getTime();     
		endTime=new Date(endTime.substring(0,4),parseInt(endTime.substring(4,6))-1,endTime.substring(6,8)).getTime();
		if(now>endTime){
			return "0";
		}else{
			var dates = parseInt(Math.abs((endTime - now))/(1000*60*60*24));
			return dates;
		}
	}else{
		return "";
	}
}



/***
     * 获得当前时间
     */ 
function getCurrentDate(){
        return new Date(); 
    }; 
    
    //得到当前时间1970-05-10 18:06:21
    //精度到分钟，5秒步长
    function getCurrDayTime_step5minite(){
    	return getCurrDay()+" "+getCurrTime(false,true);   
    }
    
    //得到当前小时
    function getCurrDayTime_step1Hour(){
    	var myDate=new Date();
  	    var hour=myDate.getHours();
  	    hour=hour<10?"0"+hour:hour;
    	return getCurrDay()+" "+hour+":00";   
    }
    
  //haveSecond是否有秒
    //5分钟为步进单位,返回当前最近的5分钟
    function getCurrDayTime(haveSecond,miniteDept5){
    	return getCurrDay()+" "+getCurrTime(haveSecond,miniteDept5);
    }
    
   function getCurrDay(){
	   var myDate=new Date();
	   var year=myDate.getFullYear();    //获取完整的年份(4位,1970-????)
		var mon=(myDate.getMonth()+1)+"";       //获取当前月份(0-11,0代表1月)
		var day=(myDate.getDate())+"";        //获取当前日(1-31)
		mon=mon<10?"0"+mon:mon;
		day=day<10?"0"+day:day;
		var time=year+"-"+mon+"-"+day;
		return time;
   } 
   function getCurrTime(haveSecond,miniteDept5){
	   var myDate=new Date();
	   var hour=myDate.getHours();
	   hour=hour<10?"0"+hour:hour;
	   var minute=myDate.getMinutes();
	   if(miniteDept5){
		   var modVal=minute%5;
		   if(modVal!=0){
			   minute=minute-modVal;
		   }
	   }
	   minute=minute<10?"0"+minute:minute;
	   var second=myDate.getSeconds();
	   second=second<10?"0"+second:second;
	   if(haveSecond)
		   return hour+":"+minute+":"+second;
	   else
		   return hour+":"+minute;
		   
   }
    
//今年以来的起止时间段
function getThisYear(){
	//起止日期数组  
			var startStop=new Array(); 
			//获取当前时间  
      var currentDate=this.getCurrentDate(); 
      var stop = currentDate.getYear()+"-"+(currentDate.getMonth()+1)+"-"+currentDate.getDate();
      var start = currentDate.getYear()+"-"+"01-01";
      
      //添加年初时间  
      startStop.push(start);//本周起始时间  
      //添加当前时间
      startStop.push(stop);//本周终止时间  
      //返回  
      return startStop; 
}
 //获得昨日起止时间   
function getYesterdayDate(){
		//起止日期数组  
			var startStop=new Array(); 
			//获取当前时间  
      var currentDate=this.getCurrentDate(); 
      //一天的毫秒数  
      var millisecond=1000*60*60*24; 
      //昨日时间
      yesterday = new Date(currentDate.getTime()-millisecond);
      currentDate = currentDate.getYear()+"-"+(currentDate.getMonth()+1)+"-"+currentDate.getDate();
      yesterday = yesterday.getYear()+"-"+(yesterday.getMonth()+1)+"-"+yesterday.getDate();
      //添加本周时间  
      startStop.push(yesterday);//本周起始时间  
      //添加本周最后一天时间  
      startStop.push(currentDate);//本周终止时间  
      //返回  
      return startStop; 
}
    /***
     * 获得本周起止时间
     */ 
function getCurrentWeek(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=this.getCurrentDate(); 
        //返回date是一周中的某一天  
        var week=currentDate.getDay(); 
        //返回date是一个月中的某一天  
        var month=currentDate.getDate(); 
     
        //一天的毫秒数  
        var millisecond=1000*60*60*24; 
        //减去的天数  
        var minusDay=week!=0?week-1:6; 
        //alert(minusDay);
        //本周 周一  
        var monday=new Date(currentDate.getTime()-(minusDay*millisecond)); 
        //本周 周日  
        var sunday=new Date(monday.getTime()+(6*millisecond)); 
        monday = monday.getYear()+"-"+(monday.getMonth()+1)+"-"+monday.getDate();
        sunday = sunday.getYear()+"-"+(sunday.getMonth()+1)+"-"+sunday.getDate();
        //添加本周时间  
        startStop.push(monday);//本周起始时间  
        //添加本周最后一天时间  
        startStop.push(sunday);//本周终止时间  
        //返回  
        return startStop; 
    }; 
    /***
     * 获得本月的起止时间
     */ 
function getCurrentMonth(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=getCurrentDate(); 
        //获得当前月份0-11  
        var currentMonth=currentDate.getMonth(); 
        //获得当前年份4位年  
        var currentYear=currentDate.getFullYear(); 
        //求出本月第一天  
        var firstDay=new Date(currentYear,currentMonth,1); 
         
 
        //当为12月的时候年份需要加1  
        //月份需要更新为0 也就是下一年的第一个月  
        if(currentMonth==11){ 
            currentYear++; 
            currentMonth=0;//就为  
        }else{ 
            //否则只是月份增加,以便求的下一月的第一天  
            currentMonth++; 
        } 
    
         
        //一天的毫秒数  
        var millisecond=1000*60*60*24; 
        //下月的第一天  
        var nextMonthDayOne=new Date(currentYear,currentMonth,1); 
        //求出上月的最后一天  
        var lastDay=new Date(nextMonthDayOne.getTime()-millisecond); 
        firstDay = firstDay.getYear()+"-"+(firstDay.getMonth()+1)+"-"+firstDay.getDate();
        lastDay = lastDay.getYear()+"-"+(lastDay.getMonth()+1)+"-"+lastDay.getDate();
        //添加至数组中返回  
        startStop.push(firstDay); 
        startStop.push(lastDay); 
        //返回  
        return startStop; 
    }; 
     
    /**
     * 得到本季度开始的月份
     * @param month 需要计算的月份
     ***/ 
    function getQuarterSeasonStartMonth(month){ 
        var quarterMonthStart=0; 
        var spring=0; //春  
        var summer=3; //夏  
        var fall=6;   //秋  
        var winter=9;//冬  
        //月份从0-11  
        if(month<3){ 
            return spring; 
        } 
         
        if(month<6){ 
            return summer; 
        } 
         
        if(month<9){ 
            return fall; 
        } 
         
        return winter; 
    }; 
     
    /**
     * 获得该月的天数
     * @param year年份
     * @param month月份
     * */ 
function getMonthDays(year,month){ 
        //本月第一天 1-31  
        var relativeDate=new Date(year,month,1); 
        //获得当前月份0-11  
        var relativeMonth=relativeDate.getMonth(); 
        //获得当前年份4位年  
        var relativeYear=relativeDate.getFullYear(); 
         
        //当为12月的时候年份需要加1  
        //月份需要更新为0 也就是下一年的第一个月  
        if(relativeMonth==11){ 
            relativeYear++; 
            relativeMonth=0; 
        }else{ 
            //否则只是月份增加,以便求的下一月的第一天  
            relativeMonth++; 
        } 
        //一天的毫秒数  
        var millisecond=1000*60*60*24; 
        //下月的第一天  
        var nextMonthDayOne=new Date(relativeYear,relativeMonth,1); 
        //返回得到上月的最后一天,也就是本月总天数  
        return new Date(nextMonthDayOne.getTime()-millisecond).getDate(); 
    }; 
     
    /**
     * 获得本季度的起止日期
     */ 
function getCurrentSeason(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=getCurrentDate(); 
        //获得当前月份0-11  
        var currentMonth=currentDate.getMonth(); 
        //获得当前年份4位年  
        var currentYear=currentDate.getFullYear(); 
        //获得本季度开始月份  
        var quarterSeasonStartMonth=getQuarterSeasonStartMonth(currentMonth); 
        //获得本季度结束月份  
        var quarterSeasonEndMonth=quarterSeasonStartMonth+2; 
         
        //获得本季度开始的日期  
        var quarterSeasonStartDate=new Date(currentYear,quarterSeasonStartMonth,1); 
        //获得本季度结束的日期  
        var quarterSeasonEndDate=new Date(currentYear,quarterSeasonEndMonth,getMonthDays(currentYear, quarterSeasonEndMonth)); 
        quarterSeasonStartDate = quarterSeasonStartDate.getYear()+"-"+(quarterSeasonStartDate.getMonth()+1)+"-"+quarterSeasonStartDate.getDate();
        quarterSeasonEndDate = quarterSeasonEndDate.getYear()+"-"+(quarterSeasonEndDate.getMonth()+1)+"-"+quarterSeasonEndDate.getDate();
        //加入数组返回  
        startStop.push(quarterSeasonStartDate); 
        startStop.push(quarterSeasonEndDate); 
        //返回  
        return startStop; 
    }; 
     
    /***
     * 得到本年的起止日期
     * 
     */ 
function getCurrentYear(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=getCurrentDate(); 
        //获得当前年份4位年  
        var currentYear=currentDate.getFullYear(); 
         
        //本年第一天  
        var currentYearFirstDate=new Date(currentYear,0,1); 
        //本年最后一天  
        var currentYearLastDate=new Date(currentYear,11,31); 
        //添加至数组  
        startStop.push(currentYearFirstDate); 
        startStop.push(currentYearLastDate); 
        //返回  
        return startStop; 
    }; 
     
    /**
     * 返回上一个月的第一天Date类型
     * @param year 年
     * @param month 月
     **/ 
function getPriorMonthFirstDay(year,month){ 
        //年份为0代表,是本年的第一月,所以不能减  
        if(month==0){ 
            month=11;//月份为上年的最后月份  
            year--;//年份减1  
            return new Date(year,month,1); 
        } 
        //否则,只减去月份  
        month--; 
        return new Date(year,month,1);; 
    }; 
     
    /**
     * 获得上一月的起止日期
     * ***/ 
    function getPreviousMonth(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=getCurrentDate(); 
        //获得当前月份0-11  
        var currentMonth=currentDate.getMonth(); 
        //获得当前年份4位年  
        var currentYear=currentDate.getFullYear(); 
        //获得上一个月的第一天  
        var priorMonthFirstDay=getPriorMonthFirstDay(currentYear,currentMonth); 
        //获得上一月的最后一天  
        var priorMonthLastDay=new Date(priorMonthFirstDay.getFullYear(),priorMonthFirstDay.getMonth(),getMonthDays(priorMonthFirstDay.getFullYear(), priorMonthFirstDay.getMonth())); 
        //添加至数组  
        priorMonthFirstDay = priorMonthFirstDay.getYear()+"-"+(priorMonthFirstDay.getMonth()+1)+"-"+priorMonthFirstDay.getDate();
        priorMonthLastDay = priorMonthLastDay.getYear()+"-"+(priorMonthLastDay.getMonth()+1)+"-"+priorMonthLastDay.getDate();
        startStop.push(priorMonthFirstDay); 
        startStop.push(priorMonthLastDay); 
        //返回  
        return startStop; 
    }; 
    
     /**
     * 获得上上一月的起止日期
     * ***/ 
    function getPreviousPreviousMonth(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=getCurrentDate(); 
        //获得上月月份0-11  
        var currentMonth=currentDate.getMonth()-1; 
        //获得当前年份4位年  
        var currentYear=currentDate.getFullYear(); 
        //获得上一个月的第一天  
        var priorMonthFirstDay=getPriorMonthFirstDay(currentYear,currentMonth); 
        //获得上一月的最后一天  
        var priorMonthLastDay=new Date(priorMonthFirstDay.getFullYear(),priorMonthFirstDay.getMonth(),getMonthDays(priorMonthFirstDay.getFullYear(), priorMonthFirstDay.getMonth())); 
        //添加至数组  
        priorMonthFirstDay = priorMonthFirstDay.getYear()+"-"+(priorMonthFirstDay.getMonth()+1)+"-"+priorMonthFirstDay.getDate();
        priorMonthLastDay = priorMonthLastDay.getYear()+"-"+(priorMonthLastDay.getMonth()+1)+"-"+priorMonthLastDay.getDate();
        startStop.push(priorMonthFirstDay); 
        startStop.push(priorMonthLastDay); 
        //返回  
        return startStop; 
    }; 
     
     //去年上个月
    function getLastYearLastMonth(){
    		//起止日期数组  
      var startStop=new Array(); 
    	var lastMonth = getPreviousMonth();
    	var start = lastMonth[0];
    	var year = start.split("-")[0];
    	start = (parseInt(year)-1)+"-"+start.split("-")[1]+"-"+start.split("-")[2];
    	var end = lastMonth[1];
    	end = (parseInt(year)-1)+"-"+end.split("-")[1]+"-"+end.split("-")[2];
      //添加至数组  
      startStop.push(start); 
      startStop.push(end); 
      return startStop; 
    	}
     
    /**
     * 获得上一周的起止日期
     * **/ 
function getPreviousWeek(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=getCurrentDate(); 
        //返回date是一周中的某一天  
        var week=currentDate.getDay(); 
        //返回date是一个月中的某一天  
        var month=currentDate.getDate(); 
        //一天的毫秒数  
        var millisecond=1000*60*60*24; 
        //减去的天数  
        var minusDay=week!=0?week-1:6; 
        //获得当前周的第一天  
        var currentWeekDayOne=new Date(currentDate.getTime()-(millisecond*minusDay)); 
        //上周最后一天即本周开始的前一天  
        var priorWeekLastDay=new Date(currentWeekDayOne.getTime()-millisecond); 
        //上周的第一天  
        var priorWeekFirstDay=new Date(priorWeekLastDay.getTime()-(millisecond*6)); 
        priorWeekFirstDay = priorWeekFirstDay.getYear()+"-"+(priorWeekFirstDay.getMonth()+1)+"-"+priorWeekFirstDay.getDate();
        priorWeekLastDay = priorWeekLastDay.getYear()+"-"+(priorWeekLastDay.getMonth()+1)+"-"+priorWeekLastDay.getDate();
        //添加至数组  
        startStop.push(priorWeekFirstDay); 
        startStop.push(priorWeekLastDay); 
         
        return startStop; 
    }; 
    
    /**
     * 获得上上一周的起止日期
     * **/ 
function getPreviousPreviousWeek(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=getCurrentDate(); 
        //返回date是一周中的某一天  
        var week=currentDate.getDay(); 
        //返回date是一个月中的某一天  
        var month=currentDate.getDate(); 
        //一天的毫秒数  
        var millisecond=1000*60*60*24; 
        //减去的天数  
        var minusDay=week!=0?week-1:6; 
        var temp = getPreviousWeek()[0]//上周第一天，但是不是date格式
        var lastWeekFirstday = Date.parse(temp.replace(/-/g,"/"));
        lastWeekFirstday = new Date(lastWeekFirstday);
        //上周最后一天即本周开始的前一天  
        var priorWeekLastDay=new Date(lastWeekFirstday.getTime()-millisecond); 
        //上周的第一天  
        var priorWeekFirstDay=new Date(priorWeekLastDay.getTime()-(millisecond*6)); 
        priorWeekFirstDay = priorWeekFirstDay.getYear()+"-"+(priorWeekFirstDay.getMonth()+1)+"-"+priorWeekFirstDay.getDate();
        priorWeekLastDay = priorWeekLastDay.getYear()+"-"+(priorWeekLastDay.getMonth()+1)+"-"+priorWeekLastDay.getDate();
        //添加至数组  
        startStop.push(priorWeekFirstDay); 
        startStop.push(priorWeekLastDay); 
         
        return startStop; 
    }; 
    //去年本周
    function getLastYearLastWeek(){
    	//起止日期数组  
      var startStop=new Array(); 
    	var lastWeek = getPreviousPreviousWeek();
    	var start = lastWeek[0];
    	var year = start.split("-")[0];
    	start = (parseInt(year)-1)+"-"+start.split("-")[1]+"-"+start.split("-")[2];
    	var end = lastWeek[1];
    	end = (parseInt(year)-1)+"-"+end.split("-")[1]+"-"+end.split("-")[2];
      //添加至数组  
      startStop.push(start); 
      startStop.push(end); 
      return startStop; 
    	}
     
    /**
     * 得到上季度的起始日期
     * year 这个年应该是运算后得到的当前本季度的年份
     * month 这个应该是运算后得到的当前季度的开始月份
     * */ 
function getPriorSeasonFirstDay(year,month){ 
        var quarterMonthStart=0; 
        var spring=0; //春  
        var summer=3; //夏  
        var fall=6;   //秋  
        var winter=9;//冬  
        //月份从0-11  
        switch(month){//季度的其实月份  
        case spring: 
            //如果是第一季度则应该到去年的冬季  
              year--; 
              month=winter; 
            break; 
        case summer: 
            month=spring; 
            break; 
        case fall: 
            month=summer; 
            break; 
        case winter: 
            month=fall; 
            break; 
             
        }; 
         
        return new Date(year,month,1); 
    }; 
     
    /**
     * 得到上季度的起止日期
     * **/ 
function getPreviousSeason(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=getCurrentDate(); 
        //获得当前月份0-11  
        var currentMonth=currentDate.getMonth(); 
        //获得当前年份4位年  
        var currentYear=currentDate.getFullYear(); 
        //上季度的第一天  
        var priorSeasonFirstDay=getPriorSeasonFirstDay(currentYear, currentMonth); 
        //上季度的最后一天  
        var priorSeasonLastDay=new Date(priorSeasonFirstDay.getFullYear(),priorSeasonFirstDay.getMonth()+2,getMonthDays(priorSeasonFirstDay.getFullYear(), priorSeasonFirstDay.getMonth()+2)); 
        //添加至数组 
        priorSeasonFirstDay = priorSeasonFirstDay.getYear()+"-"+(priorSeasonFirstDay.getMonth()+1)+"-"+priorSeasonFirstDay.getDate();
        priorSeasonLastDay = priorSeasonLastDay.getYear()+"-"+(priorSeasonLastDay.getMonth()+1)+"-"+priorSeasonLastDay.getDate();   
        startStop.push(priorSeasonFirstDay); 
        startStop.push(priorSeasonLastDay); 
        return startStop; 
    }; 
    //去年上个季度
    function getLastYearLastSeason(){
    		//起止日期数组  
      var startStop=new Array(); 
    	var lastSeason = getPreviousSeason();
    	var start = lastSeason[0];
    	var year = start.split("-")[0];
    	start = (parseInt(year)-1)+"-"+start.split("-")[1]+"-"+start.split("-")[2];
    	var end = lastSeason[1];
    	end = (parseInt(year)-1)+"-"+end.split("-")[1]+"-"+end.split("-")[2];
      //添加至数组  
      startStop.push(start); 
      startStop.push(end); 
      return startStop; 
    	}
    
        /**
     * 得到上上季度的起止日期
     * **/ 
function getPreviousPreviousSeason(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=getCurrentDate(); 
        //获得上季度同期月份0-11  
        var currentMonth=currentDate.getMonth(); 
        var currentYear = "";
        if(currentMonth<3){
        		currentMonth = 12-(3-parseInt(currentMonth))-1;
        		currentYear = parseInt(currentDate.getFullYear())-1;
        }else{
        	//获得当前年份4位年  
        currentYear=currentDate.getFullYear(); 	
        }
        //上上季度的第一天  
        var priorSeasonFirstDay=getPriorSeasonFirstDay(currentYear, currentMonth); 
        //上上季度的最后一天  
        var priorSeasonLastDay=new Date(priorSeasonFirstDay.getFullYear(),priorSeasonFirstDay.getMonth()+2,getMonthDays(priorSeasonFirstDay.getFullYear(), priorSeasonFirstDay.getMonth()+2)); 
        //添加至数组
        priorSeasonFirstDay = priorSeasonFirstDay.getYear()+"-"+(priorSeasonFirstDay.getMonth()+1)+"-"+priorSeasonFirstDay.getDate();
        priorSeasonLastDay = priorSeasonLastDay.getYear()+"-"+(priorSeasonLastDay.getMonth()+1)+"-"+priorSeasonLastDay.getDate();  
        startStop.push(priorSeasonFirstDay); 
        startStop.push(priorSeasonLastDay); 
        return startStop; 
    };
     
    /**
     * 得到去年的起止日期
     * **/ 
function getPreviousYear(){ 
        //起止日期数组  
        var startStop=new Array(); 
        //获取当前时间  
        var currentDate=getCurrentDate(); 
        //获得当前年份4位年  
        var currentYear=currentDate.getFullYear(); 
            currentYear--; 
        var priorYearFirstDay=new Date(currentYear,0,1); 
        var priorYearLastDay=new Date(currentYear,11,1); 
        //添加至数组  
        startStop.push(priorYearFirstDay); 
        startStop.push(priorYearLastDay); 
        return startStop; 
    }; 
     
     
    
     
     