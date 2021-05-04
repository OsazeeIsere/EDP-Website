<%@ Page Title="" Language="C#" MasterPageFile="~/Site1mater2.Master" AutoEventWireup="true" CodeBehind="Clearance.aspx.cs" Inherits="EDP_Website.Clearance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12">
                <h3 style="color:orange"><asp:Label ID="lbmsg" runat="server" Text=""></asp:Label></h3>
        </div>
    </div>
       </div>
<div class="container">
<div class="col-lg-12 col-md-12" style="align-self:auto">
                                  <div class="row">
                                     <div class="section-heading"> <h3 style="text-align:center">Please Is The Following Payment Already Verified?</h3></div>
                                      <hr style="color:sandybrown" />
                                      </div>
                        <form class="appointment-form">
                          <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Sender Account Name 
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="" ID="txtaccountname" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Bank
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="" ID="txtbank" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                               </div>
                          </div>

                            <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Teller Number/Transaction Ref.No 
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="" ID="txtteller" runat="server" ReadOnly="True"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Pament Method 
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="" ID="txtpaymentmethod" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                 </div>
                                </div>
                                 <div class="row">

                                <div class="col-md-6 col-sm-6">
                              <label class="control-label">Amount Paid 
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="" ID="txtamout" runat="server" ReadOnly="True"></asp:TextBox>
                            </div>
                              <div class="col-md-6 col-sm-6">
                              <label class="control-label">Transaction Date 
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="" ID="txtdate" Text="" runat="server" ReadOnly="True"></asp:TextBox>

                            </div>
                         </div>
                          

                          <%--<input type="text" class="wp-form-control wpcf7-text" placeholder="Subject">
                          <textarea class="wp-form-control wpcf7-textarea" cols="30" rows="10" placeholder="What would you like to tell us"></textarea>
                          --%>
                             <div class="row">
                                 <div class="col-md-6 col-sm-6">
                            <asp:LinkButton class="wpcf7-submit button--itzel" ID="giveclearance" OnClick="giveclearance_Click" runat="server"><i class="button__icon fa fa-share"></i><span style="text-align:center">Yes</span></asp:LinkButton>
                        </div>
                               <div class="col-md-6 col-sm-6">
                                 <asp:LinkButton class="wpcf7-submit button--itzel" ID="btnno" OnClick="btnno_Click" runat="server"><i class="button__icon fa fa-share"></i><span style="text-align:center">No</span></asp:LinkButton>
                                </div>   
                               </div>
                                 </form>
                      </div>
    </div>
</asp:Content>
