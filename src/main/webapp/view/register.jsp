<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Register</title>
    
	<%@ include file = "header.jsp" %>
	
	<!-- Global CSS -->
	<link href="<%=path%>/css/global.css" rel="stylesheet">	

  </head>
  
  <body>
  <%@ include file = "nav.jsp" %>
    <div class="page">
    </div>
  </body>
</html>
