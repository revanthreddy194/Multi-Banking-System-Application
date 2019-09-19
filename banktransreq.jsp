      <!DOCTYPE html>
<!--
Template Name: Decentium
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html>
<head>
<title>M-BS*</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/dwn2.jpg');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="index.html">Multi-Banking System</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class=""><a href="index.html">Home</a></li>
		  <li class=""><a href="clientlogin.jsp">Client</a></li>
		  <li class="active"><a href="banklogin.jsp">Bank</a></li>
		  <li class=""><a href="serverlogin.jsp">Server</a></li>
		  <li class=""><a href="banklogin.jsp">Logout</a></li>

         </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
 
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear" style="padding-top: 100px;padding-bottom: 50px;">
    <div class="flexslider basicslider"> 
      
	  <div class="content three_quarter">
			
	  </div>
    </div>
  </div>
  <div id="breadcrumb" class="hoc clear" style="padding-top: 50px;"> 
    <!-- ################################################################################################ -->
    <ul>
      <li><a href="index.html">Home</a></li>
	  <li><a href="banklogin.jsp">Bank</a></li>	  
      <li><a href="#">Pending Transaction Requests</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </div>

  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->

<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sidebar one_quarter first"> 
      <!-- ################################################################################################ -->
      <h6>${bemail}</h6>
      <nav class="sdb_holder">
        <ul>
		  <li><a href="bankalltrans.jsp">All Transactions</a></li>
          <li><a href="banktransreq.jsp">Pending Transaction Requests</a></li>
          <li><a href="bankallclients.jsp">All Clients</a></li>
          <li><a href="bankclientreq.jsp">Pending Client Requests</a></li>
        </ul>
      </nav>
      <div class="sdb_holder">
        
      
      </div>
      <div class="sdb_holder">
        
      </div>
      <!-- ################################################################################################ -->
    </div>
	<div class="content three_quarter"> 
      <!-- ################################################################################################ -->
		<h1>Pending Transaction Requests</h1>
        <div class="scrollable">
        <table>
          <thead>
            <tr>
			  <th>T-ID</th>
			  <th>T-Date</th>
              <th>Debitor Bank</th>
			  <th>Debitor Email-ID </th>
			  <th>T-Amount</th>
              <th>Creditor Bank</th>
			  <th>Creditor Email-ID </th>
			  <th>Action</th>
			</tr>
					<%@page import="java.sql.*"%>
					<%
						String bname="";
						Class.forName("com.mysql.jdbc.Driver");
						String url="jdbc:mysql://localhost:3306/bank";
						String name="root";
						String pwd="root";
						Connection con=DriverManager.getConnection(url,name,pwd);
						
						Statement st1 = con.createStatement();		
		
						ResultSet rs1 = st1.executeQuery("select bname from currentbank where const ='const'");
		
						while(rs1.next())
						{	
							bname = rs1.getString(1);
							
						}
						
						String sql="select id,tdate,debitaccnum,debitaccbank,debitcemail,amount,creditaccnum,creditaccbank,creditcemail,status from transactions where debitaccbank=? and status='waiting'";
						PreparedStatement st=con.prepareStatement(sql);
						st.setString(1,bname);

						ResultSet rs=st.executeQuery();
						while (rs.next()) {
					%>
            <tr>
				<td><%=rs.getString("id")%></td>
                <td><%=rs.getString("tdate")%></td>
				<td><%=rs.getString("debitaccbank")%></td>
				<td><%=rs.getString("debitcemail")%></td>
                <td><%=rs.getString("amount")%></td>
                <td><%=rs.getString("creditaccbank")%></td>
                <td><%=rs.getString("creditcemail")%></td>
				<td><a href="banktransreq_accept.jsp?id=<%=rs.getString("id")%>"><span>Accept</span>
								</a>/<a href="banktransreq_reject.jsp?id=<%=rs.getString("id")%>"><span>Reject</span></a>
				</td>
           </tr>
					<%}
					%>
          </thead>
          <tbody>
				
          </tbody>
        </table>
      </div>

			
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<div class="wrapper row4">
  <footer id="footer" class="hoc clear" style="padding-bottom: 2px;padding-top: 2px;"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
     
    </div>
    <div class="one_third">
     
    </div>
    <div class="one_third">
     
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>


<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">M-BS*</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>

<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>

<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script src="layout/scripts/jquery.flexslider-min.js"></script>
</body>
</html> 