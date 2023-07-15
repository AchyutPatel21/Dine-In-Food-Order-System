
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="CSS/button.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

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
  
  <script src="bg_effect.js"></script>
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
  </style>
</head>
<body>



    


<div class="background">
 

<div class="jumbotron">
    <div class="container text-center" style="background: appworkspace">
          
    <div class="subhead-text">Marwadi Foods</div>
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
        <li><a href="cart.jsp"><h4><span class="glyphicon glyphicon-shopping-cart"></span> Cart</h4></a></li>
      	<li><a href="logout.jsp"><h4><span class="glyphicon glyphicon-user"></span> Log Out</h4></a></li> 
      </ul>
    </div>
  </div>
</nav> 
<p id="demo">
<script>

</script></p>
<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Gathiya</div>
        <div class="panel-body"><img src="img/gathiya.jpg" class="img-responsive" style="height:195px; width:100%" alt="Chicken Biryani"></div>
        <div class="panel-footer">Rs. 100 (Approx 250 Gm)</div>
       <a href="addToCart.jsp?p=1"><button class="button" style="vertical-align:middle" id="1" ><!-- onclick="confirmBox()" --><span>Add to cart </span></button></a>
       
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Jalebi</div>
        <div class="panel-body"><img src="img/jalebi.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 125 (Approx 250 Gm)</div>
        <a href="addToCart.jsp?p=2"><button class="button" style="vertical-align:middle" id="2" ><!-- onclick="confirmBox()" --><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Thepla</div>
        <div class="panel-body"><img src="img/thepla.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 30 (4 Piece)</div>
        <a href="addToCart.jsp?p=3"><button class="button" style="vertical-align:middle" id="3"> <!-- onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Gujarati Thali</div>
        <div class="panel-body"><img src="img/gujrati_thali.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 250</div>
        <a href="addToCart.jsp?p=4"><button class="button" style="vertical-align:middle" id="4"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Panjabi Thali</div>
        <div class="panel-body"><img src="img/panjabi_thali.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 275</div>
        <a href="addToCart.jsp?p=5"><button class="button" style="vertical-align:middle" id="5"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Chinese Manchurian Noodles</div>
        <div class="panel-body"><img src="img/MN.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 120</div>
        <a href="addToCart.jsp?p=6"><button class="button" style="vertical-align:middle" id="6"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Chinese Manchurian Rice</div>
        <div class="panel-body"><img src="img/MR.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 120</div>
        <a href="addToCart.jsp?p=7"><button class="button" style="vertical-align:middle" id="7"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Schezwan Fried Rice</div>
        <div class="panel-body"><img src="img/SR.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 100</div>
        <a href="addToCart.jsp?p=8"><button class="button" style="vertical-align:middle" id="8"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Chaas</div>
        <div class="panel-body"><img src="img/chass.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 25</div>
        <a href="addToCart.jsp?p=9"><button class="button" style="vertical-align:middle" id="9"><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Lassi</div>
        <div class="panel-body"><img src="img/lassi.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 60 (Approx 200 ml)</div>
        <a href="addToCart.jsp?p=101"><button class="button" style="vertical-align:middle" id="101"> <!-- onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Cold Drink</div>
        <div class="panel-body"><img src="img/CD.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 30</div>
        <a href="addToCart.jsp?p=102"><button class="button" style="vertical-align:middle" id="102"> <!-- onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Water</div>
        <div class="panel-body"><img src="img/water.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 20</div>
        <a href="addToCart.jsp?p=103"><button class="button" style="vertical-align:middle" id="103"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p>Designed and Developed by Achyut & Akhilesh</p>  
  
</footer>
</div>
</body>
</html>
