<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.* ,java.io.*"%>
<%
 PrintWriter pw= response.getWriter();

   String n=request.getParameter("medicinename");  
String p=request.getParameter("medicinequantity"); 

try{
Class.forName("com.mysql.jdbc.Driver");

Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","akanksha");


   String query="insert into medicine(medicine_name,medicine_quantity)"+"values(?,?)";
   PreparedStatement ps=con.prepareStatement(query);
   ps.setString(1,n);
   ps.setString(2,p);
 int rowAffected= ps.executeUpdate();
  if(rowAffected==1)
  {
	  out.println("<script type=\"text/javascript\">");
	  out.println("location='Adminhome.html';");
	  out.println("alert('Medicine added in stock successfully ');");
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