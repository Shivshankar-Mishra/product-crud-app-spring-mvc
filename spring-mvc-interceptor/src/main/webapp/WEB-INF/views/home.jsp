<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body style="background-color: #555">
	<div style="margin-top: 100px; display: flex; flex-direction: column; text-align: center; justify-content: center; align-items: center; gap: 20px; background-color: #fff">
		<h1>Insert Your Name:</h1>
		<form action="processSearch" method="post" style="width: 200px; height: 200px; padding: 10px; display: flex; flex-direction: column; text-align: center; justify-content: center; align-items: center; gap: 20px; background-color: #999; border-radius: 15px;">
			<input type="text" placeholder="Enter your name" name="name" style="width: 200px; height: 30px; padding: 5px">
			<button type="submit" style="background-color: #0f0; color: white; padding: 5px; border-radius: 10px; outline: none; width: 100px; height: 50px;">Search</button>
		</form>
	</div>

</body>
</html>