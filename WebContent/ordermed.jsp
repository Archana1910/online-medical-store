<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
<title>Order</title>
<meta charset="utf-8">

<!--//meta tags ends here-->
<!--booststrap-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">

<!--//booststrap end-->

<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->

<link href="css/pharma.css" rel='stylesheet' type='text/css' media="all">
<!-- banner text slider-->


<!--//style sheet end here-->
<style>
.img-box {
	position: relative;
	display: inline-block;
	width: 100%;
	overflow: hidden;
}

.crystal {
	position: relative;
	height: 300px;
	width: 300px;
	border: 2px solid black;
	padding: 3px;
	margin: 20px 10px 5px 20px;
	display: inline-block;
	overflow: hidden;
}

button {
	background-color: white;
	align: center;
	color: black;
	font-size: 15px;
	font-family: Matura MT Script Capitals;
	padding: 5px 40px;
	margin: 0px 5px;
	border: none;
	cursor: pointer;
	width: 40%;
	border-radius: 5%;
}

.img {
	display: block;
	width: 100%;
}

.middle {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	height: 500px;
	width: 100%;
	opacity: 0;
	transition: 4s ease;
	background: grey;
}

.crystal:hover .middle {
	opacity: 1;
}

.txt {
	background-color: grey;
	color: white;
	font-size: 16px;
	padding: 16px 32px;
	width: 100%;
}
.ab {

color: white;
font-size: 200%;
font-family: Matura MT Script Capitals;
text-align: center;
padding: 16px 32px;
width: 100%;
}
</style>
<script type="text/javascript">
        var currentValue = 0;
        var add = function(valueToAdd)		{
            alert("adding: " + valueToAdd);
            currentValue += valueToAdd;
            document.getElementById('number').innerHTML = currentValue;
         
        };
    </script>
</head>

<body background="dna1.jpg">
	<header> <nav
		class="navbar navbar-default navbar-fixed-top navbar-inverse">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->


		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">

			<ul class="nav navbar-nav navbar-right">
				<li><a href="homepage.jsp">Home</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="loginpage.jsp">Login</a></li>
				<li><a href="registration.jsp">Register</a></li>
				
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav> </header>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="ab">
   You Login as
  <%=session.getAttribute("username") %>
   select item to get your total billing
</div>
<form action="Paymentmethod.jsp">
	<font size="20" color="white">
        <div id="text" required>TOTAl AMOUNT: <span id="number" name="amount" required>0 Rs</span> 
			</div>
			<button type="submit" name="read">Order</button>
	</font>
	</form>
	<br>
	<br />
		
		<br> <br>
		<!-- main -->
		<div class="crystal">
			<img src="med/asthalin_inhaler_200md_0.jpg" height="500px"
				class="img">
			<div class="middle">
				<div class="txt">
					<center>
						asthalin_inhaler_200md<br> Medicine id=29<br> Instock 10
						<br> Rs. 260/- <a href="javascript:add (260)">Plus </a> <a
							href="javascript:add (-260)">Minus </a>
					</center>
				</div>
			</div>
		</div>

		<div class="crystal">
			<img src="med/benadryl_cough_formula_syrup_150ml_0.jpg"
				height="500px" class="img">
			<div class="middle">
				<div class="txt">
					<center>
						benadryl_cough_formula_syrup_150ml<br> Medicineid=30 <br>
						Instock 10 <br> Rs. 110/- <a href="javascript:add (110)">Plus
						</a> <a href="javascript:add (-110)">Minus </a>

					</center>
				</div>
			</div>
		</div>

		<div class="crystal">
			<img src="med/crocin_pain_relief_tablet_15_s_0.jpg" height="300px"
				class="img">
			<div class="middle">
				<div class="txt">
					<center>
						crocin_pain_relief_tablet_15_s_0.jpg<br> Medicineid=31 <br>
						Instock 10 <br> Rs. 165.79/-
						<div id="text">
							Medicine id 3:<span id="number">0</span>
							<div>
								<a href="javascript:add (165)">Plus </a> <a
									href="javascript:add (-165)">Minus </a>
					</center>
				</div>
			</div>
		</div>

		<div class="crystal">
			<img src="med/eyemist_forte_eye_drops_10ml_0.jpg" height="300px"
				class="img">
			<div class="middle">
				<div class="txt">
					<center>
						eyemist_forte_eye_drops_10ml<br> Medicineid=32 <br>
						Instock 10 <br> Rs. 280/- <a href="javascript:add (280)">Plus
						</a> <a href="javascript:add (-280)">Minus </a>
					</center>
				</div>
			</div>
		</div>

		<div class="crystal">
			<img src="med/headset_tablet_2_s_0.jpg" height="300px" class="img">
			<div class="middle">
				<div class="txt">
					<center>
						headset_tablet_2_s_0<br> Medicineid=33 <br>Instock 10 <br>
						Rs. 250/- <a href="javascript:add (250)">Plus </a> <a
							href="javascript:add (-250)">Minus </a>
					</center>
				</div>
			</div>
		</div>

		<div class="crystal">
			<img
				src="med/hiphop_charcoal_nose_strips_men_blackhead_remover_strips_3_s_0.jpg"
				height="300px" class="img">
			<div class="middle">
				<div class="txt">
					<center>
						hiphop_charcoal_nose_strips_men_blackhead <br> Medicineid=34
						<br> Instock 10 <br> Rs. 450/- <a
							href="javascript:add (450)">Plus </a> <a
							href="javascript:add (-450)">Minus </a>
					</center>
				</div>
			</div>
		</div>

		<div class="crystal">
			<img src="med/liv_52_tablet_100_s_0.jpg" height="300px" class="img">
			<div class="middle">
				<div class="txt">
					<center>
						liv_52_tablet_100 <br> Medicineid=35<br> Instock 13 <br>
						Rs. 120/- <a href="javascript:add (120)">Plus </a> <a
							href="javascript:add (-120)">Minus </a>

					</center>
				</div>
			</div>
		</div>
		<div class="crystal">
			<img src="med/paracip_500mg_tablet_10_s_0.jpg" height="300px"
				class="img">
			<div class="middle">
				<div class="txt">
					<center>
						paracip_500mg_tablet <br> Medicineid=36 <br> Instock 2 <br>
						Rs. 165.79/- <a href="javascript:add (165)">Plus </a> <a
							href="javascript:add (-165)">Minus </a>
					</center>
				</div>
			</div>
		</div>
		<div class="crystal">
			<img src="med/soliwax_ear_drops_10ml_0.jpg" height="300px"
				class="img">
			<div class="middle">
				<div class="txt">
					<center>
						soliwax_ear_drops<br> Medicineid=37 <br> Instock 13 <br>
						Rs. 165.79/- <a href="javascript:add (165)">Plus </a> <a
							href="javascript:add (-165)">Minus </a>

					</center>
				</div>
			</div>
		</div>
		<div class="crystal">
			<img src="med/vicks_baby_rub_50_ml_0.jpg" height="300px" class="img">
			<div class="middle">
				<div class="txt">
					<center>
						vicks_baby_rub_50_ml<br> Medicineid=38 <br> Instock 10 <br>
						Rs. 165.79/- <a href="javascript:add (165)">Plus </a> <a
							href="javascript:add (-165)">Minus </a>
					</center>
				</div>
			</div>
		</div>
		<br>
		<br>.
		<!-- //main -->
		<center></center>
</body>
</html>