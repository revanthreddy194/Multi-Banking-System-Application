<%@page import="java.sql.*"%>
<%
String bid=request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
String status="reject";
String url="jdbc:mysql://localhost:3306/bank";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="update bank set baccstatus='"+status+"' where bid='"+bid+"'";
Statement ps=con.createStatement();
int x=ps.executeUpdate(sql);
if(x!=0)
{
	response.sendRedirect("serverbankdetails.jsp");
}
%>