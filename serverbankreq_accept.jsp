<%@page import="java.sql.*"%>
<%@page import="Mail.mail" %>
<%
String bid=request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
String status="accept";
String bemail="";
String url="jdbc:mysql://localhost:3306/bank";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);

String sql1="select bemail from bank where bid=?";
PreparedStatement ps1=con.prepareStatement(sql1);
ps1.setString(1,bid);
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
	bemail=rs1.getString("bemail");
}
System.out.print(bemail);
	
	String msg = "Alert! Your Bank Account " + bemail + " is accepted! ";


    mail.mailsend(msg, bemail); 

String sql="update bank set baccstatus='"+status+"' where bid='"+bid+"'";
Statement ps=con.createStatement();
int x=ps.executeUpdate(sql);
if(x!=0)
{
	response.sendRedirect("serverbankdetails.jsp");
}
%>
