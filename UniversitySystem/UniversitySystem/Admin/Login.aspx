<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UniversitySystem.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
<title>Page Title</title>


      <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/style.css" rel="stylesheet" />

    <script src="Scripts/modernizr-2.8.3.js"></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body class="login-body">


<section class="login-block">
    <div class="container">
	<div class="row">
		<div class="col-md-4 login-sec">
		    <h2 class="text-center">Login Now</h2>
		    <form class="login-form" runat="server">
              <div class="form-group">
                <label for="exampleInputEmail1" class="text-uppercase">Username</label>
                 <asp:TextBox class="form-control" ID="txtUserName" placeholder="Username" runat="server" />
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1" class="text-uppercase">Password</label>
                  <asp:TextBox ID="txtPassword" class="form-control" placeholder="Parolanız" runat="server" TextMode="Password" />
              </div>
  
  
                <div class="form-check">

                <label class="form-check-label">
                    <asp:CheckBox ID="rememberCheck" runat="server" class="form-check-input"/>
                  <small>Remember Me</small>
                </label>
                <asp:Button OnClick="loginBtn_Click" class="btn btn-login float-right" ID="loginBtn" runat="server" Text="Submit" />
                    <asp:Label ID="statusLabel" Text="" runat="server" />
              </div>
  
            </form>

		</div>
		<div class="col-md-8 ">
            <img class="img-responsive" src="../Images/background.jpg" alt="First slide">
		    
		</div>
	</div>
</div>
</section>
	
	
	
	
	
        <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
        <script src="../Scripts/jquery-3.4.1.js"></script>
        <script src="../Scripts/bootstrap.js"></script>
</body>


</html>