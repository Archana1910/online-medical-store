<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.* ,java.io.*"%>
<%

String name=request.getParameter("username");
session.putValue("username",name);
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","akanksha");
Statement st= con.createStatement();
String query= "select * from customer where name='"+name+"'";
ResultSet rs=st.executeQuery(query);
PrintWriter pw= response.getWriter();
if(rs.next())
{
if(rs.getString("password").equals(password)&&rs.getString("name").equals(name))
{

response.sendRedirect("ordermed.jsp");
}	

else
{   
	response.setContentType("text/html");
    pw.println("<body background=black>");
	pw.println("<center><h1><font color=white>Invalid password or username!.</font></h1></center>");
	pw.println("<center><h1><font color=white>Please try login with valid credentials!.</font></h1></center>");
	  pw.println("</body>");
	
}
}
%>