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
<a  href="Adminhome.html"><img src ="backbut.png" align="left" height="90px" > </a>
<body background="dna1.jpg">
	<h1 align="center">
		<font color="white"><strong>Customer pending request</strong></font>
	</h1>
	<table align="center" cellpadding="5" cellspacing="5" border="2">
		<tr>
		</tr>
		<tr bgcolor="FF00FF">
			<td><b>customer_id</b></td>
			<td><b>name</b></td>
			<td><b>email</b></td>
			<td><b>Status</b></td>
			
			<%
			try {
				connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
				statement = connection.createStatement();
				String sql = "select * from customer where status='pending'";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		
		<tr bgcolor="FF99FF">
			<td><%=resultSet.getString("customer_id")%></td>
			<td><%=resultSet.getString("name")%></td>
			<td><%=resultSet.getString("email")%></td>
			<td><%=resultSet.getString("status") %></td>
          <%
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
		
	</table>
	<h2 align="center">

		<form action="Accept.jsp" method="get">
			<label for="fname"><font color="white">Customer_id:</font color></label> <input type="text"
				id="customer_id" name="customer_id" required><br> <br>
			<button type="submit">ACCEPT</button>
			</form>
			<form action="Reject.jsp" method="get">
			<button type="submit">REJECT</button>
		</form>
	</h2>