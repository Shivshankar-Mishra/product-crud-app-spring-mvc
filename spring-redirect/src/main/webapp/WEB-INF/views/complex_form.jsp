<%@page import="org.springframework.validation.BindingResult"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Complex Form</title>
  </head>
  <body>
    <div class="container d-flex flex-column justify-content-center gap-4 card">
    	<h1 class="text-center">Complex Form</h1>
    	<%-- <% boolean err = (boolean)request.getAttribute("error");
    	%> --%>
    	<div class="alert alert-danger " role="alert">
  			<form:errors path="student.*" />
		</div>
    	
    	<form action="process" method="post">
  			<div class="mb-3 card-body">
    			<label for="exampleInputName" class="form-label">Name</label>
    			<input type="text" class="form-control" id="exampleInputName" name="name">
  			</div>
  			<div class="mb-3 card-body">
    			<label for="exampleInputId" class="form-label">Id</label>
    			<input type="text" class="form-control" id="exampleInputId" name="id">
  			</div>
  			<div class="mb-3 card-body">
    			<label class="form-label" for="exampleDob">DOB</label>
    			<input type="text" class="form-control" id="exampleDob" name="date">
  			</div>
  			<div class="mb-3 card-body">
    			<label class="form-label" for="exampleaddress">Address</label>
  				<div class="mb-3 card-body">
    				<label class="form-label" for="examplestreet">Street</label>
    				<input type="text" class="form-control" id="examplestreet" name="address.street">
    			</div>
  				<div class="mb-3 card-body">
    				<label class="form-label" for="exampleCity">City</label>
    				<input type="text" class="form-control" id="exampleCity" name="address.city">
    			</div>
  			</div>
  			<div class="mb-3 card-body">
    			<label class="form-label" for="exampleDob">Courses</label>
    			<select class="form-select" multiple aria-label="Multiple select example" name="courses">
  					<option value="javascript">JavaScript</option>
  					<option value="java">Java</option>
  					<option value="python">Python</option>
  					<option value="c++">C++</option>
				</select>
  			</div>
  			<div class="mb-3 card-body">
    			<label class="form-label" for="exampleGender">Gender</label>
  				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="male">
  					<label class="form-check-label" for="inlineRadio1">Male</label>
				</div>
				<div class="form-check form-check-inline card-body">
  					<input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="female">
  					<label class="form-check-label" for="inlineRadio2">Female</label>
				</div>
  				<div class="mb-3 card-body">
    				<label class="form-label" for="exampleDob">Student Type</label>
    				<select class="form-select"  aria-label="select example" name="type">
  						<option value="normal">Normal Student</option>
  						<option value="disabled">Old Student</option>
  					</select>
  				</div>
  			</div>
  			
  			<button type="submit" class="btn btn-primary text-center">Submit</button>
		</form>
    	
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>