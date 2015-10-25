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
  				<div class="col-md-12 complete-event">
					<h3 class="col-md-12"><a href="<%=path%>/view/rating.jsp">event1</a></h3>
					<div class="col-md-10 event_information">							
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
				<div class="col-md-12 preparing-event">
					<h3 class="col-md-12"><a href="<%=path%>/view/rating.jsp">event2</a></h3>
					<div class="col-md-10 event_information">							
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
				<div class="col-md-12 declined-event">
					<h3 class="col-md-12"><a href="<%=path%>/view/rating.jsp">event3</a></h3>
					<div class="col-md-10 event_information">							
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
				<div class="col-md-12 launched-event">
					<h3 class="col-md-12"><a href="<%=path%>/view/rating.jsp">event4</a></h3>
					<div class="col-md-10 event_information">							
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
