<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deafult.aspx.cs" Inherits="pETSHOPZ.deafult" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PET PARADISE</title>
<meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale="1"/>
    <meta http-equiv="X-UA-Compatible" content="Google Chrome"/>
    <link rel="stylesheet" href="style.css"/>
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
    <style>
    body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1500px;
  position: relative;
  margin: auto;
}
 
</style>
</head>
<body>
     <div class="container">
         <div class="row">
             <div class="col-lg-3">
                 <p><i class="fa fa-telephone"></i><a href="tel:000">+91 0000000</a></p>
             </div>

         </div>
         </div>
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
                        <a class="navbar-brand" href="deafult.aspx"></a>
                             <span><img alt="Pet shop" class="logo" src="IMAGES/LOGO.png" /></span> 
                            </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                          <li><a href="deafult.aspx">HOME</a></li>
                            
                            <li><a href="FOOD.aspx">Product</a></li>
                            

                                  <li class="dropdown">
                              <a href="Login.aspx" > Services </a> </li>
                           <!---   <ul class ="dropdown-menu">
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
                              </li> --->
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

            <!---imageslider-->

 
           <div class="slideshow-container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" ></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item">
        <img src="Slider/bg1.jpg"  alt="PETSOP" style="width:100%;"/>
          <div class="carousel-caption">
         <h2>BEST FOODS</h2>
        <p></p>
              </div>

      </div>

      <div class="item ">
        <img src="Slider/bg2.jpg" alt="PETSOP" style="width:100%;"/>
          <div class="carousel-caption">
                <h2>QUALITY FOODS</h2>
        <p></p>
              </div>

      </div>
    
      <div class="item active">
          <img src="Slider/bg3.jpg" alt="PETSOP" style="width:100%;"/>
           <div class="carousel-caption">
               <h2>BEST DISCOUNT ON PRODUCTS</h2>
          <p></p>
               </div>
      </div>

         <div class="item">
          <img src="Slider/bg4.jpg" alt="PETSOP" style="width:100%;"/>
              <div class="carousel-caption">
                  <h2>HEALTHY PRODUCT/FOODS</h2>
             <p></p>
                  </div>
      </div>
         <div class="item">
          <img src="Slider/bg5.jpg" alt="PETSOP" style="width:100%;"/>
              <div class="carousel-caption">
                  <h2>CATCHY TOYS</h2>
             <p></p>
                  </div>
      </div>
         <div class="item">
          <img src="Slider/bg6.jpg" alt="PETSOP" style="width:100%;"/>
              <div class="carousel-caption">
                  <h2>FUN TOYS</h2>
             <p></p>
                  </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
        <!---imageslider-->
             <hr />
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <br />
                      <h2 style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal; color: #000000; border-width: thin; border-style: none; font-weight: normal; text-align: center;"> We Provide Best Product</h2>
                    &nbsp;&nbsp;&nbsp;
                    <img class="img-circle" src="IMAGES/Pedigree.jpg" alt="" width="150" height="150" /> <h1 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QUALITY FOODS</h1>
                    <p><a class="btn btn-default" href="FOOD.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>

                <br /><br /><br /><br />
                <div class="col-lg-4">

                    <img class="img-circle" src="IMAGES/D4.jpg" alt="" width="150" height="150" /> <h2 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DOG CLOTHS</h2>
                    <p></p>
                    <p><a class="btn btn-default" href="CLOTHS.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>

                <div class="col-lg-4">
                    &nbsp;&nbsp;&nbsp;
                    <img class="img-circle" src="IMAGES/C2.jpg" alt="" width="150" height="150" /> <h1 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CAT CLOTHS</h1>
                    <p></p>
                    <p><a class="btn btn-default" href="CATCLOTHS.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>

            </div>
        </div>
           
        <!---PACKAGES--->
           <hr />
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <br /><br />
                    <h2 style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal; color: #000000; border-width: thin; border-style: none; font-weight: normal;">BEST PRODUCT</h2>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <img class="img-circle" src="IMAGES/TOY.jpg" alt="" width="150" height="150" /> <h1 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DOG TOYS</h1>
                    <p><a class="btn btn-default" href="Category.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>

                <div class="col-lg-4">
                    <br /><br /><br /><br /><br /><br />
                    &nbsp;&nbsp;&nbsp;
                    <img class="img-circle" src="IMAGES/CAT1.jpg" alt="" width="150" height="150" /> <h1 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CAT TOYS</h1>
                    <p><a class="btn btn-default" href="Category.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>
                 <div class="col-lg-4">
                    <br /><br /><br /><br /><br /><br />
                    &nbsp;&nbsp;&nbsp;
                    <img class="img-circle" src="IMAGES/services.jpg" alt="" width="150" height="150" /> <h1 style="font-family: 'Times New Roman'; font-size: large; font-weight: normal; font-style: normal; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; OUR SERVICES</h1>
                    <p><a class="btn btn-default" href="Services.aspx" role="button">CLICK HERE TO KNOW MORE</a></p>
                </div>
         </div>
        </div>
       
         <!---PACKAGES--->

        <!----FOOTER CONTENT  STARTS--->
                 <footer style="background-color: black; color: white; font-size: 19px;padding:30px 0px;margin-top:70px">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4">
                                <h3>About Us</h3>
                                <p>Furry Tales is the  one of the Famouse Pet Shop In the andheri, We Provide Best Product For Our Customer, Also we Provide Best Services   </p>
                            </div>

                            <div class="col-lg-4">
                                <h3>Quick Links</h3>
                                <p><a href="deafult.aspx" class="a">Home</a></p>
  
                                <p><a href="DogBath.aspx" class="a">Our Services</a></p>
                                
                            </div>

                            <div class="col-lg-4">
                                <h3>Contact Us</h3>
                                <p> Address : Shop No 10, Marol Pipe Line , Andheri(E), Mumbai-400059</p>
                                <p>Phone No : <a class="a" href="tel:7021411890" style="text-decoration:none">+91 702 141 1890</a></p>
                                <p>Email Id : <a class="a" href="mailto:studio@gmail.com"> petshop@gmail.com</a></p>
                            </div>


                        </div>
                    </div>
                    <hr />
                  
                 
            <div class="container">
                <p class="pull-right"><a href="deafult.aspx"> BACK TO TOP </a></p>
                <p> 2022&copy;PetShop &middot; All Rights Reserved  </p>
            </div>
        </footer >
        <!----FOOTER CONTENT END--->

    </form>

</body>
</html>
