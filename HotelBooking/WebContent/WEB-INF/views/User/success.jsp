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
			
			.container1 {
					  margin-right: auto;
					  margin-left: auto;
					  padding-left: 15px;
					  padding-right: 15px;
					}
					@media (min-width: 768px) {
					  .container {
					    width: 750px;
					  }
					}
					@media (min-width: 992px) {
					  .container {
					    width: 970px;
					  }
					}
					@media (min-width: 1200px) {
					  .container {
					    width: 1170px;
					  }
					}
		</style>
	</head>
	<body>
		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		    <div class="container1">
		        <!-- Brand and toggle get grouped for better mobile display -->
		        <div class="navbar-header">
		            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		                <span class="sr-only">Toggle navigation</span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		            </button>
		            <a class="navbar-brand" href="userhome">Hotel Booking</a>
		        </div>
		        <!-- Collect the nav links, forms, and other content for toggling -->
		        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		           <ul class="nav navbar-nav">
		           		<li>
		                    <a href="userhome">HOME</a>
		                </li>
		                <li>
		                    <a href="usershowroom">ROOMS</a>
		                </li>
		                <li>
		                    <a href="reservationDetails">MyBooking</a>
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
	        <!-- Indicators -->
	        <ol class="carousel-indicators">
	            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	            <li data-target="#myCarousel" data-slide-to="1"></li>
	            <li data-target="#myCarousel" data-slide-to="2"></li>
	        </ol>
	
	        <!-- Wrapper for Slides -->
	        <div class="carousel-inner">
	            <div class="item active">
	                <!-- Set the first background image using inline CSS below. -->
	                 <div class="fill" style="background-image: url('<spring:url value='/img/img1.jpg'/>');"></div>
	                <div class="carousel-caption">
	                     <h2 style="color: #666666">WELCOME TO HOTEL BOTTEL</h2>
	                </div>
	            </div>
	            <div class="item">
	                <!-- Set the second background image using inline CSS below. -->
	                <div class="fill" style="background-image:url('<spring:url value='/img/img2.jpg'/>');"></div>
	                <div class="carousel-caption">
	                    <h2 style="color: #666666">WELCOME TO HOTEL BOTTEL</h2>
	                </div>
	            </div>
	            <div class="item">
	                <!-- Set the third background image using inline CSS below. -->
	                <div class="fill" style="background-image:url('<spring:url value='/img/img3.jpg'/>');"></div>
	                <div class="carousel-caption">
	                     <h2 style="color: #666666">WELCOME TO HOTEL BOTTEL</h2>
	                </div>
	            </div>
	        </div>
	
	        <!-- Controls -->
	        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	            <span class="icon-prev"></span>
	        </a>
	        <a class="right carousel-control" href="#myCarousel" data-slide="next">
	            <span class="icon-next"></span>
	        </a>
	
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