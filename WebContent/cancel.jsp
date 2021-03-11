<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
div {
	height: 455px;
	width: 45%;
	background: url(img/pay.jpg);
	padding: 5px 5px 5px 5px;
	border: 5px solid white;
	margin: 80px 250px 80px 300px;
}

textarea {
	width: 50%;
	height: 100px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	background-color: #f8f8f8;
	font-size: 16px;
	resize: none;
}

div:hover {
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
<body>
	<form action="payment.jsp" method="post">
		<div>
			<center>
				<h2>Please provide us some feedback</h2>
			</center>
			<u>You have chosen to abort this transaction. Could you please
				tell us why?</u><br> <input type="radio" name="reasons" value="1"
				required>I cannot find my bank payment option.<br> <input
				type="radio" name="reasons" value="2" required>I don't
			remember my 2nd factor password.<br> <input type="radio"
				name="reasons" value="3" required>My browser is not loading
			properly.<br> <input type="radio" name="reasons" value="4"
				required>I do not wish to complete this payment right now.<br>
			<input type="radio" name="reasons" value="5" required>Any
			other reason.<br>
			<textarea placeholder="Please specify your reason here."></textarea>
			<font color="black"><h3>Please provide your email id and
					mobile number to support you further:</h3></font> E-mail: <input type="email"
				name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
				required> Mobile no:<input type="number" name="mobile"
				placeholder="+91" value="+91" maxlength="13" required><br>
			<br>
			<center>
				<a href="payment.jsp"><input type="submit"
					value="Abort Transaction"></a><br> <font color="white"><a
					href="payment.jsp" color="white">Continue</a></font>
			</center>
		</div>
	</form>
</body>
</html>