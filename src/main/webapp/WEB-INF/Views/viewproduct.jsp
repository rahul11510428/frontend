<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ include file="navbar.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert  here</title>
</head>
<body>


<div class="container" style="width:75%; margin-top:80px">
<div class="panel panel-primary">
<div class="panel-heading" style="background-color:black">
<b><h2>Details About the Product</h2></b>
</div> <!-- end of panel heading -->

<div class="panel-body" style="padding-top:40px ;">
<div class="col-md-7">
<c:url value="/resources/images/${product.id}.png"  var="imageUrl"> </c:url>
<img src="${imageUrl}"  style="width:60%;height:60%">
</div>
<br><br>
<table class="table table-hover" style="width:40% ;">

 
 
 <tr>
  <td>Product Name :</td><td>${product.productname}</td>  
 </tr> <!-- End of first row -->
 
 <tr>
  <td>Price :</td> <td>${product.price}</td>
 </tr> <!-- end of second row -->
 
  
 <tr>
   <td> Quantity :</td> <td>${product.quantity}</td>
 </tr>  <!-- End of third row -->
 
 
 <tr>
  <td>Description :</td> <td>${product.description} </td>
 </tr> <!-- end of  fourth row -->
 
</table>
  <br>
  <c:url value="/getallproducts" var="url1"></c:url>
  <a href="${url1}" class="btn btn-primary"> Back to Product List</a>
 </div> <!-- End of panel-body -->
 </div> <!-- End of panel --> 
</div><!-- End of container -->
</body>
</html>