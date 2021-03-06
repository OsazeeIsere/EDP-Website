<%@ Page Title="" Language="C#" MasterPageFile="~/Site1mater2.Master" AutoEventWireup="true" CodeBehind="paymentdetails.aspx.cs" Inherits="EDP_Website.paymentdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="line"></div>
    <div class="container">
        <div class="col-lg-12" >
    <h3 style="color:orange;text-align:center"><span><asp:Label ID="lbmsg" runat="server" Text=""></asp:Label> </span></h3>

        </div>
</div>
<div class="container">
<div class="col-lg-12 col-md-12" style="align-self:auto">
                                  <div class="row">
                                      <h3 style="text-align:center">Please Enter Your Payment Details</h3>
                                      <hr style="color:sandybrown" />
                                      </div>
   
                        <form class="appointment-form">
                          <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Sender Account Name <span class="required">*</span>
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter The Account name" ID="txtaccountname" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Bank<span class="required">*</span>
                              </label>
                                <asp:DropDownList class="wp-form-control wpcf7-select" ID="ddlbank" runat="server">
                                    <asp:ListItem Text="Select " Value="select"></asp:ListItem>
                                    <asp:ListItem Text="FirstBank " Value="FirstBank"></asp:ListItem>
                                    <asp:ListItem Text="Zenith" Value="Zenith"></asp:ListItem>
                                    <asp:ListItem Text="GTBank" Value="GTBank"></asp:ListItem>
                                    </asp:DropDownList>
                                 </div>
                          </div>

                            <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Teller Number/Transaction Ref.No 
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Teller or transaction Ref.No" ID="txtteller" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Pament Method <span class="required">*</span>
                              </label>
                                <asp:DropDownList class="wp-form-control wpcf7-select" ID="ddlmethod" runat="server">
                                    <asp:ListItem Text="Select " Value="select"></asp:ListItem>
                                    <asp:ListItem Text="Cash Deposit" Value="Cash Deposit"></asp:ListItem>
                                    <asp:ListItem Text="Transfer" Value="Transfer"></asp:ListItem>
                                    <asp:ListItem Text="Phamagateway" Value="Phamagateway"></asp:ListItem>
                                    <asp:ListItem Text="Phampay" Value="Phampay"></asp:ListItem>
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
    </div>
</asp:Content>
