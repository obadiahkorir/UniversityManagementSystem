<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="CommissionSystem.Signin" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0"/>
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png"/>
        <title>Login - Students</title>
		<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css"/>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="main-wrapper">
			<div class="account-page">
				<div class="container">
					<h3 class="account-title">University Education Management System</h3>
					<div class="account-box">
						<div class="account-wrapper">
							<div class="account-logo">
								<a href="index.html"><img src="assets/img/Logo.jpg" alt="Students Management"></a>
							</div>
						
                                  <div id="feedback" runat="server"></div>
								<div class="form-group form-focus">
									<label class="control-label">Username or Email</label>
                                    <asp:TextBox ID="username" runat="server" class="form-control floating"></asp:TextBox>
									
								</div>
								<div class="form-group form-focus">
									<label class="control-label">Password</label>
                                    <asp:TextBox ID="password" runat="server" class="form-control floating" Textmode="password"></asp:TextBox>
								
								</div>
								<div class="form-group text-center">
                                        <asp:Button ID="Btnlogin" runat="server" class="btn btn-primary btn-block account-btn" Text="Sign In" OnClick="Login_OnClick"/>
									
								</div>
     
								<div class="text-center">
									<a href="Forgot_Password.aspx">Forgot your password?</a>
								</div>
							   <hr/>
                            <center>
                       &copy; <%: DateTime.Now.Year %> -DESIGNED & EDITED BY  <a href="http://www.dynasoft.co.ke" runat="server" target="blank">Dynasoft Business Solutions</a>
                                </center>
						</div>
					</div>
				</div>
			</div>
        </div>
		<div class="sidebar-overlay" data-reff="#sidebar"></div>
        <script type="text/javascript" src="assets/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="assets/js/app.js"></script>
    </div>
    </form>
</body>
</html>
