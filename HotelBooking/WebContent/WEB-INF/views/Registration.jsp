<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Registration</title>
	<link rel="stylesheet"  href="<spring:url value='/assets/css/bootstrap.css'/>" type="text/css">
	<link rel="stylesheet" href="<spring:url value='/css/style.css'/>"  type="text/css">
	<style type="text/css">
		body{  background: rgba(0, 0, 0, 0.6); }
	</style>
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
		            <a class="navbar-brand" href="home">Hotel Booking</a>
		        </div>
		        <!-- Collect the nav links, forms, and other content for toggling -->
		        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		            <ul class="nav navbar-nav">
		            	 <li>
		                    <a href="home">HOME</a>
		                </li>
		                <li>
		                    <a href="usershowroom">ROOMS</a>
		                </li>
		            </ul>
		            <ul class="nav navbar-nav navbar-right">
						<li><a href="<spring:url value='/hotelbooking/registration'/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		           		<li><a href="<spring:url value='/hotelbooking/login'/>" ><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</ul>
		        </div>
		        <!-- /.navbar-collapse -->
		    </div>
		    <!-- /.container -->
		</nav>
		 <div class="row">
	          <div class="col-lg-12">
				<h2>${requestScope.mesg}</h2>		
				 <div class="reg">
						<form:form method="Post" class="form-signin" modelAttribute="users">       
							<h2 class="form-signin-heading">Registration Form</h2>
							<form:input class="form-control" path="firstName" placeholder="first name" required="required"/>
							<form:input class="form-control" path="lastName" placeholder="last name" required="required"/>
							<form:input maxlength="10" minlegth="10" class="form-control" path="contactNo" placeholder="Mobile Number" required="required"/>
							<form:input class="form-control" path="emailId" placeholder="Email Address" required="required"/>
							<form:input type="password" class="form-control" path="password" placeholder="password" required="required"/>  
							<form:input class="form-control" path="address.city" placeholder="City" required="required"/>
							<form:input class="form-control" path="address.state" placeholder="State" required="required"/>
							<form:input class="form-control" path="address.country" placeholder="country" required="required"/>
							<form:input  maxlength="6" minlegth="6" class="form-control" path="address.pincode" placeholder="pincode" required="required"/>
							<form:select class="form-control" path="gender">
									<form:option value="0" label="Select gender" />
									<form:option value="male" label="Male" />
									<form:option value="female" label="Female" />
							</form:select>
							<form:select class="form-control" path="idProffType">
									<form:option value="0" label="Select IdProffType" />
									<form:option value="addarcard" label="Adhar Card" />
									<form:option value="Pancard" label="Pan Card"/>
							</form:select>
							<form:input class="form-control" path="idProffNumber" placeholder="Id Proff Number" required="required"/>
							<button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>   
						</form:form>
					</div>
					</div>
				</div>
			
	<!-- Page Content -->
	    <div class="container">
	
	        <div class="row">
	            <div class="col-sm-8">
	                <h3>Welcome to Our Hotel</h3>
	                <p class="pad_bot1"><strong class="color2">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor</strong><br>
	                Incididunt ut labore dolore magna. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
	                <p class="pad_bot2"> Duis aute irure dolorin reprehenderit in voluptate velit esse cillum dolore eu fugiat pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</p>
	            </div>
	        <div class="col-sm-4">
	            <div>
	                <p class="pad_bot1"><strong class="color2">10.10.2011</strong><br>Lorem ipsum dolor sit amet,<br> consectetur adipisicing elited do eiusmod<br> tempor incididunt.</p>
	            </div>
	            <div>
	                <h2>About Us</h2>
	                <img alt="No Image found"
	                    src="<spring:url value='/img/page1_img1.jpg'/>">
	            </div>
	            </div>
	        </div>
	
	        <hr>
	
	        <!-- Footer -->
	        <footer>
	            <!-- /.row -->
	            <div class="row">
	                <div class="col-lg-12">
	                    <p>Copyright &copy; Hotel Booking</p>
	                </div>
            	</div>
	        </footer>
	
	    </div>
    <!-- /.container -->
		
</body>
</html>