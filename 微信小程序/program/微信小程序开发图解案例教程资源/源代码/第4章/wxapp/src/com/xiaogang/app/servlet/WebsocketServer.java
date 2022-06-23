package com.xiaogang.app.servlet;

import java.io.IOException;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.RemoteEndpoint;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;



@ServerEndpoint("/getServer")
public class WebsocketServer{
	
	@OnOpen
	public void onOpen(Session session) {
		    System.out.println("sessionId="+session.getId());
		    final RemoteEndpoint.Basic basic =  session.getBasicRemote();  		  
	    	try {
				basic.sendText("�Ự�����ɹ�������");
			} catch (IOException e) {
				e.printStackTrace();
			}
	    	Thread t1=new Thread(new Runnable() {
				
				@Override
				public void run() {
					try {
						Thread.currentThread();
						Thread.sleep(8000);
						basic.sendText("server get you a msg: what your name?");
					} catch (InterruptedException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			});
	    	t1.start();
	}	
	/**
	 * �յ��ͻ�����Ϣʱ����
	 * @param relationId
	 * @param userCode
	 * @param message
	 * @return
	*/
	@OnMessage
	 public String onMessage(Session session,String message) {
		 System.out.println("pathParams:"+session.getPathParameters());  
         System.out.println("requestParams"+session.getRequestParameterMap());  
		return	"Got you msg !"+message;
	}

	/**
	 * �쳣ʱ����
	 * @param relationId
	 * @param userCode
	 * @param session
	*/
	@OnError
	 public void onError(Throwable throwable,Session session) {
		 System.out.println("pathParams:"+session.getPathParameters());  
	     System.out.println("requestParams"+session.getRequestParameterMap());  
	     System.out.print("onError"+throwable.toString());
	}

	/**
	 * �ر�����ʱ����
	 * @param relationId
	 * @param userCode
	 * @param session
	*/
	@OnClose
	 public void onClose(Session session) {
		 System.out.println("pathParams:"+session.getPathParameters());  
	        System.out.println("requestParams"+session.getRequestParameterMap());  
		 System.out.print("onClose ");
	}		
}
