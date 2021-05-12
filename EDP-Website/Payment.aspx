<%@ Page Title="" Language="C#" MasterPageFile="~/Site1mater2.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="EDP_Website.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-12">
                <h2 style="color:orange;text-align:center"><asp:Label ID="lbmsg" runat="server" Text=""></asp:Label></h2>
            <asp:Label ID="lbimage" runat="server" Text=""></asp:Label>
        </div>
        <asp:GridView ID="gvImages" runat="server" CssClass="table table-bordered table-condensed" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound">
    <Columns>
        <asp:BoundField HeaderText="Member ID" DataField="memberid" />
        <asp:BoundField HeaderText="Firstname" DataField="firstname" />
        <asp:TemplateField HeaderText = "Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="80" Width="80" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
        <asp:DataList ID="dlvimage" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyField="memberid" DataMember="firstname" ForeColor="Black" OnItemDataBound="dlvimage_ItemDataBound">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                <asp:Label ID="lbid" runat="server" Text='<%# Eval("memberid") %>' /> <br />
                <asp:Label ID="lbfirstname" runat="server" Text='<%# Eval("firstname") %>' /><br />
                <asp:Image ID="Image2" runat="server" Height="80px" Width="60px"/>
                </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
    </div> 
    
</asp:Content>
