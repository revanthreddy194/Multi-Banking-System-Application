 <%@page import="java.sql.*"%>
<%
String cname=request.getParameter("cname");
String cgender=request.getParameter("cgender");
String cemail=request.getParameter("cemail");
String cpassword=request.getParameter("cpassword");
String cphoneno=request.getParameter("cphoneno");
String caddress=request.getParameter("caddress");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/bank";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="insert into client (cname,cgender,cemail,cpassword,cphoneno,caddress) values (?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,cname);
ps.setString(2,cgender);
ps.setString(3,cemail);
ps.setString(4,cpassword);
ps.setString(5,cphoneno);
ps.setString(6,caddress);
int x=ps.executeUpdate();
if(x!=0)
{
	response.sendRedirect("clientlogin.jsp");
}
%>