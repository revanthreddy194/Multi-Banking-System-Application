 <%@page import="java.sql.*"%>
<%
String cemail=request.getParameter("cemail");
String cpassword=request.getParameter("cpassword");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/bank";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="select * from client where cemail=? and cpassword=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,cemail);
ps.setString(2,cpassword);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	String sql1="update currentclient set cemail='"+cemail+"' where const='const'";
	Statement ps1=con.createStatement();
	ps1.executeUpdate(sql1);
	session.setAttribute("cemail",cemail);
	response.sendRedirect("clientoptions.jsp");
}
else
{
	response.sendRedirect("clientlogin.jsp");
}
%>	