<%@ Page Title="" Language="C#" MasterPageFile="~/Site1mater2.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="EDP_Website.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-12">
                <h3 style="color:orange;text-align:center"><asp:Label ID="lbmsg" runat="server" Text=""></asp:Label></h3>
            <asp:Image ID="Image1" runat="server" />
            <asp:Label ID="lbimage" runat="server" Text=""></asp:Label>
            <asp:Image ID="Image2" runat="server" />
        </div>
    </div> 

</asp:Content>
