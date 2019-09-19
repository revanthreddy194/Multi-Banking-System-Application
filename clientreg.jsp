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
         </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
 
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear" style="padding-top: 100px;">
    <div class="flexslider basicslider"> 
      
	  <div class="content three_quarter">
			<form action="clientinsert.jsp" method="post" style="padding-top: 0px;" name="myForm" >
				<table cellspacing="" cellpadding="">
				
					<div><h3 style="padding-left: 50px;">Client Registration</h3></div>
					<br>
					<div>
						<tr>
						<th height="50"><label>Name</label></th>
						<td style="background-color: #373737;padding-bottom: 10px;padding-left: 10px;">
						<input style="background-color: rgba(255,255,255,.4);" type="text" name="cname" placeholder="" required></td>
						</tr>
					</div>
					<div>
						<tr>
						<th><label>Gender</label></th>
						<td style="background-color: #373737;padding-bottom: 10px;padding-left: 10px;">
						<input type="radio" name="cgender" value="male"> Male <br>
						<input type="radio" name="cgender" value="female"> Female
						</td>
						</tr>
					</div>
					<div>
						<tr>
						<th height="50"><label>Email</label></th>
						<td style="background-color: #373737;padding-bottom: 10px;padding-left: 10px;">
						<input style="background-color: rgba(255,255,255,.4);" type="email" name="cemail" placeholder="" required></td>
						</tr>
					</div>
					<div>
						<tr>
						<th height="50"><label>Password</label></th>
						<td style="background-color: #373737;padding-bottom: 10px;padding-left: 10px;">
						<input style="background-color: rgba(255,255,255,.4);" type="password" name="cpassword" placeholder="" required></td>
						</tr>
					</div>
					<div>
						<tr>
						<th height="50"><label>Phone Number</label></th>
						<td style="background-color: #373737;padding-bottom: 10px;padding-left: 10px;">
						<input style="background-color: rgba(255,255,255,.4);" type="number" name="cphoneno" placeholder="" required></td>
						</tr>
					</div>
					<div>
						<tr>
						<th><label>Address</label></th>
						<td style="background-color: #373737;padding-bottom: 10px;padding-left: 10px;">
						<textarea style="background-color: rgba(255,255,255,.4);" name="caddress" placeholder="" required></textarea></td>
						</tr>
					</div>
					<div>
						<td height="30" style="background-color: #373737;padding-left: 130px;"><input style="background-color: #929292;" type="reset" value="reset"></td>
						<td style="background-color: #373737;padding-left: 60px;"><input style="background-color: #929292;" type="submit" value="submit"></td>
					</div>
			
				</table>
			
			</form>
	  </div>
    </div>
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->

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