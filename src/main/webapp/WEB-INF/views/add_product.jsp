<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file ="./common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
	background-color: gray;
}
h1{
	display: inline-block;
	font-family: sans-serif;
	padding-left: 40%;
	padding-top: 20%;
}
.centre{
	padding-top: 20%;
	padding-left: 45%;
	}
	
</style>
<meta charset="UTF-8">
<title>Add Product </title>
</head>
<body>
<!-- Button trigger modal -->
<div class="centre">
<form action="product-display" method = "post">
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" >
  Add Product
</button>

<button type="submit" class="btn btn-primary" >
   Product Display
</button>
</form>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Product</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="product-process" method="post" >
  <div class="form-group">
    <label>Product Name</label>
    <input type="text" class="form-control" name = "productName" placeholder="Enter Product Name">
  </div>
  <div class="form-group">
    <label>Product Description</label>
    <input type="text" class="form-control" name="productDescription" placeholder="Enter Product Description">
  </div>
  <div class="form-group">
    <label>Product Price</label>
    <input type="number" class="form-control" name="productPrice" placeholder="Enter Product Price">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" name="checkBox">
    <label class="form-check-label" >Confirm</label>
  </div>
  <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" >Save</button>
      </div>
  
</form>
      </div>
      
    </div>
  </div>
</div>
	
</body>
</html>
