<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="pETSHOPZ.Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Packages</title>
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
            <!---DOG--->
           <hr />
            <div class="container">
                 <h2 style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal; color: #000000; border-width: thin; border-style: none; font-weight: normal;">FUN TOYS</h2>
                    
            </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img src="IMAGES/DOG1.jpg" alt=""  /> <h2>Rope</h2>
                    <p><a class="btn btn-default" href="Login.aspx" role="button"  >ADD TO CART</a></p>
                </div> </div>

                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img   src="IMAGES/DOG2.jpg" alt=""   /> <h2>Ball</h2>
                    <p><a class="btn btn-default" href="Login.aspx" role="button"  >ADD TO CART</a></p>
                </div>
                </div>
              
       
                <div class="col-lg-4">
                    <div class="item-box">  
                    <img  src="IMAGES/CAT1.jpg" alt=""   /> <h2 > Mouce</h2>
                    <p><a class="btn btn-default" href="Login.aspx" role="button">ADD TO CART</a></p>
                </div>
                 </div>

                <div class="col-lg-4">
                    <div class="item-box"> 
                    <img   src="IMAGES/CAT2.jpg" alt=""  /> <h2>House Keep</h2>
                  <p> <a class="btn btn-default" href="Login.aspx" role="button">ADD TO CART</a></p>
                </div>
                    </div>
                 <div class="col-lg-4">
                    <div class="item-box">  
                    <img  src="IMAGES/CAT1.jpg" alt=""   /> <h2 > Mouce</h2>
                    <p><a class="btn btn-default" href="Login.aspx" role="button">ADD TO CART</a></p>
                </div>
                 </div>
                 <div class="col-lg-4">
                    <div class="item-box">  
                    <img  src="IMAGES/CAT1.jpg" alt=""   /> <h2 > Mouce</h2>
                    <p><a class="btn btn-default" href="Login.aspx" role="button">ADD TO CART</a></p>
                </div>
                 </div>
         </div>
        </div>
        <!---DOG--->
       
        </div>
    </form>
</body>
</html>
