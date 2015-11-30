<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'results.jsp' starting page</title>
    
	<%@ include file = "header.jsp" %>
	
	<!-- Global CSS -->
	<link href="<%=path%>/css/global.css" rel="stylesheet">
	
	<!-- Custom CSS -->
	<link href="<%=path%>/css/results.css" rel="stylesheet">
	
	<!-- DateTimePicker -->		
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/a549aa8780dbda16f6cff545aeabc3d71073911e/build/css/bootstrap-datetimepicker.css">

  </head>
  
  <body>
  <%@ include file = "nav.jsp" %>
  <div class="page">
 	<div class="results">
   		<div class="container">
			<div class="row">
			
				<div class="col-md-7 results-information">
					<div class="col-md-12 searchbar">
				 		<form class="form-horizontal" role="form">
							<div class="form-group">
								<label class="control-label col-sm-2" for="location">Location:</label>
								<div class="col-sm-5"> 
								   <input type="start" class="form-control" id="start" placeholder="Enter start location">
								</div>
								<div class="col-sm-5"> 
								   <input type="end" class="form-control" id="end" placeholder="Enter end location">
								</div>
							</div>
						  
							<div class="form-group">
								<label class="control-label col-sm-2" for="location">Date:</label>
								<div class="col-sm-10">
									<div class="input-group date" id="datetimepicker">
							            <input id="inputtime" name ="inputtime" type="textbox" class="form-control" value=""/>	<span class="input-group-addon"><span class="glyphicon-calendar glyphicon"></span></span>
							        </div>		           
								</div>			 	
					        </div>
					    </form>
		        	</div>
		        	
					<div class="col-md-2">
						<div class="sidebar">
							<p>Search By:</p>
							<p>Location</p>
							<p>Price</p>
						</div>
					</div>
					<div class="col-md-10">					
						<div id="results" class="event">
							<h3 class="col-md-12"><a href="<%=path%>/view/pending_event.jsp">go to class</a></h3>
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
							<div class="col-md-2 event_join">
								<button type="button" class="btn btn-xs btn-success">Join</button>
								<!-- <button type="button" class="btn btn-xs btn-danger">Recall</button> -->
							</div>										
						</div>																		
					</div>
				
				</div><!-- col-md-7 -->			
				<div class="col-md-5 results-map">
					map
				</div>
				
			</div><!-- row -->
		</div><!-- container -->
	  </div><!-- results -->
	</div>
	
	<!-- <script type="text/javascript">
	  	$(document).ready(function (){
	  		var resultsListJson = ${resultsListJson};
	  		
	  		for (var i = resultsListJson.length - 1; i >= 0; i--) { 	 	
	  		 	document.getElementById("results").innerHTML +=
	  		 	"<h3 class='col-md-12'><a href='../view/pending_event.jsp'>go to class</a></h3>"
				+"	<div class='col-md-10 event_information'>"
				+"		<table style='width:100%'>"
				+"			<tr>"
				+"				<td>Location:</td>"
				+"				<td>GWU</td>"		
				+"				<td>Estimate Price:</td>"
				+"				<td>$15/person</td>"
				+"			</tr>"
				+"			<tr>"
				+"				 <td>Date:</td>"
				+"				 <td>11/11/2015</td>"		
				+"				 <td>Total People:</td>"
				+"				 <td>4/5</td>"
				+"			</tr>"					  
				+"		</table>"												
				+"	</div>"
				+"	<div class='col-md-2 event_join'>"
				+"		<button type='button' class='btn btn-xs btn-success'>Join</button>"								
				+"	</div>";											
			}
	</script> -->
	
	<!-- DateTimePicker -->
   	<script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
   	<script type='text/javascript' src="https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/a549aa8780dbda16f6cff545aeabc3d71073911e/src/js/bootstrap-datetimepicker.js"></script>
   	<script type='text/javascript'>
		$(window).load(function(){
		$('#datetimepicker').datetimepicker();	
		});	
	</script>
	
  </body>
</html>
