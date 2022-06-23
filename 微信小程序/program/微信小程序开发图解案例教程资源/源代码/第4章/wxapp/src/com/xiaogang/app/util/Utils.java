package com.xiaogang.app.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Utils {
	private static Properties properties = new Properties();
	public static final String PATTERN_FULL_NUMBER = "^\\d+$";
	public static Map<String, List<String>> loginNameMaps = new HashMap<String, List<String>>();
	/**
	 * 将String类型转换成int�?

	 * @param String sourceString
	 * @return int 转换后的int�?

	 */
	public static int toNumber(String sourceString) {
		return toNumber(sourceString, 0);
	}
	/**
	 * @reload
	 * 将String类型转换成int型数�?

	 * @param String sourceString
	 * @param int defaultValue
	 * @return int 转换后的int�?

	 */
	public static int toNumber(String sourceString, int defaultValue) {
		return isDigitalNumber(sourceString)
				&& Long.parseLong(sourceString) <= Integer.MAX_VALUE ? Integer
				.parseInt(sourceString) : defaultValue;
	}

	/**
	 * 判断是否为数�?

	 * @param String sourceString
	 * @return boolean
	 */
	public static boolean isDigitalNumber(String sourceString) {
		return sourceString != null
				&& sourceString.matches(PATTERN_FULL_NUMBER);
	}
	/**
	 * 将String类型转换成long�?

	 * @param String sourceString
	 * @return long 转换后的long�?

	 */
	public static long toLongNumber(String sourceString) {
		return toLongNumber(sourceString, 0);
	}
	public static boolean isEmpty(String str){
		return str == null || str.trim().length() <= 0;
	}
	
	public static boolean isEmptyByte(byte[] byteStr){
		if(byteStr == null){
			return true;
		}
		String str = new String(byteStr);
		return str == null || str.trim().length() <= 0;
	}
	public static boolean isNotEmpty(String str){
		return !isEmpty(str);
	}

	/**
	 * @reload
	 * 将String类型转换成long型数�?

	 * @param String sourceString
	 * @param long defaultValue
	 * @return long 转换后的long�?

	 */
	public static long toLongNumber(String sourceString, long defaultValue) {
		return isDigitalNumber(sourceString) ? Long.parseLong(sourceString)
				: defaultValue;
	}
	public static boolean loadProperties(String fileName){
        try {
            properties.load(new FileInputStream(fileName));
        } catch (IOException e) {
            return false;
        }
        return true;
    }
	public static boolean loadProperties(InputStream is){
        try {
            properties.load(is);
        } catch (IOException e) {
            return false;
        } finally{
        	try {
        		if(is != null)
        			is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
        return true;
    }
	public static String getProperty(String key){
        return properties.getProperty(key);
    }

	public static String getProperty(String key, String defaultValue){
        return properties.getProperty(key, defaultValue);
    }
	public static Properties getProperties(){
        return properties;
    }
	public static void setProperty(String key, String value) {
		properties.setProperty(key, value);
	}
	
	//去掉html元素
	public static String removeAllHtmlElement(String input) {   
        if (input == null || input.trim().equals("")) {   
            return "";   
        }   
        // 去掉�?��html元素 
        String str = input.replaceAll("\\&[a-zA-Z]{1,10};", "").replaceAll("<[^>]*>", "");   
        str = str.replaceAll("[(/>)<]", ""); 
       
        return str;   
    } 
	public static String composeStringByDelimiter(List<String> strs, String delimiter) {
		StringBuilder str = new StringBuilder();
		if(strs == null || strs.size() <= 0) return str.toString();
		for(String filePath : strs){
			str.append(delimiter + filePath);
		}
		if(str.length() > 0) 
			return str.substring(1).toString();
		return str.toString();
	}
	
	public static String getWebAppRoot(){
		return System.getProperty("asopdc.root");
	}
	
	public static void setWebAppRoot(String path){
		System.setProperty("asopdc.root", path);
	}
	/**
	 * 删除目录下的�?��文件
	 * @param waitDoDir
	 */
	public static void deleteDirFile(File dir) {
		if(dir.isFile()){
			dir.delete();
			return;
		}
		if(dir.isDirectory()){
			File[] fileList = dir.listFiles();
			if(fileList == null || fileList.length == 0) {
				dir.delete();
				return;
			}
			for(File file : fileList){
				if(file.isDirectory()) {
					deleteDirFile(file);
				}
				file.delete();
			}
		}
	}
	
	
	public static String clearXSS(String value){
		if(Utils.isEmpty(value))
			return "";
		value= value.replaceAll("<", "& lt;").replaceAll(">", "& gt;");
	    value = value.replaceAll("\\(", "& #40;").replaceAll("\\)", "& #41;");
	    value = value.replaceAll("'", "& #39;");
	    value = value.replaceAll("eval\\((.*)\\)", "");
	    value = value.replaceAll("[\\\"\\\'][\\s]*javascript:(.*)[\\\"\\\']", "\"\"");
	    value = value.replaceAll("script", "");
	    if (value!=null) {
            Pattern p = Pattern.compile("\\s*|\t|\r|\n");
            Matcher m = p.matcher(value);
            value = m.replaceAll("");
        }
	    return value;
	}

	public static String getBASE64(String s) { 
	   if (s == null) return null; 
	   return (new sun.misc.BASE64Encoder()).encode( s.getBytes() ); 
	}
	public static void main(String[] args){
		String str = "houkangchao";
		System.out.println(getBASE64(str));
	}
}
