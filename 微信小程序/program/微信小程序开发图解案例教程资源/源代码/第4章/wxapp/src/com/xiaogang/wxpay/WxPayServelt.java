package com.xiaogang.wxpay;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.xiaogang.app.util.PayUtil;

/**
 * 发起微信支付
 * @author xiaogang
 *
 */
public class WxPayServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public WxPayServelt() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			//生成32位长度的随机字符串
			String nonce_str = PayUtil.getRandomString(32);
			//商品名称
			String body = "商品名称";
			//会话唯一标识
			String openid = request.getParameter("openid");
			String spbill_create_ip = PayUtil.getIpAddr(request);
			//组装参数，用户生成统一下单接口的签名
			Map<String, String> packageParams = new HashMap<String, String>();
			packageParams.put("appid", WxPayConfig.appid);
			packageParams.put("mch_id", WxPayConfig.mch_id);
			packageParams.put("nonce_str", nonce_str);
			packageParams.put("body", body);
			packageParams.put("out_trade_no", "123456789");//商户订单号
			packageParams.put("total_fee", "1");//支付金额，这边需要转成字符串类型，否则后面的签名会失败
			packageParams.put("spbill_create_ip", spbill_create_ip);
			packageParams.put("notify_url", WxPayConfig.notify_url);//支付成功后的回调地址
			packageParams.put("trade_type", WxPayConfig.TRADETYPE);//支付方式
			packageParams.put("openid", openid);
			   
	        String prestr = PayUtil.createLinkString(packageParams); // 把数组所有元素，按照“参数=参数值”的模式用“&”字符拼接成字符串 
	        
	        //MD5运算生成签名，用于统一下单接口
	        String mysign = PayUtil.sign(prestr, WxPayConfig.key, "utf-8").toUpperCase();
	        String out_trade_no = "123456";
	        String total_fee = "100";
	        //拼接统一下单接口使用的xml数据，要将上一步生成的签名一起拼接进去
	        String xml = "<xml>" + "<appid>" + WxPayConfig.appid + "</appid>" 
                    + "<body><![CDATA[" + body + "]]></body>" 
                    + "<mch_id>" + WxPayConfig.mch_id + "</mch_id>" 
                    + "<nonce_str>" + nonce_str + "</nonce_str>" 
                    + "<notify_url>" + WxPayConfig.notify_url + "</notify_url>" 
                    + "<openid>" + openid + "</openid>" 
                    + "<out_trade_no>" + out_trade_no + "</out_trade_no>" 
                    + "<spbill_create_ip>" + spbill_create_ip + "</spbill_create_ip>" 
                    + "<total_fee>" + total_fee + "</total_fee>"
                    + "<trade_type>" + WxPayConfig.TRADETYPE + "</trade_type>" 
                    + "<sign>" + mysign + "</sign>"
                    + "</xml>";
	        
	        //调用统一下单接口，并接受返回的结果
	        String result = PayUtil.httpRequest(WxPayConfig.pay_url, "POST", xml);
	        
	        //将微信服务器返回的结果解析后存储在Map对象中   
	        Map<String,String> map = PayUtil.parseXml2Map(result);
	        //返回状态码来判断统一下单接口是否调用成功
	        String return_code = map.get("return_code");
	        //返回给小程序端需要的参数
		    Map<String, Object> param = new HashMap<String, Object>();
	        if(return_code=="SUCCESS"||return_code.equals(return_code)){
	        	//预付单信息
	            String prepay_id = (String) map.get("prepay_id");
	            param.put("nonceStr", nonce_str);
	            param.put("package", "prepay_id=" + prepay_id);
	            //生成签名的时候需要时间戳
	            Long timeStamp = System.currentTimeMillis() / 1000;   
	            param.put("timeStamp", System.currentTimeMillis() / 1000 + "");
	            //拼接签名需要的参数
	            String stringSignTemp = "appId=" + WxPayConfig.appid + "&nonceStr=" + nonce_str + "&package=prepay_id=" + prepay_id+ "&signType=MD5&timeStamp=" + timeStamp;   
	            //生成签名信息
	            String paySign = PayUtil.sign(stringSignTemp, WxPayConfig.key, "utf-8").toUpperCase();
	            param.put("paySign", paySign);
	        }
	        param.put("appid", WxPayConfig.appid);
			PrintWriter out = response.getWriter();
			String json = JSON.toJSONString(param);
			out.write(json);//返回给微信小程序
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
}
