  <%@page import="java.sql.*"%>
<%
String bname=request.getParameter("bname");
String brname=request.getParameter("brname");
String bemail=request.getParameter("bemail");
String bpassword=request.getParameter("bpassword");
String bbranch=request.getParameter("bbranch");
String bheadoff=request.getParameter("bheadoff");
String bphoneno=request.getParameter("bphoneno");
String baccstatus="waiting";
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/bank";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="insert into bank (bname,brname,bemail,bpassword,bbranch,bheadoff,bphoneno,baccstatus) values (?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,bname);
ps.setString(2,brname);
ps.setString(3,bemail);
ps.setString(4,bpassword);
ps.setString(5,bbranch);
ps.setString(6,bheadoff);
ps.setString(7,bphoneno);
ps.setString(8,baccstatus);
int x=ps.executeUpdate();
if(x!=0)
{
	response.sendRedirect("banklogin.jsp");
}
%>