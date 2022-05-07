<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file ="./common.jsp" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Display</title>
<style type="text/css">
body{
	background-color: grey;
	padding-top: 2%;
}
	.container {
			
		}
	.container h1{
		text-align: center;
		padding-bottom: 2%;	
		}
		.crud{
			text-align: center;
			margin-bottom: 2%;
		}
</style>
</head>
	
<body>
 	<div class = "container">
 		<h1>CRUD APPLICATION</h1>
 	 </div>
 	 
 <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">${productId}</th>
      <th scope="col">${productName }</th>
      <th scope="col">${productDescription }</th>
      <th scope="col">${productPrice}</th>
      <th scope="col">${productAction}</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${products}" var = "product">
    <tr>
    
      <th scope="row">${product.productId }</th>
      <td>${product.productName}</td>
      <td>${product.productDescription}</td>
      <td>${product.productPrice}</td>
     <td>	
   		
     	<a class = "btn btn-primary" href = "update-product/${product.productId}">
   			Update 
     	</a>
     	&nbsp
     		
     	<a class = "btn btn-danger" href = "delete-product/${product.productId}"> 
     		Delete
     	</a>
     </td>
    </tr>
      </c:forEach>
      
  </tbody>
</table>
	<div class = "crud">
	<form method="post" action="add-product">
	<button class = "btn btn-primary" >
			Add Product
		</button>
		</form>
		
</div>
</body>
</html>