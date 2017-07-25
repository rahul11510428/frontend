<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<title>Product List</title>
<%@ include file="navbar.jsp" %>
 
<html>
<head>
  
 <script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 5, 6, 7, -1 ], [ 5, 6, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>
 


</head>
<body>
 
 
  <div class="container">
  
   <b><h2>List of Products</h2></b><br><br>
   
    <table class="table table-hover table-striped table-bordered" >
    
      <thead>
      
       <tr><th>Image</th><th>Name</th><th>Category</th><th>Price</th><th>Qty</th> <th>View</th>  <th>Delete</th> <th>Edit</th></tr>
       
      </thead>
      <tbody>
        <c:forEach items="${products}" var="p">
        <c:url value="/resources/images/${p.id}.png" var="imageUrl"></c:url>
        
        <c:url value="/viewproduct${p.id}" var="viewUrl" ></c:url>
        
        <c:url value="/deleteproduct/${p.id}" var="deleteUrl"></c:url>
        
        <c:url value="/geteditform${p.id}" var="editUrl"></c:url>
        
         <tr>
          <td> <img src="${imageUrl}" style="width:150px; height:150px"> </td>
          <td><a href="${viewUrl}"> <h3 style="padding-top:40px">  ${p.productname} </h3></a></td> 
          
          <td><h3 style="padding-top:40px" >  ${p.category.categoryname}</h3></td>
          
          <td> <h3 style="padding-top:40px">${p.price} </h3> </td>
          
          <td> <h3 style="padding-top:40px"> ${p.quantity}</h3> </td>
          
          <td>  <a  href="${viewUrl}" class="btn btn-primary" style="margin-top:60px " ><span   class="glyphicon glyphicon-info-sign"></span> </a> </td>
            
          <td>  <a href="${deleteUrl}" class="btn btn-danger" style="margin-top:60px"><span  class="glyphicon glyphicon-trash" ></span>  </a>  </td> 
          
          <td>  <a href="${editUrl}" class="btn btn-success" style="margin-top:60px" ><span  class="glyphicon glyphicon-pencil" ></span></a>  </td> 
           
         </tr>
        </c:forEach>
      </tbody>
    </table>
  </div> <!-- End container -->
  
</body>
</html>