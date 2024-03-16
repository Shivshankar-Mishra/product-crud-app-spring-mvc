<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
	<div class="container w-50">
		<h1 class="text-center">Update Product Detail</h1>
		<form action="${pageContext.request.contextPath}/add-process" method="post">
  			<div class="mb-3 d-none">
    			<label for="exampleInputId" class="form-label text-left">Product Id</label>
    			<input type="text" class="form-control" id="exampleInputId" placeholder="Enter product id..." name="id" value="${product.id }">
    			
  			</div>
  			<div class="mb-3">
    			<label for="exampleInputName" class="form-label text-left">Product Name</label>
    			<input type="text" class="form-control" id="exampleInputName" placeholder="Enter product name..." name="productName" value="${product.productName }">
    			
  			</div>
  			
  			<div class="mb-3 form-floating">
  				<textarea class="form-control" placeholder="Leave a comment here" name="productDescription" id="floatingTextarea2" style="height: 100px">${product.productDescription }</textarea>
  				<label for="floatingTextarea2">Product Description</label>
			</div>
  			
  			<div class="mb-3">
    			<label for="exampleInputPrice" class="form-label">Product Price</label>
    			<input type="text" class="form-control" placeholder="Enter product price..." id="exampleInputPrice" name="productPrice" value="${product.productPrice }">
    			
  			</div>
  			<div class="text-center">
  				<a href="${pageContext.request.contextPath}/" class="btn btn-outline-warning ">
  					Back
  				</a>
  				<button type="submit" class="btn btn-primary">Update Product</button>
  			</div>
		</form>
	</div>

</body>
</html>