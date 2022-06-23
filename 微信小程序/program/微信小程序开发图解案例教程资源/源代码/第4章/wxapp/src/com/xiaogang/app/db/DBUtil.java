package com.xiaogang.app.db;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

/***
 * ���������ݿ������
 * 
 * @author xiaoliang
 * 
 */
public class DBUtil {

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//String url = "jdbc:mysql://localhost/visitingcardmanagesystem";
			//String user = "root";
			//String password = "123456";
			//conn = (Connection) DriverManager.getConnection(url, user, password);
			 conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/visitingcardmanagesystem?user=root&password=&useUnicode=true&characterEncoding=GBK");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * @Title: getConnByMysql 
	 * @Description: ����mysql���ݿ�����
	 * @param      
	 * @return Connection 
	 * @throws
	 */
	public static Connection getConnByMysql(String url,String user,String password){
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			url = "jdbc:mysql://"+url;
			conn = (Connection) DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * @Title: getConnByOracle 
	 * @Description: ����oracle���ݿ����� 
	 * @param      
	 * @return Connection 
	 * @throws
	 */
	public static Connection getConnByOracle(String url,String user,String password){
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = (Connection) DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	// ���뱻��������ô˷���������Ѹ÷���д�ɾ�̬�ġ������ķ�����
	public static void close(java.sql.Connection conn) {
		if (conn != null) {
			try {
				conn.close();
				conn = null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// Statement����PreparedStatement�Ļ��෽�����������رվͿ��Թص�PreparedStatement
	public static void close(Statement stmt) {
		if (stmt != null) {
			try {
				stmt.close();
				stmt = null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static void close(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
				rs = null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * @Title: getObjectByRef 
	 * @Description: ͨ��java������ƻ�ȡ����֧��String/Integer/Double/Date/Boolean���͵��ֶ�
	 * @param      
	 * @return Object 
	 * @throws
	 */
	public static Object getObjectByRef(Class clazz,ResultSet rs){  
         Object obj = null;
         try{
        	 Field[] fields =clazz.getDeclaredFields();
        	 obj = clazz.newInstance();
             for(Field field : fields){  
                 String setname = "set"+field.getName().substring(0, 1).toUpperCase()+field.getName().substring(1);
                 Method method = clazz.getMethod(setname, field.getType());
                 Class rsclazz = ResultSet.class;
                 String rsmname = "get"+field.getType().getSimpleName();
                 Method rsme = null;
                 if(field.getGenericType().toString().equals("class java.lang.String")){
                	 rsme = rsclazz.getMethod(rsmname, java.lang.String.class);
                 }else if(field.getGenericType().toString().equals("class java.lang.Integer")){
                	 rsme = rsclazz.getMethod(rsmname, java.lang.Integer.class);
                 }else if(field.getGenericType().toString().equals("class java.lang.Double")){
                	 rsme = rsclazz.getMethod(rsmname, java.lang.Double.class);
                 }else if(field.getGenericType().toString().equals("class java.lang.Boolean")){
                	 rsme = rsclazz.getMethod(rsmname, java.lang.Boolean.class);
                 }else if(field.getGenericType().toString().equals("class java.util.Date")){
                	 rsme = rsclazz.getMethod(rsmname, java.util.Date.class);
                 }
                 
                 method.invoke(obj, rsme.invoke(rs, field.getName()));
             } 
         }catch(Exception e){
        	 e.printStackTrace();
         }
         return obj;  
     } 
	
}
