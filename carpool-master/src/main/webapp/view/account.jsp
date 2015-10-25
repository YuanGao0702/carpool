<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Account</title>
    
	<%@ include file = "header.jsp" %>
	
	<!-- Global CSS -->
	<link href="<%=path%>/css/global.css" rel="stylesheet">

  </head>
  
  <body>
  <%@ include file = "nav.jsp" %>
   <div class="page">
   	<div class="account">
    	<div class="container">
			<div class="row">
  				<div class="col-md-12 complete-room">
					<h3 class="col-md-12"><a href="<%=path%>/view/rating.jsp">Room1</a></h3>
					<div class="col-md-10 room_information">							
						<table style="width:100%">					
							<tr>
								<td>Location:</td>
								<td>GWU</td>		
								<td>Estimate Price:</td>
								<td>$15/person</td>
							</tr>
							<tr>
								<td>Date:</td>
								<td>11/11/2015</td>		
								<td>Total People:</td>
								<td>4/5</td>
							</tr>						  
						</table>												
					</div>									
				</div>
				<div class="col-md-12 preparing-room">
					<h3 class="col-md-12"><a href="<%=path%>/view/rating.jsp">Room2</a></h3>
					<div class="col-md-10 room_information">							
						<table style="width:100%">					
							<tr>
								<td>Location:</td>
								<td>GWU</td>		
								<td>Estimate Price:</td>
								<td>$15/person</td>
							</tr>
							<tr>
								<td>Date:</td>
								<td>11/11/2015</td>		
								<td>Total People:</td>
								<td>4/5</td>
							</tr>						  
						</table>												
					</div>									
				</div>
				<div class="col-md-12 declined-room">
					<h3 class="col-md-12"><a href="<%=path%>/view/rating.jsp">Room3</a></h3>
					<div class="col-md-10 room_information">							
						<table style="width:100%">					
							<tr>
								<td>Location:</td>
								<td>GWU</td>		
								<td>Estimate Price:</td>
								<td>$15/person</td>
							</tr>
							<tr>
								<td>Date:</td>
								<td>11/11/2015</td>		
								<td>Total People:</td>
								<td>4/5</td>
							</tr>						  
						</table>												
					</div>									
				</div>
				<div class="col-md-12 launched-room">
					<h3 class="col-md-12"><a href="<%=path%>/view/rating.jsp">Room4</a></h3>
					<div class="col-md-10 room_information">							
						<table style="width:100%">					
							<tr>
								<td>Location:</td>
								<td>GWU</td>		
								<td>Estimate Price:</td>
								<td>$15/person</td>
							</tr>
							<tr>
								<td>Date:</td>
								<td>11/11/2015</td>		
								<td>Total People:</td>
								<td>4/5</td>
							</tr>						  
						</table>												
					</div>									
				</div>	
			</div>
		</div>	
	</div>
	</div>																					
  </body>
</html>
