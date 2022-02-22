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
    <title>Dashboard</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container mt-5">
		<a href="/logout">Log Out</a>
		<a href="/books/new" class="btn btn-success">+ Add a book to my shelf</a>
		<h1>Welcome, ${user.userName }</h1>
		<table class="table table-striped">
	   		<thead>
	   			<tr>
	   				<td>ID</td>
	   				<td>Title</td>
	   				<td>Author</td>
	   				<td>Posted By</td>
	   			</tr>
	   		</thead>
	   		<tbody>
	   			<c:forEach var="book" items="${allBooks }">
	   				<tr>
	   					<td>${book.id }</td>
	   					<td><a href="books/${book.id}">${book.title }</a></td>
	   					<td>${book.author }</td>
	   					<td>${book.user.userName }</td>
	   				</tr>
	   			</c:forEach>
	   		</tbody>
	   </table>
		
	</div>
</body>
</html>

