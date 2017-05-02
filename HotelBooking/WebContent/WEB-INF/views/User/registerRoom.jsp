<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="<spring:url value='/css/full-slider.css'/>"  type="text/css">
		<link rel="stylesheet"  href="<spring:url value='/assets/css/bootstrap.css'/>" type="text/css">
		<link rel="stylesheet" href="<spring:url value='/css/style.css'/>"  type="text/css">
			<title>Hotel Booking</title>
		<style type="text/css">
		
			#myCarousel{
			    margin-top:40px;
				background-image: url('<spring:url value='/img/background-bora.jpg'/>');
			}
			.subtitle{
				color:#e67e22;
				font-size:25px;
			}

			.content-form{
				color:#CCCCCC;
				padding:30px;
				margin-top:40px;
				background-color:#062f3c;
				border-radius: 10px;	
			}
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
		            <a class="navbar-brand" href="/HotelBooking/hotelbooking/userhome">Hotel Booking</a>
		        </div>
		        <!-- Collect the nav links, forms, and other content for toggling -->
		        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		           <ul class="nav navbar-nav">
		                 <li>
		                    <a href="/HotelBooking/hotelbooking/userhome">HOME</a>
		                </li>
		                <li>
		                    <a href="/HotelBooking/hotelbooking/usershowroom">ROOMS</a>
		                </li>
		                <li>
		                    <a href="/HotelBooking/hotelbooking/reservationDetails">MyBooking</a>
		                </li>
		                <li>
	                    	<a href="#">FEEDBACK</a>
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

	    <!-- Full Page Image Background Carousel Header -->
	    <header id="myCarousel" class="carousel slide">
	       
		<div class="container-fluid">
				<h1 class="text-center">Hotel Bottel Booking</h1>
				<p class="subtitle text-center">Book Your Room Today</p>
				<p class="subtitle text-center">${sessionScope.login}</p>
		<div class="contendor row">
			<div class="col-md-6 col-md-offset-3">
				<div class="content-form">
					<form:form class="form-horizontal" modelAttribute="reservation">
				<!--  	<div class="form-group">
						<label class="col-sm-2 control-label">Room</label>
						<div class="col-sm-10">
						<input type="number" min="1" max="20" class="form-control" required/>
						</div>		
					</div>  -->
						
					<div class="form-group">
					<label  class="col-sm-2 control-label">Check-In (dd/mm/yyyy)</label>
								<div class="col-sm-10">
						<form:input path="dateIn" type="date" class="form-control" required="required"/>
						</div>
					</div>
			
					<div class="form-group">
						<label  class="col-sm-2 control-label">Check-Out (dd/mm/yyyy)</label>
							<div class="col-sm-10">
						<form:input type="date" class="form-control" path="dateOut" required="required" />
						</div>
					</div>
					
					<div class="form-group">
					<label  class="col-sm-2 control-label">Adults</label>
						<div class="col-sm-10">
						<form:input type="number" max="100" min="1" class="form-control" path="noOfAdults" required="required"/>
						</div>
					</div>
						<div class="form-group">
					<label  class="col-sm-2 control-label">Children: (age less than 12)</label>
						<div class="col-sm-10">
						<form:input type="number" max="100" min="1" class="form-control" path="noOfchilds" required="required"/>
						</div>
							
					</div>
					<button type="submit" class="btn btn-warning btn-lg btn-block">Send</button>
				</form:form>
				</div>
			</div>
		</div>
	</div>
                         
	    </header>

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

    <!-- jQuery -->
    <script src="<spring:url value='/js/jquery.js'/>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<spring:url value='/js/bootstrap.min.js'/>"></script>

    <!-- Script to Activate the Carousel -->
    <script>
	    $('.carousel').carousel({
	        interval: 5000 //changes the speed
	    })
    </script>
    
	</body>
</html>