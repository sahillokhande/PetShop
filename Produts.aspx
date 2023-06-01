<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Produts.aspx.cs" Inherits="pETSHOPZ.Produts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div class="row">
      <div class="col-md-12">
                    
      </div>
    </div>

    <div class="row" style="padding-top:50px">
      <br />
      <hr />

       <asp:repeater ID="rptrProducts" runat="server">
           <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
          <div class="thumbnail">              
              <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("ImageName") %>" />
              <div class="caption">
                   <div class="proName"> <%# Eval("PName")  %></div>
                   <div class="proPrice"> <span class="proOgPrice" > <%# Eval("PPrice")  %> </span>
                   
              </div>
          </div>
                </a>
        </div>
               
               </ItemTemplate>
       </asp:repeater>
    </div>
</asp:Content>
