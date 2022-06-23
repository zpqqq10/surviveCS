package com.xiaogang.wxpay;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xiaogang.app.util.PayUtil;

/**
 * 微信服务器回调
 * @author xiaogang 
 *
 */
public class WxNotifyServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public WxNotifyServelt() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader((ServletInputStream)request.getInputStream()));
        String line = null;
        StringBuilder sb = new StringBuilder();
        while((line = br.readLine()) != null){
            sb.append(line);
        }
        br.close();
        //微信服务器支付成功后异步调用方式返回值
		String notityXml = sb.toString();
		String result = "fail";
		Map<String,String> map = PayUtil.parseXml2Map(notityXml);
		String returnCode = map.get("return_code");
		if("SUCCESS".equals(returnCode)){
			result = "success";
		}
		System.out.println("微信小程序支付状态："+result);
	}

}
