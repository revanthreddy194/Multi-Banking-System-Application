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
		  <li class="active"><a href="clientlogin.jsp">Client</a></li>
		  <li class=""><a href="banklogin.jsp">Bank</a></li>
		  <li class=""><a href="serverlogin.jsp">Server</a></li>
		  <li class=""><a href="clientlogin.jsp">Logout</a></li>

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
	  <li><a href="clientlogin.jsp">Client</a></li>	  
      <li><a href="#">Create New Account</a></li>
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
      <h6>${cemail}</h6>
      <nav class="sdb_holder">
        <ul>
          <li><a href="clientmyacc.jsp">My Accounts</a></li>
          <li><a href="clientcreateacc.jsp">Create New Account</a></li>
          <li><a href="clienttrans_hist.jsp">Transaction History</a></li>
          <li><a href="clienttrans_funds.jsp">Transfer Funds</a></li>
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
		<h1>Create New Account</h1>
        <div class="scrollable">
        <form action="clientcreateacc_insert.jsp" method="post">
		<table>
          <thead>
			<tr>
              <th><label>User Name (Email-ID)</label></th>
			  <td><input type="text" name="cemail" placeholder="Your Login username" required></td>
			</tr>
            <tr>
              <th><label>Account Number</label></th>
			  <td><input type="number" name="accnum" placeholder="" required></td>
			</tr>
			<tr>
              <th><label>Account Bank</label></th>
			  <td><select name="accbank">
					<option value="sbi">SBI</option>
					<option value="canara">Canara Bank</option>
					<option value="andhra">Andhra bank</option>
					<option value="uco">Uco Bank</option>
					<option value="icici">ICICI Bank</option>
					<option value="hdfc">HDFC</option>
				  </select></td>
			</tr>
			<tr>
              <th><label>Holder Name</label></th>
			  <td><input type="text" name="accholder" placeholder="" required></td>
			</tr>
			<tr>
              <th><label>Type of A/C</label></th>
			  <td><select name="acctype">
					<option value="savings">Savings Bank</option>
					<option value="current">Current</option>
					<option value="loan">Loan</option>
				  </select>
			  </td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="submit"></td>
				
			</tr>
			
          </thead>
          <tbody>
				
          </tbody>
        </table>
		</form>
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