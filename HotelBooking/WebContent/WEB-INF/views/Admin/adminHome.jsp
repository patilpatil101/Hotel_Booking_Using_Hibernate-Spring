<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet"  href="<spring:url value='/assets/css/bootstrap.css'/>" type="text/css">
	<link rel="stylesheet" href="<spring:url value='/css/styleadmin.css'/>"  type="text/css">
	<style type="text/css">
		body{
			background-image: url('<spring:url value='/img/background-bora.jpg'/>');	
		}
	</style>
	<title>Hotel Booking</title>
</head>
<body>
	<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		    <div class="container">
		        <!-- Brand and toggle get grouped for better mobile display -->
		        <div class="navbar-header">
		            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		                <span class="sr-only">Toggle navigation</span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		            </button>
		            <a class="navbar-brand" href="#">Hotel Booking</a>
		        </div>
		        <!-- Collect the nav links, forms, and other content for toggling -->
		        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		            <ul class="nav navbar-nav">
		            	 <li>
		                    <a href="adminhome">HOME</a>
		                </li>
		                <li>
		                    <a href="usershowroom">ROOMS</a>
		                </li>
		            </ul>
		             <ul class="nav navbar-nav navbar-right">
	           			<li><a href="<spring:url value='/hotelbooking/logout'/>" ><span class="glyphicon glyphicon-log-in"></span> LogOuT</a></li>
	       			 </ul>
		        </div>
		        <!-- /.navbar-collapse -->
		    </div>
		    <!-- /.container -->
		</nav>
	<div class="jumbotron">
		<h2 align="center" style="color: #CCCCCC">WEL-COME <br/>on<br/>ADMIN HOME PAGE</h2>
		<h3><a href="userlist">Click here to UserList</a></h3>
		<h3><a href="addroom">Add Room</a></h3>
		<h3><a href="showroom">Click here to Room Details</a></h3>
	</div>
	  	
</body>
</html>