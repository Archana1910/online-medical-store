<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.io.*"%>
	<% 
PrintWriter outa = response.getWriter();
out.println("<script type=\"text/javascript\">");
out.println("alert('payement was successful !. we will be deleviring your order soon on the registered address  ');");
out.println("location='payment.jsp';");
out.println("</script>");
%>
</body>
</html>