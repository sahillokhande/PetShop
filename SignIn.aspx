<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="pETSHOPZ.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale="1"/>
    <meta http-equiv="X-UA-Compatible" content="Google Chrome"/>
    <link rel="stylesheet" href="style.css"/>
     <link rel="stylesheet" href="Custom.css"/>
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
   
</head>
<body style="background-image: url(Slider/bg1.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;}">
    <form id="form1" runat="server">

         <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
           <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                            </button>
                        <a class="navbar-brand" href="WebForm1.aspx"></a>
                            <!--- <span><img alt="Pet shop" class="logo" src="IMAGES/LOGO.png" /></span> -->
                            </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                          <li><a href="deafult.aspx">HOME</a></li>
                            <li><a href="Blog.aspx">Payment</a></li>
                            <li><a href="Product.aspx">Product</a></li>
                            
                            

                           
                          <li class="dropdown">
                              <a href="Services.aspx" class="dropdown-toggle" data-toggle="dropdown"> Services </a>
                              <ul class ="dropdown-menu">
                              <li class="dropdown-header">Dog</li>
                              <li> <a href="DogBath.aspx">Bathing</a></li>
                              <li> <a href="DogBath.aspx">Ear Clening</a></li>
                              <li> <a href="DogBath.aspx">Grooming</a></li>
                             <li> <a href="DogBath.aspx">Nail Trimming</a></li>
                            <li> <a href="DogBath.aspx">Tooth Brushing</a></li>

                                 
                                 <li class="dropdown-header">Cat</li>
                              <li> <a href="DogBath.aspx">Bathing</a></li>
                               <li> <a href="DogBath.aspx">Ear Clening</a></li>
                              <li> <a href="DogBath.aspx">Grooming</a></li>
                              <li> <a href="DogBath.aspx">Nail Trimming</a></li>
                              <li> <a href="DogBath.aspx">Tooth Brushing</a></li>

                                  </ul>
                              </li>

                            <li class="dropdown">
                              <a href="Category.aspx" class="dropdown-toggle" data-toggle="dropdown">Category</a>
                              <ul class ="dropdown-menu">
                              <li class="dropdown-header">Dog Tools</li>
                              <li> <a href="Category.aspx">Toys</a></li>
                              <li> <a href="CLOTHS.aspx">Cloths</a></li>
                             

                                  <li class="dropdown-header">Cat Tools</li>
                              <li> <a href="Category.aspx">Toys</a></li>
                              <li> <a href="CATCLOTHS.aspx">Cloths</a></li>
                  </ul>
                                </li>

                            <li>
                           <a href ="Login.aspx">SignUp</a>
                            </li>
                            
                            <li>
                           <a href ="SignIn.aspx">SignIn</a>
                            </li>
                    </div>
                    </div>
                    </div>
                 </div>

        <!-----SIGNIN FORM START---->

        <div class="container">
            <div class="form-horizontal mt-70">
                <h2>Login Form</h2>
            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Username: "></asp:Label>
            <div class="col-md-3" >
                <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="Enter User Name" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>    
            </div>
           

            <div class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="Label2"  CssClass="col-md-2 control-label" runat="server" Text="Password: "></asp:Label>
            <div class="col-md-3" >
                <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass ="text-danger " ErrorMessage="Enter Password" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                
                </div>
            </div>    
                </div>
         
         <div class="form-horizontal">
        <div class="form-group">
            <div class="col-md-2"></div>
            <div class="col-md-6">

                <asp:CheckBox ID="CheckBox1" runat="server"/>
                <asp:Label ID="Label3" CssClass="control-label" runat="server" Text="Remember Me"></asp:Label>
                </div>
            </div>   

              <div class="form-group">
            <div class="col-md-2"></div>
            <div class="col-md-6">

                <asp:Button ID="btnlogin"  NavigateUrl="~/deafult.aspx"  CssClass="btn btn-success" runat="server" Text="Login&raquo;" OnClick="btnlogin_Click1"/>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Sign Up</asp:HyperLink>
            </div>
            </div>

             <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>
                    </div>
                </div>
    </form>
</body>
</html>


