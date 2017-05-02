<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet"  href="<spring:url value='/assets/css/bootstrap.css'/>" type="text/css">
	<link rel="stylesheet" href="<spring:url value='/css/style.css'/>"  type="text/css">
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
			<div class="row">
				<div class="col-lg-2">
				</div>
		        <div style="margin-top: 50px; border:solid" class="col-lg-8">
					<form:form method="Post" modelAttribute="roomDetails">    
						<h3>Enter Room Details</h3> 
						<h4>${requestScope.mesg}</h4>   
							<table class="table">
								<tbody>
									<tr>
										<td>Rent:</td>
										<td>
											<form:input path="rent"/>
										</td>
									</tr>
									<tr>
										<td>Image Name:</td>
										<td>
											<form:input path="room_image"/>
										</td>
									</tr>
									<tr>
										<td>Capacity:</td>
										<td>
											<form:input path="roomCapacity"/>
										</td>
									</tr>
									<tr>
										<td>status:</td>
										<td>
											<form:input value="Not allot" path="status"/>
										</td>
									</tr>
									<tr>
										<td>
											<form:select path="categoryType.categoryType">
												<form:option value="Single Room" label="Single Room" />
												<form:option value="Double Room" label="Double Room" />
												<form:option value="Family Room" label="Family Room" />
												<form:option value="Multiple Room" label="Multiple Room" />
											</form:select>
										</td>
										<td>
											<form:select path="categoryType.categorySubtype">
												<form:option value="AC" label="AC" />
												<form:option value="NonAC" label="NonAC" />
											</form:select>
										</td>
									</tr>
									<tr>
										<td><input type="submit" value="Add Room"/></td>
										<td><input type="submit" onclick="updateroom" value="Update RoomInfo"/></td>
									</tr>
								</tbody>
							</table>  
					</form:form>
				 </div>
				 <div class="col-lg-2">
				</div>
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