<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   <h1>Welcome!</h1>
   <h3>Join our growing community.</h3>
   <div class="container mt-5 d-flex">
   		<div>
   			<h1>Register</h1>
	   		<form:form action="/register" method="POST" modelAttribute="newUser" class="form">
	   			<div>
		   		    <form:label path="userName" class="form-label">User Name</form:label>
		        	<form:input path="userName" class="form-control" />
		       		<form:errors path="userName" class="text-danger" />
		   		</div>
		   		<div>
		   		    <form:label path="email" class="form-label">Email</form:label>
		        	<form:input path="email" class="form-control" />
		       		<form:errors path="email" class="text-danger" />
		   		</div>
		   		<div>
		   		    <form:label path="password" class="form-label">Password</form:label>
		        	<form:input path="password" type="password" class="form-control" />
		       		<form:errors path="password" class="text-danger" />
		   		</div>
		   		<div>
		   		    <form:label path="confirm" class="form-label">Confirm Password</form:label>
		        	<form:input path="confirm" type="password" class="form-control" />
		       		<form:errors path="confirm" class="text-danger" />
		   		</div>
		   			<button class="btn btn-primary">Submit</button>
	   		</form:form>
   		</div>
   		<div>
   			<h1>Log in</h1>
	   		<form:form action="/login" method="POST" modelAttribute="newLogin" class="form">
		   		<div>
		   		    <form:label path="email" class="form-label">Email</form:label>
		       		<form:errors path="email" class="text-danger" />
		        	<form:input path="email" class="form-control" />
		   		</div>
		   		<div>
		   		    <form:label path="password" class="form-label">Password</form:label>
		       		<form:errors path="password" class="text-danger" />
		        	<form:input path="password" type="password" class="form-control" />
		   		</div>
		   		<button class="btn btn-primary">Submit</button>
	   		</form:form>
   		</div>
   </div>
</body>
</html>

