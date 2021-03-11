<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.PreparedStatement"%>

<%
	int flag = 0;
	PreparedStatement ps = null;
	ResultSet rs = null;
	PrintWriter pw = response.getWriter();
	try {
		String n = request.getParameter("customer_id");
		int v = Integer.parseInt(n);
		String q = request.getParameter("password");
		String z = request.getParameter("pswd1");

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy", "root",
				"akanksha");
		Statement s = (Statement) con.createStatement();

		rs = s.executeQuery("SELECT * FROM customer where password='" + q + "' and customer_id=" + v);
		if (rs.next()) {

			String sql = "UPDATE customer SET password='" + z + "' WHERE customer_id=" + v;
			s.executeUpdate(sql);

			out.println("<script type=\"text/javascript\">");
			out.println("window.alert('YOUR PASSWORD CHANGED SUCCESSFULLY  ')");
			 out.println("location='customerlogin.html';");
			out.println("</script>");

		} else {

			out.println("<script type=\"text/javascript\">");
			out.println("window.alert('PLEASE ENTER CORRECT CUSTOMERID AND PASSWORD  ')");
			out.println("</script>");

		}

	} catch (ClassNotFoundException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
		pw.println(e1);

	}
%>