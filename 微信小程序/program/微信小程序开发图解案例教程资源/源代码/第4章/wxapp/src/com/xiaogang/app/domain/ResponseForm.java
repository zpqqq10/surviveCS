package com.xiaogang.app.domain;

import java.io.Serializable;

public class ResponseForm implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private Boolean success;		//成功状态
	private Object data;			//返回数据
	private String msg;				//提示信息
	private String errorInfo;		//错误信息
	
	
	public static ResponseForm buildSuccessResponse(Object data){
		ResponseForm res=new ResponseForm();
		res.setSuccess(true);
		res.setData(data);
		res.setMsg("操作成功");
		return res;
	}
	public static ResponseForm buildErrorResponse(String errorInfo){
		ResponseForm res=new ResponseForm();
		res.setSuccess(false);
		res.setData(null);
		res.setMsg("操作失败");
		res.setErrorInfo(errorInfo);
		return res;
	}
	
	public static ResponseForm initSuccessResponse(){
		ResponseForm res=new ResponseForm();
		res.setSuccess(true);
		res.setMsg("操作成功");
		return res;
	}
	public static ResponseForm initResponseForm(){
		ResponseForm res=new ResponseForm();
		return res;
	}
	public Boolean getSuccess() {
		return success;
	}
	public void setSuccess(Boolean success) {
		this.success = success;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getErrorInfo() {
		return errorInfo;
	}
	public void setErrorInfo(String errorInfo) {
		this.errorInfo = errorInfo;
	}
	
	
	
}
