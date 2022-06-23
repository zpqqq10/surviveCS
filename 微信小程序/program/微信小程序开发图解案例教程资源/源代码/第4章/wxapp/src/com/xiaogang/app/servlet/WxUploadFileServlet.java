package com.xiaogang.app.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * 
 * @ClassName: WxUploadFileServlet 
 * @Description: 用于接收微信小程序上传的图片
 * @author LG 
 * @date 2016年12月5日 下午1:30:14 
 *
 */
public class WxUploadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public WxUploadFileServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DiskFileItemFactory factory = new DiskFileItemFactory(); 
			ServletFileUpload upload = new ServletFileUpload(factory); 
			upload.setHeaderEncoding("UTF-8");
			List items = upload.parseRequest(request);
			Map param = new HashMap(); 
			for(Object object:items){
			    FileItem fileItem = (FileItem) object; 
			    if (fileItem.isFormField()) { 
			        param.put(fileItem.getFieldName(), fileItem.getString("utf-8"));//如果你页面编码是utf-8的 
			    }else{
			    	if("file".equals(fileItem.getFieldName())){
			    		String fileName = fileItem.getName();
				    	InputStream is = fileItem.getInputStream();
				    	//创建img文件夹
				    	new File("E:/img/").mkdir();
				    	File file = new File("E:/img/",fileName);
				    	file.createNewFile();
				    	
				    	FileOutputStream fos = new FileOutputStream(file);
				    	byte[] b = new byte[1024];
				    	while((is.read(b)) != -1){
				    	   fos.write(b);
				    	}
				    	is.close();
				    	fos.close();
			    	}
			    }
			}
			System.out.println(param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
