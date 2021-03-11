<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.PreparedStatement"%>
<%

	PrintWriter pw = response.getWriter();
	try {

		String customer_id = request.getParameter("customer_id");
		int v = Integer.parseInt(customer_id);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy", "root",
				"akanksha");
		String sql = "UPDATE customer SET status=? WHERE customer_id=?";
		PreparedStatement s = con.prepareStatement(sql);

		s.setString(1, "Approved");
		s.setInt(2, v);
		s.executeUpdate();
		out.println("<script type=\"text/javascript\">");
		out.println("alert('ACCEPTED');");
		out.println("location='Pending.jsp';");
		out.println("</script>");

	} catch (SQLException ex) {

		ex.printStackTrace();
	} catch (ClassNotFoundException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();

	} catch (NumberFormatException e3) {
		// TODO Auto-generated catch block
		e3.printStackTrace();
		out.println("<script type=\"text/javascript\">");
		out.println("alert('PLEASE ENTER CUSTOMER ID  ');");
		out.println("</script>");

	}
%>