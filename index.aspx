<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EmpSalaryCalc.frmLogin" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
	<title>Sign up and Subscribe Form </title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Sign up and Subscribe Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
		
	<link href="css/style.css" rel='stylesheet' type='text/css'/>
	<link href="css/font-awesome.css" rel="stylesheet"> <!-- Font-Awesome-Icons-CSS -->
	<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700&amp;subset=devanagari,latin-ext" rel="stylesheet">

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
			<script src="js/jquery.min.js"></script>
			<script>$(document).ready(function(c) {
			$('.alert-close').on('click', function(c){
				$('.main-agile').fadeOut('slow', function(c){
					$('.main-agile').remove();
				});
			});	  
		});
		</script>
</head>
<body>
<form  method="post" runat="server">
<div class="layer">
	<h1>Sign up & Subscribe Form</h1>
	<div class="main-agile1">
		<div class="w3layouts-main">
					<h2>Sign Up with</h2>
					
						<div class="social_icons agileinfo">
							<ul class="top-links">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									</ul>
						</div>
						
						<span>(or)</span>
						<h3>Have an account?</h3>
						
							<div class="email">
							
                            <asp:TextBox ID="txtEmail" runat="server"  CssClass="txtBox" Placeholder="E-Mail" TextMode="Email" />
							<span class="icons i1"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
							</div>
							<div class="email">
							<asp:TextBox ID="txtPassword" runat="server" CssClass="txtBox" Placeholder="Password" TextMode="Password" >Password</asp:TextBox>
							<span class="icons i2"><i class="fa fa-unlock" aria-hidden="true"></i></span>
							</div>
							
                            <asp:Button ID="btnLogin" runat="server" Text="Get Started" CssClass="submit" OnClick="btnLogin_Click" /> 
						
		</div>
		<div class="main-agile">
			<div class="alert-close"> </div>
			<div class="content-wthree">
				<i class="fa fa-paper-plane-o" aria-hidden="true"></i>
				<h2>Subscribe</h2>
				<p>subscribe to get our latest updates!</p>
				<p>drop a mail to join our newsletter for free news</p>
				
					<div class="email">
					
                        <asp:TextBox ID="txtSubsEmail" runat="server" Placeholder="Enter Your Email" CssClass="txtBox email" TextMode="Email"/>
					<span class="icons i1"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
					</div>          
                    <asp:Button ID="btnSubscribe" runat="server" Text="Get Started" CssClass="submit" /> 
				
			</div>
		</div>
		<div class="clear"></div>
	</div>
  
	<div class="footer-w3l">
		<p class="agileinfo"> &copy; 2018 Sign Up and Subscribe Form. All Rights Reserved | Design by <a href="#">B Group of Technology</a></p>
	</div>
</div>
      </form>
</body>
</html>
