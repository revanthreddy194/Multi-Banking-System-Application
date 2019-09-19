  <%@page import="java.sql.*"%>
<%
String semail=request.getParameter("semail");
String spassword=request.getParameter("spassword");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/bank";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
if(semail.equals("server") && spassword.equals("server"))
{
	
	response.sendRedirect("serveroptions.jsp");
}
else
{
	
	response.sendRedirect("serverlogin.jsp");
}
%>