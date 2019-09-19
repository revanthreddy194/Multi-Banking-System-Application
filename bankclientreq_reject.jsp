  <%@page import="java.sql.*"%>
<%
String cid=request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
String status="accept";
String url="jdbc:mysql://localhost:3306/bank";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="update client set caccstatus='"+status+"' where bid='"+cid+"'";
Statement ps=con.createStatement();
int x=ps.executeUpdate(sql);
if(x!=0)
{
	response.sendRedirect("bankallclients.jsp");
}
%>