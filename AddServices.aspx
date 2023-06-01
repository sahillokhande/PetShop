<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddServices.aspx.cs" Inherits="pETSHOPZ.AddServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div clss="container">
        <div class="form-horizontal">
            <h2>Add Services</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Service Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtServices" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" CssClass="text-danger" runat="server" ErrorMessage="Enter Category" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-btn-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddCategory" CssClass="btn btn-success" runat="server" Text="Add"  />
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <h2>Category</h2>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Services</div>
            <asp:Repeater ID="rptrService" runat="server">
                <HeaderTemplate>
                     <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Category</th>
                        <th>Edit</th>
                    </tr>
                </thead>

                <tbody>
                </HeaderTemplate>

                <ItemTemplate>
                     <tr>
                        <th><%# Eval("ServicesID") %></th>
                        <td><%# Eval("ServiceName") %></td>
                        <td>Edit</td>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                       
                </tbody>
            </table>
                </FooterTemplate>

            </asp:Repeater>
           
                
        </div>
    </div>

</asp:Content>


