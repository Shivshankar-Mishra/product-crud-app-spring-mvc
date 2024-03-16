<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>File Upload Success Page</title>
</head>
<body>
		<% String file = (String)request.getAttribute("filename");
		String str = "/resources/imgs/"+file;
		
		%>

    <div class="container">
        <h1>File Uploaded Successfully</h1>
        <h3>See your image here....</h3>
        <h2><%= file %></h2>
        <img src="<c:url value="<%= str %>" />" alt="Shiv Wallpaper">
   
   </div>
</body>
</html>
