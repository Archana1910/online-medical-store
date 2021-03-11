<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Online payment</title>
<style>
.box {
	height: 525px;
	width: 50%;
	background: url("card1.jpg");
	padding: 5px, 5px, 5px, 5px;
}

.box:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

ab {
	font-family: "Times New Roman", Times, serif;
}

input[type=submit] {
	background-color: grey;
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

input[type=text] {
	width: 50%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	background-color: white;
}

input[type=text]:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body background="dna1.jpg">
	<center>
		<br> <br> <br>

		<div class="box">
			<form
				action="https://www.instamojo.com/@instamojo/” rel=“im-checkout” data-behaviour=“remote” data-style=“light” data-text=“Checkout With Instamojo"
				method="post">
				<center>
					<font color="white"><h2>
							<b><u>MODE OF PAYMENT</u></b>
						</h2></font> <br>
					<h3>
						<font color="white"><input type="radio" name="card"
							value="Credit Card" required>Credit Card</font> <font
							color="white"><input type="radio" name="card"
							value="Debit Card" required>Debit Card</font>
				</center>
				<font color="white"><h4>
						Card Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="text" name="cardno" placeholder="XXXX-XXXX-XXXX-XXXX"
							maxlength="18" required="0-9">
					</h4></font> <font color="white"><h4>
						Expiration Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
							name="expdate" placeholder="MM/YY" maxlength="5" required>
					</h4></font> <font color="white"><h4>
						Card Holder Name <input type="text" name="holdername"
							placeholder="Enter card holder name" required></font>
				</h4>
				<center>
					<font color="white"><input type="submit"
						value="Make Payment"></font>
				</center>
				<center>
					<font color="white"><a href="cancel.jsp">Cancel</a></font>
				</center>
			</form>
			</h3>
		</div>


	</center>
</body>
</html>