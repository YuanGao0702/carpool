<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<%@ include file = "header.jsp" %>
	
	<!-- Global CSS -->
	<link href="<%=path%>/css/global.css" rel="stylesheet">

  </head>
  
  <body>
  <%@ include file = "nav.jsp" %>
  <form class="form-horizontal" role="form" action="login.action">
    <div class="page">
       	<label for="session_email">Email</label>
		<div class="input-group">
		    <span class="input-group-addon">
		        <i class="fa fa-envelope-o"></i>
		    </span>
		    <input type="text" name="email"/>
		</div>
    
	    <label for="session_password">Password</label>
		<div class="input-group">
			<span class="input-group-addon">
		    	<i class="fa fa-key"></i>
		    </span>
			<input type="password" name="password"/>
		</div>
		<button type="submit" class="btn btn-default">Login</button> 	
   </div>   
   </form>    
  </body>
</html>
