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
	<div class="container mt-5">
   <h1>Add a Book to Your Shelf</h1>
   <form:form action="/books/new" method="POST" modelAttribute="book" class="form">
   		<form:hidden path="user" value="${userId }" />
   	   	<div>
	   	    <form:label path="title" class="form-label">Title</form:label>
	      	<form:input path="title" class="form-control" />
	    	<form:errors path="title" class="text-danger" />
	   	</div>	
   	   	<div>
	   	    <form:label path="author" class="form-label">Author</form:label>
	      	<form:input path="author" class="form-control" />
	    	<form:errors path="author" class="text-danger" />
	   	</div>
	   	<div>
	   	    <form:label path="thoughts" class="form-label">My Thoughts</form:label>
	      	<form:input path="thoughts" type="textarea" class="form-control" />
	    	<form:errors path="thoughts" class="text-danger" />
	   	</div>
	   	<button class="btn btn-primary">Submit</button>
   </form:form>
</div>
   
</body>
</html>

