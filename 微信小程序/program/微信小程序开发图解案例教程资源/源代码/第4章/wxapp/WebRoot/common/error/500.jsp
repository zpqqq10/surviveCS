<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>500</title>
  </head>
  <body>
    <table width="600" height="200" border="0" align="center" cellpadding="0" cellspacing="0">
	  <tr>
	    <td background="<%=path %>/common/error/images/500.png"><table width="55%" border="0" align="right" cellpadding="0" cellspacing="0">
	      <tr>
	        <td style="font-size:20px; font-family:微软雅黑">对不起！查询数据失败。<br/>请您稍后重试或联系管理员！
	          </td>
	      </tr>
	    </table></td>
	  </tr>
	</table>
  </body>
</html>
