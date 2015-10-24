<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'driver_info.jsp' starting page</title>
    
	<%@ include file = "header.jsp" %>
	
	<!-- Global CSS -->
	<link href="<%=path%>/css/global.css" rel="stylesheet">
	
	<!-- Custom CSS -->
	<link href="<%=path%>/css/info.css" rel="stylesheet">
	
	<!-- DateTimePicker -->	
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/a549aa8780dbda16f6cff545aeabc3d71073911e/build/css/bootstrap-datetimepicker.css">
    	
  </head>
  
  <body>
  <%@ include file = "nav.jsp" %>
  <div class="page">
   	<div class="info">
   		<div class="container">
			<div class="row">
			   <form class="form-horizontal" role="form" action="create_event.action">
				  <div class="form-group">
				    <label class="control-label col-sm-2">Title:</label>
				    <div class="col-sm-10">
				      <input name="title" class="form-control" id="title" placeholder="Enter title">
				    </div>
				  </div>
				  
				  <div class="form-group">
				    <label class="control-label col-sm-2">Location:</label>
				    <div class="col-sm-5"> 
				      <input name="startAddress" class="form-control" id="start" placeholder="Enter start location">
				    </div>
				    <div class="col-sm-5"> 
				      <input name="endAddress" class="form-control" id="end" placeholder="Enter end location">
				    </div>
				  </div>
				  
				  <div class="form-group">
				  	<label class="control-label col-sm-2">Date:</label>
				  	<div class="col-sm-10">
						<div class="input-group date" id="datetimepicker">
			                <input id="inputtime" name ="date" type="textbox" class="form-control" value=""/>	<span class="input-group-addon"><span class="glyphicon-calendar glyphicon"></span></span>
			            </div>		           
				    </div>			 	
	              </div>
	              
				  <div class="form-group">
	                  <label class="control-label col-sm-2">Car Capacity</label>
	                  <div class="col-sm-10">
		                  <input name="capacity" class="form-control">
	                  </div>
	              </div>
	              <div class="form-group">
				    <label class="control-label col-sm-2" for="prive">Estimate Price:</label>
				    <div class="col-sm-10">
				      <input name="price" class="form-control" id="price" placeholder="Enter price">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-2" for="memo">Memo:</label>
				    <div class="col-sm-10">
				    	<textarea name="description" id="memo" class="form-control" rows="9" cols="25" placeholder="Enter memo"></textarea>			      
				    </div>
				  </div>
				  
				  <div class="form-group"> 
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-default"><a href="<%=path%>/view/driver_event.jsp">Cteate Now!</a></button>
				    </div>
				  </div>
				</form>
			</div>
		</div>
   	</div>
   </div>
   
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
