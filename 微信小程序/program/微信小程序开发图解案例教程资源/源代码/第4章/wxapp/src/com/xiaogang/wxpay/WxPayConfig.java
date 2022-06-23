package com.xiaogang.wxpay;

/**
 * 微信小程序支付配置
 * @author xiaogang
 *
 */
public class WxPayConfig {

	//小程序appid
	public static final String appid = "wxa7730e0596be9404";
	//微信支付的商户id
	public static final String mch_id = "";
	//微信支付的商户密钥
	public static final String key = "";
	//支付成功后的服务器回调url
	public static final String notify_url = "https://xx/xx/weixin/api/wxNotify";
	//签名方式，固定值
	public static final String SIGNTYPE = "MD5";
	//交易类型，小程序支付的固定值为JSAPI
	public static final String TRADETYPE = "JSAPI";
	//微信统一下单接口地址
	public static final String pay_url = "https://api.mch.weixin.qq.com/pay/unifiedorder";
	//微信服务器会话验证
	public static final String access_token_url = "https://api.weixin.qq.com/sns/jscode2session";
    //授权类型
	public static final String grant_type = "authorization_code";
	//小程序密钥
	public static final String app_secret = "9bfcfe529ce87f0bdcddec6ca473b645";	
}
