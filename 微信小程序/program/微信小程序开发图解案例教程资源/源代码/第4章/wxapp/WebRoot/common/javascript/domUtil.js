	
//获取复选框的值
function getCheckboxValueArray(checkedObj){
	var checkedObjVal=[];
	checkedObj.each(function(i){
		checkedObjVal[i]=$(this).val();
	});
	return checkedObjVal;
}
	