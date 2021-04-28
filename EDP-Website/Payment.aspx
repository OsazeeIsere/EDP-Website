<%@ Page Title="" Language="C#" MasterPageFile="~/Site1mater2.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="EDP_Website.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title" id="myModalLabel">Enter Your Payment Details</h4>
                    </div>
                    <div class="modal-body">
                
    <form class="appointment-form">
                          <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">User Name <span class="required">*</span>
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your user name or email" ID="txtusername" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Password <span class="required">*</span>
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your password" ID="txtpassword" TextMode="Password" runat="server"></asp:TextBox>
                            </div>
                          </div>

                                     
                          <%--<input type="text" class="wp-form-control wpcf7-text" placeholder="Subject">
                          <textarea class="wp-form-control wpcf7-textarea" cols="30" rows="10" placeholder="What would you like to tell us"></textarea>
                          --%>  
                            <asp:LinkButton class="wpcf7-submit button--itzel" ID="LinkButton3" OnClick="LinkButton3_Click" runat="server"><i class="button__icon fa fa-share"></i><span>Login</span></asp:LinkButton>
                        </form>
                    </div>
                </div>

</asp:Content>
