package com.xiaogang.wxpay;

/**
 * ΢��С����֧������
 * @author xiaogang
 *
 */
public class WxPayConfig {

	//С����appid
	public static final String appid = "wxa7730e0596be9404";
	//΢��֧�����̻�id
	public static final String mch_id = "";
	//΢��֧�����̻���Կ
	public static final String key = "";
	//֧���ɹ���ķ������ص�url
	public static final String notify_url = "https://xx/xx/weixin/api/wxNotify";
	//ǩ����ʽ���̶�ֵ
	public static final String SIGNTYPE = "MD5";
	//�������ͣ�С����֧���Ĺ̶�ֵΪJSAPI
	public static final String TRADETYPE = "JSAPI";
	//΢��ͳһ�µ��ӿڵ�ַ
	public static final String pay_url = "https://api.mch.weixin.qq.com/pay/unifiedorder";
	//΢�ŷ������Ự��֤
	public static final String access_token_url = "https://api.weixin.qq.com/sns/jscode2session";
    //��Ȩ����
	public static final String grant_type = "authorization_code";
	//С������Կ
	public static final String app_secret = "9bfcfe529ce87f0bdcddec6ca473b645";	
}
