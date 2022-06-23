package com.xiaogang.app.util;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SignatureException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.DigestUtils;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import com.caucho.xml.SAXBuilder;

public class PayUtil {
	 /**  
     * 签名字符串  
     * @param text需要签名的字符串  
     * @param key 密钥  
     * @param input_charset编码格式  
     * @return 签名结果  
     */   
    public static String sign(String text, String key, String input_charset) {   
        text = text + "&key=" + key;   
        return DigestUtils.md5Hex(getContentBytes(text, input_charset));   
    }   
    /**  
     * 签名字符串  
     *  @param text需要签名的字符串  
     * @param sign 签名结果  
     * @param key密钥  
     * @param input_charset 编码格式  
     * @return 签名结果  
     */   
    public static boolean verify(String text, String sign, String key, String input_charset) {   
        text = text + key;   
        String mysign = DigestUtils.md5Hex(getContentBytes(text, input_charset));   
        if (mysign.equals(sign)) {   
            return true;   
        } else {   
            return false;   
        }   
    }   
    /**  
     * @param content  
     * @param charset  
     * @return  
     * @throws SignatureException  
     * @throws UnsupportedEncodingException  
     */   
    public static byte[] getContentBytes(String content, String charset) {   
        if (charset == null || "".equals(charset)) {   
            return content.getBytes();   
        }   
        try {   
            return content.getBytes(charset);   
        } catch (UnsupportedEncodingException e) {   
            throw new RuntimeException("MD5签名过程中出现错误,指定的编码集不对,您目前指定的编码集是:" + charset);   
        }   
    }   
    
    private static boolean isValidChar(char ch) {   
        if ((ch >= '0' && ch <= '9') || (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z'))   
            return true;   
        if ((ch >= 0x4e00 && ch <= 0x7fff) || (ch >= 0x8000 && ch <= 0x952f))   
            return true;// 简体中文汉字编码   
        return false;   
    }   
    /**  
     * 除去数组中的空值和签名参数  
     * @param sArray 签名参数组  
     * @return 去掉空值与签名参数后的新签名参数组  
     */   
    public static Map<String, String> paraFilter(Map<String, String> sArray) {   
        Map<String, String> result = new HashMap<String, String>();   
        if (sArray == null || sArray.size() <= 0) {   
            return result;   
        }   
        for (String key : sArray.keySet()) {   
            String value = sArray.get(key);   
            if (value == null || value.equals("") || key.equalsIgnoreCase("sign")   
                    || key.equalsIgnoreCase("sign_type")) {   
                continue;   
            }   
            result.put(key, value);   
        }   
        return result;   
    }   
    /**  
     * 把数组所有元素排序，并按照“参数=参数值”的模式用“&”字符拼接成字符串  
     * @param params 需要排序并参与字符拼接的参数组  
     * @return 拼接后字符串  
     */   
    public static String createLinkString(Map<String, String> params) {   
        List<String> keys = new ArrayList<String>(params.keySet());   
        Collections.sort(keys);   
        String prestr = "";   
        for (int i = 0; i < keys.size(); i++) {   
            String key = keys.get(i);   
            String value = params.get(key);   
            if (i == keys.size() - 1) {// 拼接时，不包括最后一个&字符   
                prestr = prestr + key + "=" + value;   
            } else {   
                prestr = prestr + key + "=" + value + "&";   
            }   
        }   
        return prestr;   
    }   
    /**  
     *  
     * @param requestUrl请求地址  
     * @param requestMethod请求方法  
     * @param outputStr参数  
     */   
    public static String httpRequest(String requestUrl,String requestMethod,String outputStr){   
        // 创建SSLContext   
        StringBuffer buffer = null;   
        try{   
	        URL url = new URL(requestUrl);   
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();   
	        conn.setRequestMethod(requestMethod);   
	        conn.setDoOutput(true);   
	        conn.setDoInput(true);   
	        conn.connect();   
	        //往服务器端写内容   
	        if(null !=outputStr){   
	            OutputStream os=conn.getOutputStream();   
	            os.write(outputStr.getBytes("utf-8"));   
	            os.close();   
	        }   
	        // 读取服务器端返回的内容   
	        InputStream is = conn.getInputStream();   
	        InputStreamReader isr = new InputStreamReader(is, "utf-8");   
	        BufferedReader br = new BufferedReader(isr);   
	        buffer = new StringBuffer();   
	        String line = null;   
	        while ((line = br.readLine()) != null) {   
	        	buffer.append(line);   
	        }   
	        br.close();
        }catch(Exception e){   
            e.printStackTrace();   
        }
        return buffer.toString();
    }     
    public static String urlEncodeUTF8(String source){   
        String result=source;   
        try {   
            result=java.net.URLEncoder.encode(source, "UTF-8");   
        } catch (UnsupportedEncodingException e) {   
            // TODO Auto-generated catch block   
            e.printStackTrace();   
        }   
        return result;   
    } 
	
	public static InputStream String2Inputstream(String str) {
		return new ByteArrayInputStream(str.getBytes());
	}
	
	//生成指定长度的随机字符串
	public static String getRandomString(int length){
	    //定义一个字符串（A-Z，a-z，0-9）即62位；
	    String str="zxcvbnmlkjhgfdsaqwertyuiopQWERTYUIOPASDFGHJKLZXCVBNM1234567890";
	    //由Random生成随机数
	    Random random=new Random();  
	    StringBuffer sb=new StringBuffer();
	    //长度为几就循环几次
	    for(int i=0; i<length; ++i){
	       //产生0-61的数字
	       int number=random.nextInt(62);
	       //将产生的数字通过length次承载到sb中
	       sb.append(str.charAt(number));
	    }
	    //将承载的字符转换成字符串
	    return sb.toString();
	}
	 
	 
	//获取真实的ip地址
	public static String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("X-Forwarded-For");
	    if(ip != null && !"".equals(ip)  && !"unKnown".equalsIgnoreCase(ip)){
	    	int index = ip.indexOf(",");
	        if(index != -1){
	            return ip.substring(0,index);
	        }else{
	            return ip;
	        }
	    }
	    ip = request.getHeader("X-Real-IP");
	    if(ip != null && !"".equals(ip) && !"unKnown".equalsIgnoreCase(ip)){
	       return ip;
	    }
	    return request.getRemoteAddr();
	}
	
	
	/**
	 * 将xml字符串解析成map
	 * @param xml
	 * @return
	 */
	public static Map<String,String> parseXml2Map(String xml) {
        Map<String, String> map = new HashMap<String, String>();
        try {
            Document doc = DocumentHelper.parseText(xml);//将xml转为dom对象
            Element root = doc.getRootElement();//获取根节点
            Element element = root.element("xml");//获取名称为queryRequest的子节点
            List<Element> elements = element.elements();//获取这个子节点里面的所有子元素，也可以element.elements("userList")指定获取子元素
             for (Object obj : elements) {  //遍历子元素
                  element = (Element) obj;  
                  map.put(element.getName(), element.getTextTrim());
                  System.out.println(element.getName()+"--"+element.getTextTrim());
             } 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}