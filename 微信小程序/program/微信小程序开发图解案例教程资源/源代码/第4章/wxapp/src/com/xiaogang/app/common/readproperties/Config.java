package com.xiaogang.app.common.readproperties;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.ResourceBundle;
import java.util.Set;

import org.apache.commons.lang.StringUtils;

/**
 * @ClassName: Config 
 * @Description: 读取配置文件
 * @author LG 
 * @date 2016年8月8日 上午9:33:22 
 *
 */
public class Config {

	private static HashMap<String,String> VALUES = new HashMap<String,String>();
	
	private static List<String> INIT_RESNAME = new ArrayList<String>();
	//配置文件名称
	private static String resourceName = "application";
	private static ResourceBundle resource = null;
	private static Config instance = null;
	
	/**
	 * @Title: getInstance 
	 * @Description: 加载.properties资源文件
	 * @param      
	 * @return Config 
	 * @throws
	 */
	public static Config getInstance(String fileName){
		try{
			resourceName = fileName;
			if((!INIT_RESNAME.contains(fileName)) && ((resource==null) || (!resourceName.equals(fileName))) ){
				Locale locale = Locale.getDefault();
				resource = ResourceBundle.getBundle(fileName, locale);
			}
			
			if(instance==null){
				instance = new Config();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return instance;
	}
	
	/**
	 * @Title: getAttribute 
	 * @Description: 根据key值获取value值 
	 * @param      
	 * @return String 
	 * @throws
	 */
	public static String getAttribute(String key){
		 String rkey = "application_" + key;
		 String value = (String)VALUES.get(rkey);
		 
		 if(StringUtils.isBlank(value)){
			 if ((resource == null) || (!resourceName.equals("application"))) {
		          resourceName = "application";
		          resource = ResourceBundle.getBundle(resourceName);
		     }
			 value = resource.getString(key);
		     VALUES.put(rkey, value);
		 }
		 return value;
	}
	
	 public String getValue(String key)
	  {
	    String rkey = resourceName + "_" + key;
	    String value = (String)VALUES.get(rkey);
	    if (StringUtils.isBlank(value)) {
	      value = resource.getString(key);
	      VALUES.put(rkey, value);
	    }
	    return value;
	  }
	
	public static void initConfig(String fileName) {
		INIT_RESNAME.add(fileName);
		resource = ResourceBundle.getBundle(fileName);
		Set keys = resource.keySet();
		if ((keys == null) || (keys.isEmpty()))
			return;
		for (Iterator iterator = keys.iterator(); iterator.hasNext();) {
			String key = (String) iterator.next();
			VALUES.put(fileName + "_" + key, resource.getString(key));
		}
	}
	
	
}
