<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
</head>
<body>
	<% String naam = (String)request.getAttribute("name");
		List<String> names = (List<String>)request.getAttribute("nameList");
	%>
	<h1>Hello</h1>
	<h1>index page</h1>
	<br>
	<br>
	<h1><%= naam %></h1>
	<br>
	<br>
	<br>
	<% for(String str : names){ %>
	<h2><%= str %></h2>
	<% } %>
</body>
</html>