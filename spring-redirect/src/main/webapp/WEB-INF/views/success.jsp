<%@page import="com.jsp.spring_redirect.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
</head>
<body>
<h1>Your Form successfully filled and data will printed below....</h1>
<br><br>
	<% Student student = (Student)request.getAttribute("student");
	/* int id = (int)request.getAttribute("id");
	String user = (String)request.getAttribute("user"); */
	%>
	<%-- <h2><%= id %></h2>
	<h2><%= user %></h2> --%>
	<h2><%= student.getName() %></h2>
	<h2><%= student.getId() %></h2>
	<h2><%= student.getDate() %></h2>
	<h2><%= student.getCourses() %></h2>
	<h2><%= student.getGender() %></h2>
	<h2><%= student.getType() %></h2>
	<hr>
	<h2><%= student.getAddress().getStreet() %></h2>
	<h2><%= student.getAddress().getCity() %></h2>
</body>
</html>