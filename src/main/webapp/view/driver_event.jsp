<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'driver_event.jsp' starting page</title>
    
    <!-- Global CSS -->
	<link href="<%=path%>/css/global.css" rel="stylesheet">
    
	<%@ include file = "header.jsp" %>

  </head>
  
  <body>
  <%@ include file = "nav.jsp" %>
    <div class="page">
    	<div class="container">
			<div class="row">
				<div class="col-md-7">
					<div class="col-md-12 event_information">
						<table style="width:100%">
						<caption>Go to class</caption>
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
						  <tr>
						    <td>Memo</td>
						    <td>memo...</td>								   
						  </tr>
						</table>
					</div>
					<div class="col-md-12 user current_user">
						<div class="col-md-3 profile_image">
						 <img alt="" src="<%=path%>/img/UserF.png">
						</div>
						<div class="col-md-6 user_information">							
							<h4>Sherry</h4>
							<p>Driver</p>													
							<p>From: Crystal City</p>
							<p>To: GWU</p>												
						</div>
						<div class="col-md-3 user_status">
							<button type="button" class="btn btn-success">Accept</button>
							<button type="button" class="btn btn-danger">Decline</button>				
						</div>					
					</div>
					<div class="col-md-12 user">
						<div class="col-md-3 profile_image">
						 <img alt="" src="<%=path%>/img/UserF.png">
						</div>
						<div class="col-md-6 user_information">							
							<h4>Luna</h4>
							<p>Rider</p>													
							<p>From: Crystal City</p>
							<p>To: GWU</p>												
						</div>
						<div class="col-md-3 user_status">
							<button type="button" class="btn btn-success">Accept</button>
							<button type="button" class="btn btn-danger">Decline</button>				
						</div>					
					</div>	
					<div class="col-md-12 user">
						<div class="col-md-3 profile_image">
						 <img alt="" src="<%=path%>/img/UserF.png">
						</div>
						<div class="col-md-6 user_information">							
							<h4>Tommy</h4>
							<p>Rider</p>													
							<p>From: Crystal City</p>
							<p>To: GWU</p>												
						</div>
						<div class="col-md-3 user_status">
							<button type="button" class="btn btn-success">Accept</button>
							<button type="button" class="btn btn-danger">Decline</button>				
						</div>					
					</div>	
					<div class="col-md-12">
						<button type="submit" class="btn btn-default"><a href="<%=path%>/view/launched_event.jsp">Launched Now!</a></button>
					</div>
							
				</div>
				<div class="col-md-5">
				</div>
			</div>
		</div>
    </div>
  </body>
</html>
