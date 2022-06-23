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
 * ΢�ŵ�¼��֤
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
	 * �����û���¼ƾ֤code����ȡΨһ��ʶopenid�ͻỰ��Կsession_key
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
		    
		     //���û�ȡaccess_token�ӿ� 
		     String result = HttpUtil.post(WxPayConfig.access_token_url,param);
		     //������ȷֵ��{"session_key":"mg0QgRK+BYcg4lIf0sRaxQ==","expires_in":7200,"openid":"oXSIY0cGF7-8JaJIdPgllCB-BGGo"}
		     //���ش���ֵ��{"errcode":40163,"errmsg":"code been used, hints: [ req_id: KV5qfa0875th31 ]"}
		     System.out.println(result);
		     //�����������ж����Ƿ���֤�ɹ�  
		     JSONObject obj = JSONObject.fromObject(result);
		     if(obj != null){
		    	 Object errCode = obj.get("errcode");
		    	 if(errCode == null){
		    		 Object session_key = obj.get("session_key");
		    		 Object openid = obj.get("openid");
		    		 //�Ự��Կsession_key�����ڴ���
		    		 request.getSession().setAttribute("session_key", session_key);
		    		 //Ψһ��ʶopenid�����ڴ���
		    		 request.getSession().setAttribute("openid", openid);
		    		 PrintWriter out = response.getWriter();
		    		 out.write(openid.toString());//��Ψһ��ʶ�ش���΢��С����ͻ���
		    	 }
		     } 
		 }  
	}

}
