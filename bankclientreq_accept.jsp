<%@page import="java.sql.*"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/bank";
	String name="root";
	String pwd="root";
	Connection con=DriverManager.getConnection(url,name,pwd);
    String cid=request.getParameter("id");
	String email=request.getParameter("email");
	String status="accept";

	
	
	String sql="update clientbankacc set status='"+status+"', balance='100000' where cid='"+cid+"'";
	Statement ps1=con.createStatement();
	int x=ps1.executeUpdate(sql);
	if(x!=0)
	{
		response.sendRedirect("bankallclients.jsp");
	}
%>