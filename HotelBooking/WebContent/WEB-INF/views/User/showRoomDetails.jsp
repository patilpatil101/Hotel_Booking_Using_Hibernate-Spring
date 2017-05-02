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
	<style>
		table, tr,th{
	    	border: 10px solid #666666;
	    	padding: 10px;
	     }
	     body{ 
	       max-width:1280px;
	     
	     }
	     .jumbotron{
	     	height:760px;
			background-image: url('<spring:url value='/img/background-bora.jpg'/>');	
		}
		 /*-------------------- About Menu  ----------------------------------------------*/ 
            
              /*  background of menu */ 
            div.background {
                background-color: #333333;
                height: 40px;
                width: 100%;
            }

		    /*--------------------------------shopping cart----------------------------------------------*/
		   h2{
		       margin:50px; 
		       text-align:center;
		   }
		    div.cantainer{
		    			padding-top:20px;
		    			background-color:lightblue;
		                border:solid 1px;
		                width: 70%;
		                margin: auto ;
		                 margin-top:20px;
		                height: 530px;
		                overflow: scroll;
		            }
		      .container {
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
		
		     div.product{
		         float:left;
		        
		         margin: 10px;
		        border-radius: 10px;
		        border: solid red 1px;
		        width: 270px;
		        height: 440px;
		        padding: 10px;
		        transition: all 1s;
		        position: relative;
		        overflow: hidden;
		          }
		          div.product:hover {
		                transform: scale(1.1);
		                box-shadow: 0 0 10px 1px #ff0000;
		            }
		     div.product > img {
		                height: 200px;
		                width: 240px;
		            }
		    div.product > div.title {
		    	
		        font-size: 22px;
		        font-weight: bold;
		        text-align: center;
		        margin-top: 20px;
		    }
		
		    div.product > div.description {
		        font-size: 17px;
		        margin-top: 5px;
		    }
		
		    div.product > div.price {
		    	
		        font-weight: bold;
		        font-size: 20px;
		        margin-top:10px;
		    }
		    div.product > .addToCart {
		        margin-top:10px;
		        width: 100%;
		        height: 40px;
		        background-color: #099ad1;
		        border: none;
		        color: white;
		        font-size: 16px;
		        border-radius: 5px;
		    }
		    div.product > .donotaddToCart {
		        margin-top:10px;
		        width: 100%;
		        height: 40px;
		        background-color: red;
		        border: none;
		        color: white;
		        font-size: 16px;
		        border-radius: 5px;
		    }
		    div.product > .addToCart > a {
		    	text-decoration: none;
		    	color: #CCCCCC;
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

	<!--<div class="jumbotron">
			<h1 align="center">HOTEL BOTTEL</h1>
			<div class="row">
					<div class="col-lg-1"></div>
			        <div style="margin-top: 50px;" class="col-lg-10">
						<form:form method="Post" modelAttribute="roomDetails">    
								<table class="table">
										 <c:forEach var="room" items="${requestScope.roomList}">
										<thead>
										 
											<tr>
												<th><img alt="No Image found" width="200px" height="200px"
		                   							 src="<spring:url value='${room.room_image}'/>"><br>
												
													price : ${room.rent}<br/>
													${room.categoryType.categoryType}<br/>
													${room.categoryType.categorySubtype}<br/>
													<input type="submit" value="remove"/>
												</th>
											</tr>
										</thead>
										</c:forEach>
								</table> 
						</form:form>
					</div>
					<div class="col-lg-1"></div>
			</div>
		</div>
		<hr/> -->
		<form:form method="Post" modelAttribute="roomDetails"> 
			<div class="jumbotron">
	       			 <div class="cantainer">
	       			 	 <c:forEach var="room" items="${requestScope.roomList}">
				            <div class="product">
				                <img alt="No Image found" width="200px" height="200px"
		                   			 src="<spring:url value='${room.room_image}'/>">
				                <div class="title">${room.categoryType.categoryType}</div>
				                <div class="description">
				                					Room No:&nbsp;&nbsp;${room.roomNo}<br/>
				                					Category:&nbsp;&nbsp;${room.categoryType.categorySubtype}<br/>
				                					Recommended :&nbsp;&nbsp;${room.roomCapacity} member
				              	 </div>
				                <div class="price">price: <!--&#8377;-->&nbsp;&nbsp;${room.rent}</div>
				                <c:choose>
								    <c:when test="${room.status.equals('alloted')}">
								        <form:button class="donotaddToCart"><a href="">BOOKED</a></form:button>
								    </c:when>    
								    <c:otherwise>
								          <form:button class="addToCart"><a href="register/${room.roomNo}">BOOK</a></form:button>
								    </c:otherwise>
								</c:choose>

	            			</div>
	            	  	</c:forEach>
			  		 </div>	
			</div>
		</form:form>
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