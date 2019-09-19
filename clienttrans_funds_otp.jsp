<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="Mail.mail" %>
<%@page import="java.sql.*"%>

<%
	String tdate=request.getParameter("tdate");
	String debitaccnum=request.getParameter("debitaccnum");
	String debitaccbank=request.getParameter("debitaccbank");
	String debitcemail=request.getParameter("debitcemail");
	String debitaccholder=request.getParameter("debitaccholder");
	String creditaccnum=request.getParameter("creditaccnum");
	String creditaccbank=request.getParameter("creditaccbank");
	String creditcemail=request.getParameter("creditcemail");
	String creditaccholder=request.getParameter("creditaccholder");
	String amount=request.getParameter("amount");
	String status="waiting";
	
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/bank";
	String name="root";
	String pwd="root";
	Connection con=DriverManager.getConnection(url,name,pwd);
		
	String sql2="update temptrans set tdate=?,debitaccnum=?,debitaccbank=?,debitcemail=?,debitaccholder=?,creditaccnum=?,creditaccbank=?,creditcemail=?,creditaccholder=?,amount=?,status=? where const='const'";
	PreparedStatement pst2=con.prepareStatement(sql2);
	pst2.setString(1,tdate);
	pst2.setString(2,debitaccnum);
	pst2.setString(3,debitaccbank);
	pst2.setString(4,debitcemail);
	pst2.setString(5,debitaccholder);
	pst2.setString(6,creditaccnum);
	pst2.setString(7,creditaccbank);
	pst2.setString(8,creditcemail);
	pst2.setString(9,creditaccholder);
	pst2.setString(10,amount);
	pst2.setString(11,status);
	pst2.executeUpdate();
		
	Random RANDOM = new SecureRandom();
    int PASSWORD_LENGTH = 6;
    String letters = "0123456789";
    String uid = "";
    for (int i = 0; i < PASSWORD_LENGTH; i++) {
        int index = (int) (RANDOM.nextDouble() * letters.length());
        uid += letters.substring(index, index + 1);
    }
    
    String msg = "Kindly use the OTP:<" + uid + "> to complete your transaction.";
    System.out.println("Print Values :" + debitcemail + msg);


    mail.mailsend(msg, debitcemail);
	
	Statement ps=con.createStatement();
    int x5 = ps.executeUpdate("update clientbankacc set transpwd =  '"+uid+"' where cemail = '" + debitcemail + "'");
	
	System.out.println(debitcemail);
	
	if(x5!=0)
		{
			response.sendRedirect("clienttrans_funds_otpcheck.jsp?email="+debitcemail);
		}
	
	
	
%>