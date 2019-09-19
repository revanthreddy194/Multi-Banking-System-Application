<%@page import="java.sql.*"%>
<%
String bname=request.getParameter("bname");
String bemail=request.getParameter("bemail");
String bpassword=request.getParameter("bpassword");
String baccstatus="accept";
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/bank";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="select * from bank where bemail=? and bpassword=? and baccstatus=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,bemail);
ps.setString(2,bpassword);
ps.setString(3,baccstatus);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	String sql1="update currentbank set bname='"+bname+"' where const='const'";
	Statement ps1=con.createStatement();
	ps1.executeUpdate(sql1);
	session.setAttribute("bemail",bemail);
	response.sendRedirect("bankoptions.jsp");
}
else
{
	response.sendRedirect("bankloginaccwaiting.jsp");
}
%>