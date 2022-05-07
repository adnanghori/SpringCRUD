<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file ="./common.jsp" %>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<%@ page isELIgnored="false" %>
<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    <link href = '<c:url value = "/resources/css/add_product_success.css"/>' rel ="stylesheet">
  </head>
  
    <body>
      <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <i class="checkmark">✓</i>
      </div>
        <h1>Success</h1> 
        <p>${success}</p>
        
       <form method="post" action="add-product">
    <button  class = "btn btn-primary" type="submit">Go Back To Add Page</button>
</form>
      </div>
    </body>
</html>