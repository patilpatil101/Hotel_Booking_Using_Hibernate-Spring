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
	<link rel="stylesheet"  href="<spring:url value='/assets/js/jquery.css'/>" type="text/javascript">
	<link rel="stylesheet" href="<spring:url value='/css/table.css'/>"  type="text/css">
	<script type="text/javascript">
		function myFunction() {
		    window.print();
		}
	</script>
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
		                    <a href="#">MyBooking</a>
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
	<div class="jumbotron">
	       <h2>Card Information</h2>
	       
	       <h3 align="center">${mesg}</h3>
			<form:form method="post" modelAttribute="payment">
				<table style="background-color: cyan; margin: auto;">
					<tr>
						<td>Enter Card No</td>
						<td><form:input path="cardNo" /></td>
						<td><form:errors path="cardNo" /></td>
					</tr>
					<tr>
						<td>Customer Name</td>
						<td><form:input path="custName" /></td>
						<td><form:errors path="custName" /></td>
					</tr>
					<tr>
						<td>Expiry Date Month</td>
						<td><form:select path="month" items="${requestScope.months}" /></td>
						<td>Expiry Date Year</td>
						<td><form:select path="year" items="${requestScope.years}" /></td>
		
					</tr>
					<tr>
						<td>Enter CVV</td>
						<td><form:password path="cvv" /></td>
						<td><form:errors path="cvv" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Proceed" /></td>
					</tr>
				</table>
			</form:form>
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