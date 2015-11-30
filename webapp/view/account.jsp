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
					
					<div id="uncomplete-event" class="col-md-6 uncomplete-event">
						<div id="launched-event" class="col-md-12 launched-event">
							<h3 class="col-md-12"><a href="<%=path%>/view/launched_event.jsp">launched event</a></h3>
							<div class="col-md-12 event_information">							
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
						</div><!-- launched-event -->
						<div id="pending-event" class="col-md-12 pending-event">
							<h3 class="col-md-12"><a href="<%=path%>/view/pending_event.jsp">pending event</a></h3>
							<div class="col-md-12 event_information">							
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
											
					</div><!-- uncomplete-event -->
					
					<div id="completed-event" class="col-md-6">
		  				<div class="col-md-12 completed-event">
							<h3 class="col-md-12"><a href="<%=path%>/view/rating_event.jsp">rating event</a></h3>
							<div class="col-md-12 event_information">							
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
					
				</div><!-- row -->	
			</div>
		</div>
	</div>
	
	<!-- <script type="text/javascript">
	  	$(document).ready(function (){
	  		var launchedListJson = ${launchedListJson};
	  		var pendingListJson = ${pendingListJson};
	  		var completedListJson = ${completedListJson};
	  		
	  		for (var i = launchedListJson.length - 1; i >= 0; i--) { 	 	
	  		 	document.getElementById("launched-event").innerHTML +=
	  		 	"<h3 class='col-md-12'><a href='../view/launched_eventt.jsp'>launched event</a></h3>"
				+"	<div class='col-md-12 event_information'>"						
				+"		<table style='width:100%'>"
				+"			<tr>"
				+"				<td>Location:</td>"
				+"				<td>GWU</td>"		
				+"				<td>Estimate Price:</td>"
				+"				<td>$15/person</td>"
				+"			</tr>"
				+"			<tr>"
				+"				<td>Date:</td>"
				+"				<td>11/11/2015</td>"		
				+"				<td>Total People:</td>"
				+"				<td>4/5</td>"
				+"			</tr>"						  
				+"		</table>"												
				+"	</div>";	
			}
			
			
			
			for (var i = pendingListJson.length - 1; i >= 0; i--) { 	 	
	  		 	document.getElementById("pending-event").innerHTML +=
	  		 	"<h3 class='col-md-12'><a href='../view/pending_eventt.jsp'>pending event</a></h3>"
				+"	<div class='col-md-12 event_information'>"						
				+"		<table style='width:100%'>"
				+"			<tr>"
				+"				<td>Location:</td>"
				+"				<td>GWU</td>"		
				+"				<td>Estimate Price:</td>"
				+"				<td>$15/person</td>"
				+"			</tr>"
				+"			<tr>"
				+"				<td>Date:</td>"
				+"				<td>11/11/2015</td>"		
				+"				<td>Total People:</td>"
				+"				<td>4/5</td>"
				+"			</tr>"						  
				+"		</table>"												
				+"	</div>";	
			}
			
			for (var i = completedListJson.length - 1; i >= 0; i--) { 	 	
	  		 	document.getElementById("completed-event").innerHTML +=
	  		 	"<h3 class='col-md-12'><a href='../view/rating_event.jsp'>rating event</a></h3>"
				+"	<div class='col-md-12 event_information'>"						
				+"		<table style='width:100%'>"
				+"			<tr>"
				+"				<td>Location:</td>"
				+"				<td>GWU</td>"		
				+"				<td>Estimate Price:</td>"
				+"				<td>$15/person</td>"
				+"			</tr>"
				+"			<tr>"
				+"				<td>Date:</td>"
				+"				<td>11/11/2015</td>"		
				+"				<td>Total People:</td>"
				+"				<td>4/5</td>"
				+"			</tr>"						  
				+"		</table>"												
				+"	</div>";	
			}
		});   
    </script>	 -->																				
  </body>
</html>
