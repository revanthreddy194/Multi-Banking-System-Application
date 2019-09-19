 <%@page import="java.sql.*"%>
<%
String cemail=request.getParameter("cemail");
String accnum=request.getParameter("accnum");
String accbank=request.getParameter("accbank");
String accholder=request.getParameter("accholder");
String acctype=request.getParameter("acctype");
String cid="";
String cpassword="";
String transpwd="waiting";
String balance="waiting";
String status="waiting";
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/bank";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
PreparedStatement pst = con.prepareStatement("select cpassword,cid from client where cemail = ?");
pst.setString(1,cemail);
ResultSet rs =pst.executeQuery();

while(rs.next())
		{	
			cpassword = rs.getString(1);
			cid = rs.getString(2);
		}


String sql="insert into clientbankacc (accnum,accbank,accholder,acctype,cid,cpassword,transpwd,cemail,balance,status) values (?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,accnum);
ps.setString(2,accbank);
ps.setString(3,accholder);
ps.setString(4,acctype);
ps.setString(5,cid);
ps.setString(6,cpassword);
ps.setString(7,transpwd);
ps.setString(8,cemail);
ps.setString(9,balance);
ps.setString(10,status);

int x=ps.executeUpdate();
if(x!=0)
{
	response.sendRedirect("clientmyacc.jsp");
}
%>