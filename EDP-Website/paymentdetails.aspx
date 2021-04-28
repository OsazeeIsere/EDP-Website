<%@ Page Title="" Language="C#" MasterPageFile="~/Site1mater2.Master" AutoEventWireup="true" CodeBehind="paymentdetails.aspx.cs" Inherits="EDP_Website.paymentdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lbmsg" runat="server" Text="Label"></asp:Label>
<div class="col-lg-4 col-md-4" style="align-self:auto">
        
                        <form class="appointment-form">
                          <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Sender Account Name <span class="required">*</span>
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter The Account name" ID="txtaccountname" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Bank<span class="required">*</span>
                              </label>
                                <asp:DropDownList class="wp-form-control wpcf7-select" ID="ddlbank" runat="server">
                                    <asp:ListItem Text="Select " Value="select"></asp:ListItem>
                                    <asp:ListItem Text="Method 1" Value="Method 1"></asp:ListItem>
                                    <asp:ListItem Text="Method 2" Value="Method 2"></asp:ListItem>
                                    <asp:ListItem Text="Method 3" Value="Method 3"></asp:ListItem>
                                    </asp:DropDownList>
                                 </div>
                          </div>

                            <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Teller Number 
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Teller if there is" ID="txtteller" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Pament Method <span class="required">*</span>
                              </label>
                                <asp:DropDownList class="wp-form-control wpcf7-select" ID="ddlmethod" runat="server">
                                    <asp:ListItem Text="Select " Value="select"></asp:ListItem>
                                    <asp:ListItem Text="Method 1" Value="Method 1"></asp:ListItem>
                                    <asp:ListItem Text="Method 2" Value="Method 2"></asp:ListItem>
                                    <asp:ListItem Text="Method 3" Value="Method 3"></asp:ListItem>
                                    </asp:DropDownList>
                                 </div>
                                </div>
                                 <div class="row">

                                <div class="col-md-6 col-sm-6">
                              <label class="control-label">Amount Paid <span class="required">*</span>
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter The Amount Paid" ID="txtamout" runat="server"></asp:TextBox>
                            </div>
                              <div class="col-md-6 col-sm-6">
                              <label class="control-label">Transaction Date <span class="required">*</span>
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Select Payment Date" ID="txtdate" Text="Date" TextMode="Date" runat="server"></asp:TextBox>

                            </div>
                         </div>
                          

                          <%--<input type="text" class="wp-form-control wpcf7-text" placeholder="Subject">
                          <textarea class="wp-form-control wpcf7-textarea" cols="30" rows="10" placeholder="What would you like to tell us"></textarea>
                          --%>
                            <asp:LinkButton class="wpcf7-submit button--itzel" ID="uploadpmtdetails" OnClick="uploadpmtdetails_Click" runat="server"><i class="button__icon fa fa-share"></i><span>Submit</span></asp:LinkButton>
                        </form>
                      </div>

</asp:Content>
