/**
 * 验证函数集合，每次引用需
 * @param str
 * @returns {Boolean}
 */

function AsopValidate(){
	
	var instance=this;
	
	//要覆盖重写的方法
	/**
	 * 构建非空字段的提示信息等
	 * 如 obj["name"]="名称不可为空"
	 */
	this.fBuildNotNullMsg_O=function(){
		return {};
	}
	
	
	/**
	 * 检验
	 */
	this.fCheckFuncs_O=function(){
		return {};
	}
	
	
	
	//输入验证
	this.fValidateInput_B=function(formId){
		var vob=instance.fBuildNotNullMsg_O();
		var obj=instance.fBuildForm_O(formId);
		for(var attr in vob){
			var dom=$("#"+formId+" [name="+attr+"]");
			var val=obj[attr];
			if(!val){
				alert(vob[attr]);
				$("#"+formId+" [name="+attr+"]").focus();
				return false;
			}	
			var check=fSpecialCheck_F(attr);
			if(check){
				var msg=check(val);
				if(msg){
					alert(msg);
					$("#"+formId+" [name="+attr+"]").focus();
					return false;
				}
			}
		}
		return true;
	}
	

	
	
	
	
	
	
	
	
	/**
	 * 将form表单中内容构建成js对象
	 */
	this.fBuildForm_O=function(formId){
		var obj={};
		$("#"+formId+" input,select,textarea").each(function(){
			var name=$(this).attr("name");
			var val=$(this).val();
			if(name){
				obj[name]=val;
			}
		});
		
		return obj;
	}
	
	/**
	 * 特定处理，除非空判断之外的函数列表
	 * attrVal:属性值
	 * return 函数
	 */
	var fSpecialCheck_F=function(attrVal){
		var obj=instance.fCheckFuncs_O();
		var check=obj[attrVal];
		return check;
	};
	
	
	/**
	 * 工具方法，测试为字母+数字+"_"的2到20个字符
	 */
	this.fValidateEngNum=function(str){
		 var ptn = /^[A-Za-z0-9_]{2,20}$/;
		 if(ptn.test(str)) return true;
		 
		 return false;
		 
	}
	
	
	
	

	
}

























