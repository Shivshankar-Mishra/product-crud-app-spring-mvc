<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help page</title>
</head>
<body>
	<% String name = (String)request.getAttribute("name");
		LocalDate date = (LocalDate)request.getAttribute("date");
	%>
	<h1>This is Help Page</h1>
	<h2>Here is My name: <%= name %></h2>
	<br><br>
	<h3>And today's date is: <%= date %></h3>
</body>
</html>