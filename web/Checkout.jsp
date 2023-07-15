<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Checkout</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="cart.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  .head-text {
    color: rgb(67, 202, 232);
    font-family: sans-serif;
    font-size: 200px;
  }
  .subhead-text{
    color: rgb(67, 202, 232);
    font-family: sans-serif;
    font-size: 70px;}
</style>

   <link rel="stylesheet" href="CSS/style.css">
<style>
  
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
     .jumbotron {
      margin-bottom: 0;
    }
   
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    .deco{
    text-align: center;
    font-family: initial;
	}
  </style>
</head>

<body>

  

<div class="jumbotron">
  <div class="container text-center">
    <!--<div class="head-text">Food</div>-->      
    <div class="subhead-text"> Order Confirmed</div>
    
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
          <li><a href="Welcome.jsp"><h4><span class="glyphicon glyphicon-shopping-cart"></span>Menu</h4></a></li>
      	<li><a href="logout.jsp"><h4><span class="glyphicon glyphicon-user"></span> Log Out</h4></a></li> 
      </ul>
    </div>
  </div>
</nav> 
	<%@ page import="java.sql.*,  java.util.ArrayList"%>
	<div class="container">
	<p> <h3 class="deco">Great! Your order with order id <%=session.getAttribute("order_id_key")%> has been confirmed. <br>
		It will reach you within couple of mins! <br>
		Your Total bill is : <%=session.getAttribute("total_bill")%> rs. <br>
		Thank you for ordering with us! <br></h3>

	</div>

</body>
</html>



 
