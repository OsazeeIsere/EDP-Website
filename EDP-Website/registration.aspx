﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="EDP_Website.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
		<title>Registration Form</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css"/>
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            	<div class="wrapper">
			<div class="image-holder">
				<img src="images/registration-form-8.jpg" alt="" />
			</div>
			<div class="form-inner">
				<form action="">
					<div class="form-header">
						<h3>Sign up</h3>
						<img src="images/sign-up.png" alt="" class="sign-up-icon">
					</div>
					<div class="form-group">
						<label for="">Username:</label>
						<input type="text" class="form-control" data-validation="length alphanumeric" data-validation-length="3-12">
					</div>
					<div class="form-group">
						<label for="">E-mail:</label>
						<input type="text" class="form-control" data-validation="email">
					</div>
					<div class="form-group" >
						<label for="">Password:</label>
						<input type="password" class="form-control" data-validation="length" data-validation-length="min8">
					</div>
                    
					<button runat="server" onclick="btnsbmit_Click">create my account</button>
					<div class="socials">
						<p>Sign up with social platforms</p>
						<a href="" class="socials-icon">
							<i class="zmdi zmdi-facebook"></i>
						</a>
						<a href="" class="socials-icon">
							<i class="zmdi zmdi-instagram"></i>
						</a>
						<a href="" class="socials-icon">
							<i class="zmdi zmdi-twitter"></i>
						</a>
						<a href="" class="socials-icon">
							<i class="zmdi zmdi-tumblr"></i>
						</a>
					</div>
				</form>
			</div>
			
		</div>
		
		</div>
    </form>
    <script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/jquery.form-validator.min.js"></script>
		<script src="js/main.js"></script>
        
</body>
</html>
