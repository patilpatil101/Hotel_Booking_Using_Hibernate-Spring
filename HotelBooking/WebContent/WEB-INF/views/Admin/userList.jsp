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
	<nav class="navbar navbar-inverse navbar-fixed-top role=navigation" >
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">Hotel Booking</a>
					</div>
					<ul class="nav navbar-nav">
		                <li>
		                    <a href="adminhome">HOME</a>
		                </li>
		                <li>
		                    <a href="usershowroom">ROOMS</a>
		                </li>
		            </ul>
	         <ul class="nav navbar-nav navbar-right">
	           <li><a href="<spring:url value='/hotelbooking/logout'/>" ><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
	       </ul>
		</div>
	</nav>
	<h1 align="center">CUSTOMER LIST</h1>
	<h4>${sessionScope.mesg}</h4>
	<form:form method="post" modelAttribute="users">
		<table class="table">
		<c:forEach var="user" items="${requestScope.usersList}">
			<thead>
				<tr>
					<th>${user.userId}</th>
					<th>${user.firstName}</th>
					<th>${user.lastName}</th>
					<th>${user.emailId}</th>
					<th>${user.contactNo}</th>
					<th>${user.address.city}</th>
					<th>${user.address.state}</th>
					<th>${user.address.country}</th>
					<th>${user.gender}</th>
					<th>${user.regDate}</th>
					<th>${user.idProffType}</th>
					<th>${user.idProffNumber}</th>
					<th>${user.role}</th>
				</tr>
				<tr>
					<th><a href="deleteuser/${user.userId}">Unsubscribe</a></th>
				</tr>
			</thead>
		</c:forEach>
	</table>
	</form:form>
</body>
</html>