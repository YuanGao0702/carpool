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
     	<form action="register.action" method="post">
	    	<table>
	    		<tr>
					<td>First Name:</td>
					<td><input type="text" name="firstname"/></td>
					<td>Mid Name:</td>
					<td><input type="text" name="midname"/></td>
					<td>Last Name:</td>
					<td><input type="text" name="lastname"/></td>
				</tr>
	    		<tr>
					<td>Email:</td>
					<td><input type="text" name="email"/></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="text" name="username"/></td>
				</tr>
		    	<tr>
					<td>User Gender:</td>
					<td><input type="radio" name="userGender" value="male"/>Male</td>
					<td><input type="radio" name="userGender" value="female"/>Female</td>
				</tr>
				<tr>
					<td>Phone:</td>
					<td><input type="text" name="phone"/></td>
				</tr>
	    	</table>
	    	<input type="submit" class="btn btn-primary" value="Submit"/>
    	</form>
    </div>
  </body>
</html>
