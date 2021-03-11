<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.PreparedStatement"%>
<%
PrintWriter pw= response.getWriter();
String n=request.getParameter("name");  
String p=request.getParameter("email");  
String e=request.getParameter("phonenumber");  
String l=request.getParameter("address");
String a=request.getParameter("country");  
String b=request.getParameter("adharnumber");  
String d=request.getParameter("password");  
String q=request.getParameter("confirmpassword");    

try{
Class.forName("com.mysql.jdbc.Driver");

Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","akanksha");


    String query="insert into customer(name, email, phoneno, address, country, adhar, password, confirmpass)"+"values(?,?,?,?,?,?,?,?)";
    PreparedStatement ps=con.prepareStatement(query);
    ps.setString(1,n);
    ps.setString(2,p);
    ps.setString(3,e);
    ps.setString(4,l);
    ps.setString(5,a);
    ps.setString(6,b);
    ps.setString(7,d);
    ps.setString(8,q);
    
  int rowAffected= ps.executeUpdate();
   if(rowAffected==1)
   {
	   
	   out.println("<script type=\"text/javascript\">");
	   out.println("alert('You are a registered customer now');");
	   out.println("location='customerlogin.html';");
	   out.println("</script>");

   }
   con.close();
}
 catch(SQLException ex)
{

ex.printStackTrace();
} catch (ClassNotFoundException e1) {
// TODO Auto-generated catch block
e1.printStackTrace();
}
%>