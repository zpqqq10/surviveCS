package com.xiaogang.app.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * 用filter控制用户登录，防止不正常登录就可以进入
 * @author 
 *
 */
public class AuthFilter implements Filter {

	public void destroy() {

	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		  HttpServletRequest request = (HttpServletRequest)req;
		  HttpServletResponse response = (HttpServletResponse)resp;
		
		  String requestURI = request.getRequestURI().substring(request.getRequestURI().indexOf("/", 1), request.getRequestURI().length());
		  if(!"/login.jsp".equals(requestURI)){
			  HttpSession session = request.getSession(false);
			  //判断session进行登录
			  if(session == null || session.getAttribute("user") == null){
				  response.sendRedirect(request.getContextPath()+"/login.jsp");
				  return;
			  }
		  }
		//继续访问其他资源
		chain.doFilter(request,response);

	}

	public void init(FilterConfig arg0) throws ServletException {

	}


}
