<%@page import="java.sql.*"%>
<%
	int updated_debitaccbal=0;
	int updated_creditaccbal=0;
	int deb=0;
	int cred=0;
	int amt=0;
	String debitaccbal="";
	String creditaccbal="";
	String debitcemail="";
	String creditcemail="";
	String id=request.getParameter("id");
	String amount="";
	String status="accept";
	
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/bank";
	String name="root";
	String pwd="root";
	Connection con=DriverManager.getConnection(url,name,pwd);
	String sql=	;
	Statement ps=con.createStatement();
	ps.executeUpdate(sql);
	
	String sql1="select amount,debitcemail,creditcemail from transactions where id=?";
	PreparedStatement pst1=con.prepareStatement(sql1);
	pst1.setString(1,id);
	ResultSet rs1=pst1.executeQuery();
	while (rs1.next()) {
		amount=rs1.getString("amount");
		debitcemail=rs1.getString("debitcemail");
		creditcemail=rs1.getString("creditcemail");
	}
	
	String sql2="select balance from clientbankacc where cemail=?";
	PreparedStatement pst2=con.prepareStatement(sql2);
	pst2.setString(1,debitcemail);
	ResultSet rs2=pst2.executeQuery();
	while (rs2.next()) {
		debitaccbal=rs2.getString("balance");
	}
		
	deb = Integer.parseInt(debitaccbal);
	amt = Integer.parseInt(amount);
	
	updated_debitaccbal = deb - amt; 
	
	String sql3="update clientbankacc set balance=? where cemail=?";
		
	PreparedStatement pst3=con.prepareStatement(sql3);
	pst3.setInt(1,updated_debitaccbal);
	pst3.setString(2,debitcemail);
	pst3.executeUpdate();
		
		
	String sql4="select balance from clientbankacc where cemail=?";
	PreparedStatement pst4=con.prepareStatement(sql4);
	pst4.setString(1,creditcemail);
	ResultSet rs4=pst4.executeQuery();
	while (rs4.next()) {
		creditaccbal=rs4.getString("balance");
	}
		 
	cred = Integer.parseInt(creditaccbal);
		
	updated_creditaccbal = cred + amt;
			

	String sql5="update clientbankacc set balance=? where cemail=?";
		
	PreparedStatement pst5=con.prepareStatement(sql5);
	pst5.setInt(1,updated_creditaccbal);
	pst5.setString(2,creditcemail);
	int x=pst5.executeUpdate();
	if(x!=0)
	{
		response.sendRedirect("bankalltrans.jsp");
	}



%>
