<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PAY.aspx.cs" Inherits="pETSHOPZ.PAY" %>










<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Services</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale="1"/>
    <meta http-equiv="X-UA-Compatible" content="Google Chrome"/>
    <link rel="stylesheet" href="style.css"/>
     <link rel="stylesheet" href="Custom.css"/>
    <link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
      <style>
       input {
           width: 100%;
    padding: 7px;
    margin: 5px 0 11px 0;
    border: none;
    background: #f1f1f1;
       }
   </style>
</head>
    <body style="background-image: url(Slider/SERVICES.jpg);
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
                              <a href="" > Services </a>
                              <ul class ="dropdown-menu">
                             

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
              <!--SignUp-->
        <div class="center-page mt-90">
            <label class="col-xs-11" >Enter Your Name </label> 
           <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" CssClass="Form-control" placeholder="Enter Your Name"></asp:TextBox>
            </div>
            
             <label class="col-xs-11" >Enter Contact Number </label> 
           <div class="col-xs-11">
            <asp:TextBox ID="txtDname" runat="server" CssClass="Form-control" placeholder="Enter Contact no"></asp:TextBox>
            </div>

             <label class="col-xs-11" >Enter Address </label> 
           <div class="col-xs-11">
            <asp:TextBox ID="txtBreed" runat="server" CssClass="Form-control" placeholder="Enter Breed"></asp:TextBox>
            </div>

           
             
             <div class="col-xs-11">
                <asp:Button ID="txtSubmit" CssClass="btn btn-success" runat="server" Text="Submit"   />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>

          </div>
            </div>
        <!---SIgup ENd--->
</form>

    </body>
</html>
