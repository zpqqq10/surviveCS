package com.xiaogang.wxpay;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.xiaogang.app.util.HttpUtil;

/**
 * 微信登录验证
 * @author kevin
 *
 */
public class WxLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public WxLoginServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * 根据用户登录凭证code来获取唯一标识openid和会话密钥session_key
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String code = request.getParameter("code");
	    if (code != null && !"".equals(code)) {  
	    	code = "081qWBKh0ndG7y1q5sMh0eaTKh0qWBKd";
		     Map<String, Object> ret = new HashMap<String, Object>();  
		     
		     Map<String,String> param = new HashMap<String,String>();
		     param.put("grant_type", WxPayConfig.grant_type);
		     param.put("appid", WxPayConfig.appid);
		     param.put("secret", WxPayConfig.app_secret);
		     param.put("js_code", code);
		    
		     //调用获取access_token接口 
		     String result = HttpUtil.post(WxPayConfig.access_token_url,param);
		     //返回正确值：{"session_key":"mg0QgRK+BYcg4lIf0sRaxQ==","expires_in":7200,"openid":"oXSIY0cGF7-8JaJIdPgllCB-BGGo"}
		     //返回错误值：{"errcode":40163,"errmsg":"code been used, hints: [ req_id: KV5qfa0875th31 ]"}
		     System.out.println(result);
		     //根据请求结果判定，是否验证成功  
		     JSONObject obj = JSONObject.fromObject(result);
		     if(obj != null){
		    	 Object errCode = obj.get("errcode");
		    	 if(errCode == null){
		    		 Object session_key = obj.get("session_key");
		    		 Object openid = obj.get("openid");
		    		 //会话密钥session_key放入内存中
		    		 request.getSession().setAttribute("session_key", session_key);
		    		 //唯一标识openid放入内存中
		    		 request.getSession().setAttribute("openid", openid);
		    		 PrintWriter out = response.getWriter();
		    		 out.write(openid.toString());//将唯一标识回传给微信小程序客户端
		    	 }
		     } 
		 }  
	}

}
