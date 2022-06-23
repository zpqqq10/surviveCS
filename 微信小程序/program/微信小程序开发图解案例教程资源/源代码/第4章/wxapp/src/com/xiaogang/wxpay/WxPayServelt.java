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
 * ����΢��֧��
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
			//����32λ���ȵ�����ַ���
			String nonce_str = PayUtil.getRandomString(32);
			//��Ʒ����
			String body = "��Ʒ����";
			//�ỰΨһ��ʶ
			String openid = request.getParameter("openid");
			String spbill_create_ip = PayUtil.getIpAddr(request);
			//��װ�������û�����ͳһ�µ��ӿڵ�ǩ��
			Map<String, String> packageParams = new HashMap<String, String>();
			packageParams.put("appid", WxPayConfig.appid);
			packageParams.put("mch_id", WxPayConfig.mch_id);
			packageParams.put("nonce_str", nonce_str);
			packageParams.put("body", body);
			packageParams.put("out_trade_no", "123456789");//�̻�������
			packageParams.put("total_fee", "1");//֧���������Ҫת���ַ������ͣ���������ǩ����ʧ��
			packageParams.put("spbill_create_ip", spbill_create_ip);
			packageParams.put("notify_url", WxPayConfig.notify_url);//֧���ɹ���Ļص���ַ
			packageParams.put("trade_type", WxPayConfig.TRADETYPE);//֧����ʽ
			packageParams.put("openid", openid);
			   
	        String prestr = PayUtil.createLinkString(packageParams); // ����������Ԫ�أ����ա�����=����ֵ����ģʽ�á�&���ַ�ƴ�ӳ��ַ��� 
	        
	        //MD5��������ǩ��������ͳһ�µ��ӿ�
	        String mysign = PayUtil.sign(prestr, WxPayConfig.key, "utf-8").toUpperCase();
	        String out_trade_no = "123456";
	        String total_fee = "100";
	        //ƴ��ͳһ�µ��ӿ�ʹ�õ�xml���ݣ�Ҫ����һ�����ɵ�ǩ��һ��ƴ�ӽ�ȥ
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
	        
	        //����ͳһ�µ��ӿڣ������ܷ��صĽ��
	        String result = PayUtil.httpRequest(WxPayConfig.pay_url, "POST", xml);
	        
	        //��΢�ŷ��������صĽ��������洢��Map������   
	        Map<String,String> map = PayUtil.parseXml2Map(result);
	        //����״̬�����ж�ͳһ�µ��ӿ��Ƿ���óɹ�
	        String return_code = map.get("return_code");
	        //���ظ�С�������Ҫ�Ĳ���
		    Map<String, Object> param = new HashMap<String, Object>();
	        if(return_code=="SUCCESS"||return_code.equals(return_code)){
	        	//Ԥ������Ϣ
	            String prepay_id = (String) map.get("prepay_id");
	            param.put("nonceStr", nonce_str);
	            param.put("package", "prepay_id=" + prepay_id);
	            //����ǩ����ʱ����Ҫʱ���
	            Long timeStamp = System.currentTimeMillis() / 1000;   
	            param.put("timeStamp", System.currentTimeMillis() / 1000 + "");
	            //ƴ��ǩ����Ҫ�Ĳ���
	            String stringSignTemp = "appId=" + WxPayConfig.appid + "&nonceStr=" + nonce_str + "&package=prepay_id=" + prepay_id+ "&signType=MD5&timeStamp=" + timeStamp;   
	            //����ǩ����Ϣ
	            String paySign = PayUtil.sign(stringSignTemp, WxPayConfig.key, "utf-8").toUpperCase();
	            param.put("paySign", paySign);
	        }
	        param.put("appid", WxPayConfig.appid);
			PrintWriter out = response.getWriter();
			String json = JSON.toJSONString(param);
			out.write(json);//���ظ�΢��С����
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
}
