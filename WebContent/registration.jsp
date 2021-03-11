<html>
<head>
<meta charset="ISO-8859-1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />

<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="registration.css">
<script src="https://account.snatchbot.me/script.js"></script>
<script>window.sntchChat.Init(73853)</script>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: blue;
}
</style>
</head>
<ul>
  <li><a  href="homepage.jsp">Home</a></li>
  <li><a href="about.html">About</a></li>
  <li><a  class ="active" href="registeration.jsp">Register</a></li>
  <li><a href="loginpage.jsp">Login</a></li>
</ul>

<h2 ALIGN="CENTER"><font color="white"> Dear customer please register to buy medicines!</font>
	<b></b>
</h2>
<center>
	<div class="register">
		<form id="register" method="get" action="registerdb.jsp">
			<table border="0" align="center">
				<tbody>
					<tr>
						<td><label for="name">Name: </label></td>
						<td><input id="name" class="form-control" maxlength="50"
							name="name" type="text" required /></td>
					</tr>
					<tr>
						<td><label for="email">Email_Address:</label></td>
						<td><input id="email" class="form-control" maxlength="50"
							name="email" type="text" required /></td>
					</tr>
					<tr>
						<td><label for="phone number">Phone No: </label></td>
						<td><input id="phonenumber" class="form-control"
							maxlength="50" name="course" type="text" required /></td>
					</tr>
					<tr>
						<td><label for="address">Address:</label></td>
						<td valign="middle" align="center"><textarea class="rounded"
								rows="2" cols="25" required></textarea></td>
					</tr>
					<tr>
						<td><label for="country">Country: </label></td>
						<td><input id="country" class="form-control" maxlength="50"
							name="country" type="text" required /></td>
					</tr>

					<tr>
						<td><label for="adharnumber">Aadhar No: </label></td>
						<td><input id="adharnumber" class="form-control"
							maxlength="50" name="rollno" type="text" required /></td>
					</tr>

					<tr>
						<td><label for="password">Password:</label></td>
						<td><input id="password" class="form-control" maxlength="50"
							name="password" type="password" required /></td>
					</tr>
					<tr>
						<td><label for="confirmpassword">Confirm Password:</label></td>
						<td><input id="confirmpassword" class="form-control"
							maxlength="50" name="confirmpassword" type="password" required /></td>
					</tr>
					<tr>
						<td align="middle"><input
							class="text-center rounded font-weight-bold" name="Submit"
							type="Submit" id="submit" value="Submit" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</center>
</html>