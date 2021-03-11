<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;900&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="homepage.css">
<link href="loginpage.css" rel="stylesheet" type="text/css" media="all">
<title>Payment Method</title>
<style>
.box {
	height: 300px;
	width: 30%;
	background: url("card.jpg");
	padding: 5px, 5px, 5px, 5px;
}

.box:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

input[type=submit] {
	background-color: black;
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

input[type=submit]:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body background="dna1.jpg">
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
	 <a  href="ordermed.jsp"><img src ="backbut.png" align="left" height="90px" > </a> 
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->


		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">

			<ul class="nav navbar-nav navbar-right">
				<li><a href="homepage.jsp">Home</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="loginpage.jsp">Login</a></li>
				
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
   
	<center>
		<div class="box">
			<h1>Payment method</h1>
			<a href="Cod.jsp"><input type="submit"
				value="COD(Cash On Delivery)" required></a><br> <a
				href="payment.jsp"><input type="submit" value="Onlinepayment" required></a>
			<br>
		</div>
		<br>
		<br>
		<form method="post" action="logout.jsp">
				<button class="button">
					<span>customer logout </span>
				</button>
			</form>
	</center>
</body>
</html>