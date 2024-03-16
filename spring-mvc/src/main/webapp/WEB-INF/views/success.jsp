<%@page import="com.jsp.spring_mvc.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
</head>
<body>
<%  User user = (User)request.getAttribute("user");
	String userName = user.getUserName();
	String email = user.getEmail();
	String password = user.getPassword();
%>
<h1>My Name is: <%= userName %></h1>
<h1>My EMail is: <%= email %></h1>
<h1>And secret Password: <%= password %></h1>

</body>
</html>