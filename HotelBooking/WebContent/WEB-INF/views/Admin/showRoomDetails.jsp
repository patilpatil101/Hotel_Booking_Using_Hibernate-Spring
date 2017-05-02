<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet"  href="<spring:url value='/assets/css/bootstrap.css'/>" type="text/css">
	<link rel="stylesheet" href="<spring:url value='/css/table.css'/>"  type="text/css">
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
		            <a class="navbar-brand" href="adminhome">Hotel Booking</a>
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
			<div class="row">
				<div class="col-lg-2" ></div>
			        <div style="margin-top: 50px; border:solid" class="col-lg-8">
						<form:form method="Post" modelAttribute="roomDetails">    
							<h3>Room Details</h3> 
							<h4><a href="addroom">Add new room</a> </h4>
							<h4>${requestScope.mesg}</h4>   
								<table class="table">
										 <c:forEach var="room" items="${requestScope.roomList}">
										<thead>
											<tr>
												<th><img alt="No Image found" width="300px" height="300px"
		                   							 src="<spring:url value='${room.room_image}'/>">
												</th>
												<th>price : ${room.rent}</th>
												<th>Capacity : ${room.roomCapacity}</th>
												<th>${room.status}</th>
												<th>${room.categoryType.categoryType}</th>
												<th>${room.categoryType.categorySubtype}</th>
											</tr>
											<tr>
												<th><a href="deleteroom/${room.roomNo}">remove Room</a></th>
												<th><a href="updateroom/${room.roomNo}">update RoomInfo</a></th>
												<th></th>
												<th></th>
											</tr>
										</thead>
										</c:forEach>
								</table> 
						</form:form>
					</div>
				<div class="col-lg-2" ></div>
			</div>
		</div>
      <footer>
           <!-- /.row -->
           <div class="row">
               <div class="col-lg-12">
                   <p>Copyright &copy; Hotel Booking</p>
               </div>
          	</div>
      </footer>    
</body>
</html>