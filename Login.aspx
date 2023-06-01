<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="pETSHOPZ.Login" %>



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
  
    <body  style="background-image: url(Slider/bg7.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
}">
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
        <!--SignUp-->
        <div class="center-page mt-90">
            <label class="col-xs-11" >Name: </label> 
           <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" CssClass="Form-control" placeholder="Enter Name"></asp:TextBox>
            </div>    

            <label class="col-xs-11" >Password: </label> 
           <div class="col-xs-11">
            <asp:TextBox ID="txtPass" runat="server" CssClass="Form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
            </div>    

            <label class="col-xs-11" >Confirm Password: </label> 
           <div class="col-xs-11">
            <asp:TextBox ID="txtCPass" runat="server" CssClass="Form-control" placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>
            </div>    

            <label class="col-xs-11" >Email: </label> 
           <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="Form-control" placeholder="Enter Email"></asp:TextBox>
            </div>
                        
            <label class="col-xs-11" >Contact: </label> 
           <div class="col-xs-11">
            <asp:TextBox ID="txtContact" runat="server" CssClass="Form-control" placeholder="Enter Contact"></asp:TextBox>
            </div>   
              
            <label class="col-xs-11" >Address: </label> 
           <div class="col-xs-11">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="Form-control" placeholder="Enter Address"></asp:TextBox>
            </div> 
            
            <br />
            <br />   <br />   <br />
            <div class="col-xs-11">
                <asp:Button ID="Btn" runat="server" Text="SignUp" CssClass="btn btn-success"  OnClick="txtsignup_Click1" />
                

                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignIn.aspx">Already have account ?</asp:HyperLink>

          </div>
            
            </div>
        <!---SIgup ENd--->
</form>
    </body>
    </html>
