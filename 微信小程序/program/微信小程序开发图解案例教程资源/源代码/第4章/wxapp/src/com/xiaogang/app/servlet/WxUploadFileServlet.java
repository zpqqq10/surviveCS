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
 * @Description: ���ڽ���΢��С�����ϴ���ͼƬ
 * @author LG 
 * @date 2016��12��5�� ����1:30:14 
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
			        param.put(fileItem.getFieldName(), fileItem.getString("utf-8"));//�����ҳ�������utf-8�� 
			    }else{
			    	if("file".equals(fileItem.getFieldName())){
			    		String fileName = fileItem.getName();
				    	InputStream is = fileItem.getInputStream();
				    	//����img�ļ���
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
