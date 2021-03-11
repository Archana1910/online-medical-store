<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.PreparedStatement"%>
<%

 int flag=0;
 PreparedStatement ps=null;
 ResultSet rs=null;
 PrintWriter pw= response.getWriter();
 try{
 String n=request.getParameter("medicine_id");
 int v = Integer.parseInt(n);
 Class.forName("com.mysql.jdbc.Driver");
Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","akanksha");
Statement s=(Statement) con.createStatement();


rs=s.executeQuery("SELECT * FROM medicine where medicine_id=" +v);
if(rs.next())
{
String sql= "delete from medicine where medicine_id="+v;
s.executeUpdate(sql);
    out.println("<script type=\"text/javascript\">");
    out.println("location='Adminhome.html';");
	out.println("alert('Medicine deleted from added stock successfully ');");
	
	out.println("</script>");



}
else
{
	out.println("<script type=\"text/javascript\">");
	out.println("location='Adminhome.html';");
	out.println("alert('Please check the added stock andenter valid medicine id ');");
	
	out.println("</script>");



}
 }
          
              catch(SQLException ex)
  {
  
  ex.printStackTrace();
  } catch (ClassNotFoundException e1) {
  // TODO Auto-generated catch block
  e1.printStackTrace();
  pw.println(e1);
  
  
  }
  catch (NumberFormatException e3) {
  // TODO Auto-generated catch block
  e3.printStackTrace();

  
  }
  


%>