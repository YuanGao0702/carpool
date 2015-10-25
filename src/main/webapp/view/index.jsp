<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>CarPool</title>
	
	<%@ include file = "header.jsp" %>
	
	<!-- Global CSS -->
	<link href="<%=path%>/css/global.css" rel="stylesheet">		
	
	<!-- Custom CSS -->
	<link href="<%=path%>/css/index.css" rel="stylesheet">
	
  </head>
  
  <body data-spy="scroll" data-target="#myScrollspy" data-offset="20">
    
  <%@ include file = "nav.jsp" %>

	<!-- Section: intro -->
	<section id="intro" class="intro">
	<div class="page">		
		<div class="col-md-6">
		<a href="<%=path%>/view/driver_info.jsp">Driver</a>		
		</div>
		<div class="col-md-6">
		<a href="<%=path%>/view/rider_info.jsp">Rider</a>			
		</div>
		<div class="page-scroll">
			<a href="#about">
				What's CarPool?
			</a>
		</div>
		</div>
	</section>
	<!-- /Section: intro -->

	<!-- Section: about -->
	<section id="about" class="about">
		<h3 class="heading">About</h3>	                           														
		<div class="container">			
			<div class="row">
			About Our Carpool
			</div>
		</div>
	</section>
	
	<!-- ScrollTo JavaScript -->
	<script src="<%=path%>/js/jquery.easing.min.js"></script>	
	<script src="<%=path%>/js/jquery.scrollTo.js"></script>
	<script src="<%=path%>/js/wow.min.js"></script>    
    <script src="<%=path%>/js/custom.js"></script>
				
  </body>
</html>
