 <%@page import="java.sql.*"%>
<%
String debitcemail=request.getParameter("debitcemail");
String transpwd=request.getParameter("otp");

System.out.println(debitcemail);

System.out.println(transpwd);

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/bank";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);

String sql="select * from clientbankacc where cemail=? and transpwd=?";
PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1,debitcemail);
ps.setString(2,transpwd);

ResultSet rs=ps.executeQuery();
if(rs.next())
{
	response.sendRedirect("clienttrans_funds_init.jsp?email="+ debitcemail);	
}
else
{
	response.sendRedirect("clienttrans_funds.jsp");
}
%>