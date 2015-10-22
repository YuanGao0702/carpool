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
		   <form class="form-horizontal" role="form">
			  <div class="form-group">
			    <label class="control-label col-sm-2" for="title">Title:</label>
			    <div class="col-sm-10">
			      <input type="title" class="form-control" id="title" placeholder="Enter title">
			    </div>
			  </div>
			  
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
              
			  <div class="form-group">
                  <label class="control-label col-sm-2" for="people">How many people in total?</label>
                  <div class="col-sm-10">
	                  <select id="subject" name="subject" class="form-control" required="required">
	                  	<option value="na" selected="">Choose One:</option>
	                    <option value="2">2</option>
	                    <option value="3">3</option>
	                    <option value="4">4</option>
	                    <option value="5">5</option>
	                    <option value="6">6</option>
	                    <option value="7">7</option>
	                    <option value="8">8</option>
	                    <option value="9">9</option>
	                    <option value="10">10</option>
	                    <option value="11">11</option>
	                    <option value="12">12</option>
	                  </select>
                  </div>
              </div>
              <div class="form-group">
			    <label class="control-label col-sm-2" for="prive">Estimate Price:</label>
			    <div class="col-sm-10">
			      <input type="price" class="form-control" id="price" placeholder="Enter price">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" for="memo">Memo:</label>
			    <div class="col-sm-10">
			    	<textarea name="memo" id="memo" class="form-control" rows="9" cols="25" placeholder="Enter memo"></textarea>			      
			    </div>
			  </div>
			  
			  <div class="form-group"> 
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-default"><a href="<%=path%>/view/driver_room.jsp">Launch Now!</a></button>
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
