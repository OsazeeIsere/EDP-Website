<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EDP_Website.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!--=========== BEGIN Top Feature SECTION ================-->
    
    <section id="topFeature">
        <div class="row"><div class="col-lg-4 col-md-4" > <h3><asp:Label ID="lbmsg" runat="server" Text=""></asp:Label></h3>
</div>
</div>
      <div class="row">
        <!-- Start Single Top Feature -->
        <div class="col-lg-4 col-md-4">
          <div class="row">
            <div class="single-top-feature">
              <span class="fa fa-flask"></span>
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
              <h3>I already have an account</h3>
              
              <div class="readmore_area">
                 
                  <asp:LinkButton ID="LinkButton2" runat="server" data-hover="Login" OnClick="btnstartreg_Click" CausesValidation="False"><span>Login</span></asp:LinkButton> 

              </div>
            </div>
          </div>
        </div>
        <!-- End Single Top Feature -->
         
        <!-- Start Single Top Feature -->
        <div class="col-lg-4 col-md-4">
          <div class="row">
            <div class="single-top-feature opening-hours">
              <span class="fa fa-clock-o"></span>
              <h3>Official Hours</h3>
             
              <ul class="opening-table">
                <li>
                  <span>Monday - Friday</span>
                  <div class="value">8.00 - 16.00</div>
                </li>
                
              </ul>              
            </div>
          </div>
        </div>
        <!-- End Single Top Feature -->

        <!-- Start Single Top Feature -->
        <div class="col-lg-4 col-md-4">
          <div class="row">
            <div class="single-top-feature">
              <span class="fa fa-hospital-o"></span>
              <h3>I am new here</h3>
              
              <div class="readmore_area" style="height: 27px">
                  <asp:LinkButton ID="btnstartreg" data-toggle="modal" data-target="#myModal" runat="server" data-hover="Register"><span>Register</span></asp:LinkButton> 
              </div>
                </div>
              </div>
              <!-- start modal window -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <h4 class="modal-title" id="myModalLabel">Registration Form</h4>
                    </div>
                    <div class="modal-body">
                      <div class="appointment-area">
                        <form class="appointment-form" id ="fmmodal">
                          <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">First Name 
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your First name" ID="txtfirstname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="vdfirstname" runat="server" ErrorMessage="First name Is Cumpulsory" ControlToValidate="txtfirstname" Text="*"></asp:RequiredFieldValidator>
                                </div>
                              <div class="col-md-6 col-sm-6">
                              <label class="control-label">Other Names 
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Other Names" ID="txtothernames" runat="server"></asp:TextBox>
                              </div>
                         </div>

                            <div class="row">
                             <div class="col-md-6 col-sm-6">
                              <label class="control-label">Last Name 
                              </label>
                                 <asp:RequiredFieldValidator ID="vdlastname" Text="*" ControlToValidate="txtlastname" runat="server" ErrorMessage="Last name Is Cumpulsory">*</asp:RequiredFieldValidator>
                                 <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your Last Name" ID="txtlastname" runat="server" ControlToValidate="txtlastname"></asp:TextBox>
                            </div>
    
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">User Name 
                              </label>
                                <asp:RequiredFieldValidator ID="vdusername" runat="server" ErrorMessage="User name Is Cumpulsory" ControlToValidate="txtregusername" Text="*"></asp:RequiredFieldValidator>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your User name" ID="txtregusername" runat="server"></asp:TextBox>
                            </div>
                                </div>
                           <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Password
                              </label>
                                <asp:RequiredFieldValidator ID="vdpassword" runat="server" ErrorMessage="Password Is Cumpulsory" Text="*" ControlToValidate="txtregpassword"></asp:RequiredFieldValidator>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your Password" ID="txtregpassword" TextMode="Password" runat="server"></asp:TextBox>
                            </div>
                                <div class="col-md-6 col-sm-6">
                              <label class="control-label">Re-Enter Password
                              </label>
                                    <asp:RequiredFieldValidator ID="vdconfirmpassword" runat="server" ErrorMessage="Confirm Password Is Cumpulsory" ControlToValidate="txtreenterpassword" Text="*"></asp:RequiredFieldValidator>
                                    <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Re-Enter Your Password" ID="txtreenterpassword" TextMode="Password" runat="server"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both password must match" ControlToCompare="txtregpassword" ControlToValidate="txtreenterpassword">*</asp:CompareValidator>
                                </div>
                         
                          </div>

                            <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">PCN Registration Number
                              </label>
                                <asp:TextBox Class="wp-form-control wpcf7-text" placeholder="Enter Your PCN Number" ID="txtpcn" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="PCN Is Cumpulsory" Text="*" ControlToValidate="txtpcn"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Year Of Registration
                              </label>
                                <asp:DropDownList class="wp-form-control wpcf7-select" ID="ddlyearofreg"  runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Year of Registration Is Cumpulsory" ControlToValidate="ddlyearofreg" Text="*" InitialValue="Select Your Year Of Registration"></asp:RequiredFieldValidator>
                            </div>
                          </div>

                            <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Area Of Practice
                              </label>
                                    <asp:DropDownList class="wp-form-control wpcf7-select" ID="ddlareaofpractice" runat="server" ControlToValidate="ddlareaofpractice">
                                    <asp:ListItem Text="Select Your Area Of Practice" Value="select"></asp:ListItem>
                                    <asp:ListItem Text="Hospital and Administration" Value="Hospital"></asp:ListItem>
                                    <asp:ListItem Text="Community" Value="Community"></asp:ListItem>
                                    <asp:ListItem Text="Academia" Value="Academia"></asp:ListItem>
                                    <asp:ListItem Text="Idustrial" Value="Idustrial"></asp:ListItem>
                                    </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Area of Practice Is Cumpulsory" InitialValue="Select Your Area Of Practice" Text="*" ControlToValidate="ddlareaofpractice"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Phone Number
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your Phone Number" ID="txtphone" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Text="*" ControlToValidate="txtphone" runat="server" ErrorMessage="Phone number Is Cumpulsory"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Phone Number" ControlToValidate="txtphone" ValidationExpression="^[0]\d{10}$"></asp:RegularExpressionValidator>
                                </div>
                          </div>


                          <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Email
                              </label>
                              <asp:TextBox class="wp-form-control wpcf7-email" placeholder="Enter Your E-mail" ID="txtemail" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Text="*" ControlToValidate="txtemail" runat="server" ErrorMessage="Email Is Cumpulsory"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rgxEmail" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Local Government Area 
                              </label>
                                    <asp:DropDownList class="wp-form-control wpcf7-select" ID="ddlstates" runat="server">
                                    <asp:ListItem Text="Select Local Government Area" Value="select"></asp:ListItem>
                                    <asp:ListItem Text="Akoko-Edo" Value="Akoko-Edo"></asp:ListItem>
                                    <asp:ListItem Text="Egor" Value="Egor"></asp:ListItem>
                                    <asp:ListItem Text="Esan Central" Value="Esan Central"></asp:ListItem>
                                    <asp:ListItem Text="Esan North-East" Value="Esan North-East"></asp:ListItem>
                                    <asp:ListItem Text="Esan South-East" Value="Esan South-East"></asp:ListItem>
                                    <asp:ListItem Text="Esan West" Value="Esan West"></asp:ListItem>
                                    <asp:ListItem Text="Etsako Central" Value="Etsako Central"></asp:ListItem>
                                    <asp:ListItem Text="Etsako East" Value="Etsako East"></asp:ListItem>
                                    <asp:ListItem Text="Etsako West" Value="Etsako West"></asp:ListItem>
                                    <asp:ListItem Text="Igueben" Value="Igueben"></asp:ListItem>
                                    <asp:ListItem Text="Ikpoba-Okha" Value="Ikpoba-Okha"></asp:ListItem>
                                    <asp:ListItem Text="Oredo" Value="Oredo"></asp:ListItem>
                                    <asp:ListItem Text="Orhionmwon" Value="Orhionmwon"></asp:ListItem>
                                    <asp:ListItem Text="Ovia North-East" Value="Ovia North-East"></asp:ListItem>
                                    <asp:ListItem Text="Ovia South-West" Value="Ovia South-West"></asp:ListItem>
                                    <asp:ListItem Text="Owan East" Value="Owan East"></asp:ListItem>
                                    <asp:ListItem Text="Owan West" Value="Owan West"></asp:ListItem>
                                    <asp:ListItem Text="Uhunmwode" Value="Uhunmwode"></asp:ListItem>
                                    </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Text="*" ControlToValidate="ddlstates" runat="server" ErrorMessage="Local Government Area Is Cumpulsory"></asp:RequiredFieldValidator>
                            </div>
                           </div>
                          
                          <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Sex
                              </label>
                                <asp:RadioButton class="wp-form-control wpcf7-text" ValidationGroup="Sex" ID="rdbmale" GroupName="sex" Text="Male" Checked="true" runat="server" />
                            </div>
                               <div class="col-md-6 col-sm-6">
                              <label class="control-label">Sex 
                              </label>
                                   <asp:RadioButton class="wp-form-control wpcf7-text" ValidationGroup="Sex" ID="rdbfemale" GroupName="sex" Text ="Female" runat="server" />
                             </div>
                          </div>  
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <label class="control-label"> Status 
                              </label>
                                    <asp:DropDownList class="wp-form-control wpcf7-select" ID="ddlstatus" runat="server">
                                    <asp:ListItem Text="Select Your Status" Value="select"></asp:ListItem>
                                    <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                                    <asp:ListItem Text="Member" Value="Member"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Text="*" ControlToValidate="ddlstatus" InitialValue="Select Your Status" runat="server" ErrorMessage="Status Is Cumpulsory"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                   <label class="control-label"> Passport Photo
                                    </label>
                                    <asp:FileUpload class="wp-form-control wpcf7-select" ID="FileUpload1" runat="server" />  
                                    <br />  
                                    <asp:Image ID="Image1" runat="server" />                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Text="*" ControlToValidate="FileUpload1" runat="server" ErrorMessage="Passport Photograph Is Cumpulsory"></asp:RequiredFieldValidator>

                            </div>
                          <%--<input type="text" class="wp-form-control wpcf7-text" placeholder="Subject">
                          <textarea class="wp-form-control wpcf7-textarea" cols="30" rows="10" placeholder="What would you like to tell us"></textarea>
                          --%>
                            <asp:LinkButton class="wpcf7-submit button--itzel" ID="LinkButton1" OnClick="LinkButton1_Click" runat="server"><i class="button__icon fa fa-share"></i><span>Submit</span></asp:LinkButton>
                          <!--  <asp:LinkButton class="wpcf7-submit button--itzel" ID="btnsendmail" OnClick="btnsendmail_Click" runat="server"><i class="button__icon fa fa-share"></i><span>Send Mail</span></asp:LinkButton>
                        -->
                          <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowValidationErrors="True" ShowSummary="False" />
                        </form>
                      </div>
                    </div>                    
                  </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
              </div>            

                <!--second modal window -->
<div class="modal fade" id="mySecondModal" tabindex="-2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <h4 class="modal-title" id="mySecondModalLabel">Login Form</h4>
                    </div>
                    <div class="modal-body">
                      <div class="appointment-area">
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
                  </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
              </div>            </div>

                <!-- end of second modal window

            </div>
          </div>
        </div>
        <!-- End Single Top Feature -->
      </div>
    </section>
    <!--=========== END Top Feature SECTION ================-->

    
</asp:Content>
