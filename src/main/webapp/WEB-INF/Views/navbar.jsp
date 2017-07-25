 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <!-- JQuery BootStrap -->
 
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css"/>
 
 
<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>


 
<title>navbar.jsp</title>

</head>

<body>
 
<div class="navbar navbar-fixed-top" style="background-color:  #6666ff; border-radius: 0px 0 0 0px;">
 <div class="container-fluid">
  <c:url value="resources/logo.png" var="logoUrl" ></c:url> 
      <a class="navbar-brand" href="index"> <img src="${logoUrl}" alt="alter" style="width:135px; margin-top:-13px; ;margin-left:130px" > </a>
    
   <form action="searchproduct" class="navbar-form pull-left" style="margin-left:-15px;">
    <div class="input-group"  style="margin-top:1px;height:43px">
      <input   type="text" class="form-control" name="SearchKeyword" placeholder="Search here" style="width:800px;height:43px"/>
       <div class="input-group-btn">
       <a href="#">
        <button class="btn btn-default" type="submit" style="background-color: #ffe11b" href="getallproducts">
         <i class="glyphicon glyphicon-search" style="height:28.4px;width:40px ; padding-top:7px "></i>
        </button>
        </a>
      </div>
   </div>
   </form>  
     
      <a href="getproductform"><span class="btn btn-danger" style="margin-top:16px">Add Products</span></a>
      <a href="getallproducts"><span class="btn btn-danger" style="margin-top:16px">Browse Products</span></a> 
 </div>
</div>
 

<div class="navbar  navbar-light" style="background-color:  #6666ff;  border-radius: 2px 0 0 2px; margin-top:60.213px">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav" style="margin-left:282px">  
      
       
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">SHOES</span><span style="color:white" class="caret"></span> </a>
           <ul class="dropdown-menu">
            <li><a href="searchbyCategory1">Running Shoes</a></li>
            <li><a href="searchbyCategory2">Cricket Shoes</a></li>
            <li><a href="searchbyCategory3">Football Shoes</a></li>
            <li><a href="searchbyCategory4">Basketball Shoes</a></li>
            <li><a href="searchbyCategory5">Tennis Shoes</a></li>
            <li><a href="searchbyCategory6">Boxing Shoes</a></li>
            <li><a href="searchbyCategory7">Squash Shoes</a></li>
           </ul>
         </li>
       
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">INDOOR SPORTS</span><span style="color:white" class="caret"></span></a>
       
        <ul class="dropdown-menu">
          <li><a href="searchbyCategory8">Table-Tennis</a></li>
          <li><a href="searchbyCategory9">Badminton</a></li>
          <li><a href="searchbyCategory10">Boxing</a></li>
          <li><a href="searchbyCategory11">Chess</a></li>
          <li><a href="searchbyCategory12">Basketball</a></li>
          
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" ><span style="color:white">OUTDOOR SPORTS</span><span style="color:white" class="caret"></span> </a>
        <ul class="dropdown-menu">
          <li><a href="searchbyCategory13">Cricket</a></li>
          <li><a href="searchbyCategory14">Football</a></li>
          <li><a href="searchbyCategory15">Rugby</a></li>
          <li><a href="searchbyCategory16">Baseball</a></li>
          <li><a href="searchbyCategory17">Tennis</a></li>
        </ul>
      </li>
       
        
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">GYM ACCESSORIES</span><span style="color:white" class="caret"></span> </a>
        <ul class="dropdown-menu">
          <li><a href="searchbyCategory18">Gym Gloves</a></li>
          <li><a href="searchbyCategory19">Dumbell Racks</a></li>
          <li><a href="searchbyCategory20">Belts</a></li>
          <li><a href="searchbyCategory21">Weight Plates</a></li>
          <li><a href="searchbyCategory22">Weight Rods</a></li>
          <li><a href="searchbyCategory23">Wrist Support</a></li>
          <li><a href="searchbyCategory24">Ankle Support</a></li>
          <li><a href="searchbyCategory25">Thigh Support</a></li>
          <li><a href="searchbyCategory26">Waist Support</a></li>
          <li><a href="searchbyCategory27">Knee support</a></li>
        </ul>
       </li>
       
       
       
       
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">CLOTHING</span><span style="color:white" class="caret"></span> </a>
           <ul class="dropdown-menu">
            <li><a href="searchbyCategory28">Track-Suits</a></li>
            <li><a href="searchbyCategory29">Lowers</a></li>
            <li><a href="searchbyCategory30">T-Shirts</a></li>
           </ul>
         </li>
         
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="color:white">INFRASTRUCTURE</span><span style="color:white" class="caret"></span> </a>
           <ul class="dropdown-menu">
            <li><a href="searchbyCategory31">Cricket-Pitch</a></li>
            <li><a href="searchbyCategory32">Football Ground</a></li>
            <li><a href="searchbyCategory33">Badminton-court</a></li>
           </ul>
         </li>
       
       
       
     
    </ul>
   
     
        <ul class="nav navbar-nav navbar-right">
            <c:url value="registrationform" var="registrationUrl"/>
            <c:url value="login" var="loginUrl"/>
            <li><a href="${registrationUrl}"><span style="color:white" class="glyphicon glyphicon-user"></span> <span style="color:white">Sign Up </span></a></li>
            <li><a href="${loginUrl}"><span style="color:white" class="glyphicon glyphicon-log-in"></span> <span style="color:white"  >Login</span></a></li>
            <br>
            
        </ul>
     </div> <!-- End container-fluid -->
  </div> <!-- End navbar -->
</body>
</html>