<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products1.aspx.cs" Inherits="pETSHOPZ.Products1" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>PRODUCT</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale="1"/>
    <meta http-equiv="X-UA-Compatible" content="Google Chrome"/>
    <link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <style>
        h2 {
            font-family: 'pedigree_lightregular';
    font-size: 18px;
    color: #000;
    padding: 10px 35px;
        }
        .item-box {
            box-shadow: rgb(0 0 0 / 24%) 0px 3px 8px;
            padding: 10px;
           margin: 10px 10px;
        }
        .btn {
            padding: 10px 20px;
    background: #c00;
    color: #fff;
    margin-right: 10px;
        }
        img {
            height: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!---PRODUCT--->
        <div class="container">
            <h2 style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal; color: #000000; border-width: thin; border-style: none; font-weight: normal;">Dog Food </h2>
                    <br />
            <div class="row">
                <div class="col-lg-4">
                    <div class="item-box">
                    <img   src="IMAGES/Pedigree.jpg" alt="" width="150" height="150" /> <h2> Pedigree</h2>
                    <p> <a class="btn btn-default" href="Packages.aspx" role="button" >ADD TO CART</a></p>
                </div>
</div>

                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img   src="IMAGES/Royal.jpg" alt="" width="150" height="150" /> <h2>Royal Canin</h2>
                    <p><a class="btn btn-default" href="Packages.aspx" role="button" >ADD TO CART</a></p>
                </div>
</div>

                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img   src="IMAGES/Drool.jpg" alt="" width="150" height="150" /> <h2> Drools</h2>
                    <p><a class="btn btn-default" href="Packages.aspx" role="button" >ADD TO CART</a></p>
                </div>
                    </div>

                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img   src="IMAGES/PUR.jpg" alt="" width="150" height="150" /> <h2> Purepet</h2>
                    <p><a class="btn btn-default" href="Packages.aspx" role="button" >ADD TO CART</a></p>
                </div>
</div>

                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img   src="IMAGES/ND.jpg" alt="" width="150" height="150" /> <h2>&nbsp; N&D</h2>
                    <p><a class="btn btn-default" href="Packages.aspx" role="button" >ADD TO CART</a></p>
                </div>
</div>

                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img   src="IMAGES/FAR.jpg" alt="" width="150" height="150" /> <h2> FARING</h2>
                    <p><a class="btn btn-default" href="Packages.aspx" role="button" >ADD TO CART</a></p>
                </div>
                  </div>

                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img   src="IMAGES/FAR.jpg" alt="" width="150" height="150" /> <h2> FARING</h2>
                    <p><a class="btn btn-default" href="Packages.aspx" role="button" >ADD TO CART</a></p>
                </div>
                 </div>

                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img   src="IMAGES/ND.jpg" alt="" width="150" height="150" /> <h2>&nbsp; N&D</h2>
                    <p><a class="btn btn-default" href="Packages.aspx" role="button" >ADD TO CART</a></p>
                </div>

               </div>

                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img   src="IMAGES/FAR.jpg" alt="" width="150" height="150" /> <h2> FARING</h2>
                    <p><a class="btn btn-default" href="Packages.aspx" role="button" >ADD TO CART</a></p>
                </div>


         </div>
        </div>
         <!---BRIDAL PACKAGES--->

        </div>
    </form>
</body>
</html>