<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mb-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center">Welcome to Product Crud App</h1>

				<table class="table table-striped">
					<thead class="table-dark">
					
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Description</th>
							<th scope="col">Product Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${products }" var="p">
						<tr>
							<th scope="row">${p.id}</th>
							<td>${p.productName }</td>
							<td>${p.productDescription }</td>
							<td>&#x20B9; ${p.productPrice }</td>
							<td>
								<a href="delete/${p.id }"><i class="fa-solid fa-trash-can" style="color: red; font-size: 25px;"></i></a>
								<a href="update/${p.id }"><i class="fa-solid fa-pen-nib" style="color: #666; font-size: 25px;"></i></a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="add-product">
						<button class="btn btn-outline-success">Add Product</button>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>