<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://account.snatchbot.me/script.js"></script>
<script>window.sntchChat.Init(73853)</script>
<link href="loginpage.css" rel="stylesheet" type="text/css" media="all">
<title>Insert title here</title>
</head>

<body background="dna1.jpg">
 <a  href="Adminhome.html"><img src ="backbut.png" align="left" height="90px" > </a> 
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%
		String id = request.getParameter("userId");
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String dbName = "pharmacy";
		String userId = "root";
		String password = "akanksha";
		try {

			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
	%>
	<h2 align="center">
		<font color="white"><strong>MEDICINES STOCK</strong></font>
	</h2>
	<br>
	<br>
	<table align="center" cellpadding="10" cellspacing="10" border="2">
		<tr>
		</tr>
		<tr bgcolor="#A52A2A">
			<td><b>medicine_id</b></td>
			<td><b>Medicine_name</b></td>
			<td><b>Medicine_quantity</b></td>
			<%
				try {
					connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
					statement = connection.createStatement();
					String sql = "SELECT * FROM medicine";
					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
			%>
		
		<tr bgcolor="#DEB887">
			<td><%=resultSet.getString("medicine_id")%></td>
			<td><%=resultSet.getString("Medicine_name")%></td>
			<td><%=resultSet.getString("Medicine_quantity")%></td>
			<%
				}
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		
	</table>
	<br>
	<br>
	<br>
	<center>
		<form method="post" action="logout.jsp" align="middle">
			<button class="button">
				<span>Pharmacist logout </span>
			</button>
		</form>
	</center>
</body>
</html>