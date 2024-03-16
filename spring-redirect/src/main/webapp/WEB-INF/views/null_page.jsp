<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
</head>
<body>
		<div style="display: flex; justify-content: center; flex-direction: column; gap:20px;" >
			<h1>Oops!!!</h1>
			<h2>There is an error</h2>
			<% String msg = (String)request.getAttribute("msg"); %>
			<p><%= msg %></p>
		</div>
</body>
</html>