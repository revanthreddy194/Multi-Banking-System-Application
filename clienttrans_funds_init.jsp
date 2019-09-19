<%@page import="java.sql.*"%>
<%
	String debitcemail=request.getParameter("email");
	String amount="";
	String creditcemail="";
	String debitaccbal="";
	String creditaccbal="";
	int updated_debitaccbal=0;
	int updated_creditaccbal=0;
	int deb,amt,cred;
	
	System.out.println(debitcemail);
	
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/bank";
	String name="root";
	String pwd="root";
	Connection con=DriverManager.getConnection(url,name,pwd);
	
	String sql1="select * from clientbankacc where cemail=?";
	PreparedStatement pst1=con.prepareStatement(sql1);
	pst1.setString(1,debitcemail);
	ResultSet rs1=pst1.executeQuery();
	while (rs1.next()) {
		debitaccbal=rs1.getString("balance");
	}
	
	System.out.println(debitaccbal);
		
	String sql2="select * from temptrans where debitcemail=?";
	PreparedStatement pst2=con.prepareStatement(sql2);
	pst2.setString(1,debitcemail);
	ResultSet rs2=pst2.executeQuery();
	while (rs2.next()) {
		amount=rs2.getString("amount");
		creditcemail=rs2.getString("creditcemail");
	}
	
	deb = Integer.parseInt(debitaccbal);
	amt = Integer.parseInt(amount);
	
	if(deb >= amt)
	{	
		String sql3="insert into transactions (tdate,debitaccnum,debitaccbank,debitcemail,debitaccholder,creditaccnum,creditaccbank,creditcemail,creditaccholder,amount,status) SELECT tdate,debitaccnum,debitaccbank,debitcemail,debitaccholder,creditaccnum,creditaccbank,creditcemail,creditaccholder,amount,status FROM temptrans WHERE debitcemail=?";
		PreparedStatement pst3=con.prepareStatement(sql3);
		pst3.setString(1,debitcemail);
		int x3=pst3.executeUpdate();
		
		
		if(x3!=0)
		{
			response.sendRedirect("clienttrans_hist.jsp");
		}
	}
	else
	{
		response.sendRedirect("clienttrans_fail.jsp");
	}
	
	
%>