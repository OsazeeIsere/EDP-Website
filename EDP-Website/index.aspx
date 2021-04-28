<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EDP_Website.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!--=========== BEGIN Top Feature SECTION ================-->
    <section id="topFeature">
      <div class="row">
        <!-- Start Single Top Feature -->
        <div class="col-lg-4 col-md-4">
          <div class="row">
            <div class="single-top-feature">
              <span class="fa fa-flask"></span>
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
              <h3>I already have an account</h3>
              
              <div class="readmore_area">
                  <asp:LinkButton ID="LinkButton2" runat="server" data-hover="Login" OnClick="btnstartreg_Click"><span>Login</span></asp:LinkButton> 

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
                  <!--
                <li>
                  <span>Saturday</span>
                  <div class="value">9.30 - 15.30</div>
                </li>
                <li>
                  <span>Sunday</span>
                  <div class="value">9.30 - 17.00</div>
                </li>
                  -->
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
                  <asp:LinkButton ID="btnstartreg" data-toggle="modal" data-target="#myModal" runat="server" data-hover="Register" OnClick="btnstartreg_Click"><span>Register</span></asp:LinkButton> 
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
                        <form class="appointment-form">
                          <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">First Name <span class="required">*</span>
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your First name" ID="txtfirstname" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Last Name <span class="required">*</span>
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your Last Name" ID="txtlastname" runat="server"></asp:TextBox>
                            </div>
                          </div>

                            <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">User Name <span class="required">*</span>
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your User name" ID="txtregusername" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Password <span class="required">*</span>
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your Password" ID="txtregpassword" runat="server"></asp:TextBox>
                            </div>
                                <div class="col-md-6 col-sm-6">
                              <label class="control-label">Re-Enter Password <span class="required">*</span>
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Re-Enter Your Password" ID="txtreenterpassword" runat="server"></asp:TextBox>
                            </div>
                         
                          </div>

                            <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">PCN Registration Number <span class="required">*</span>
                              </label>
                                <asp:TextBox Class="wp-form-control wpcf7-text" placeholder="Enter Your PCN Number" ID="txtpcn" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Year Of Registration <span class="required">*</span>
                              </label>
                                <asp:DropDownList class="wp-form-control wpcf7-select" ID="ddlyearofreg"  runat="server"></asp:DropDownList>
                            </div>
                          </div>

                            <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Area Of Practice <span class="required">*</span>
                              </label>
                                <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your Area of practice" ID="txtareaofpractice" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Phone Number <span class="required">*</span>
                              </label>
                               <asp:TextBox class="wp-form-control wpcf7-text" placeholder="Enter Your Phone Number" ID="txtphone" runat="server"></asp:TextBox>
                            </div>
                          </div>


                          <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Email <span class="required">*</span>
                              </label>
                              <asp:TextBox class="wp-form-control wpcf7-email" placeholder="Enter Your E-mail" ID="txtemail" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">State <span class="required">*</span>
                              </label>
                                    <asp:DropDownList class="wp-form-control wpcf7-select" ID="ddlstates" runat="server">
                                    <asp:ListItem Text="Select State" Value="select"></asp:ListItem>
                                    <asp:ListItem Text="Abuja" Value="Abuja"></asp:ListItem>
                                    <asp:ListItem Text="Abia" Value="Abia"></asp:ListItem>
                                    <asp:ListItem Text="Adamawa" Value="Adamawa"></asp:ListItem>
                                    <asp:ListItem Text="Akwa Ibom" Value="Akwa Ibom"></asp:ListItem>
                                    <asp:ListItem Text="Anambra" Value="Anambra"></asp:ListItem>
                                    <asp:ListItem Text="Bauchi" Value="Bauchi"></asp:ListItem>
                                    <asp:ListItem Text="Bayelsa" Value="Bayelsa"></asp:ListItem>
                                    <asp:ListItem Text="Benue" Value="Benue"></asp:ListItem>
                                    <asp:ListItem Text="Borno" Value="Borno"></asp:ListItem>
                                    <asp:ListItem Text="Cross River" Value="Cross River"></asp:ListItem>
                                    <asp:ListItem Text="Delta" Value="Delta"></asp:ListItem>
                                    <asp:ListItem Text="Ebonyi" Value="Ebonyi"></asp:ListItem>
                                    <asp:ListItem Text="Edo" Value="Edo"></asp:ListItem>
                                    <asp:ListItem Text="Ekiti" Value="Ekiti"></asp:ListItem>
                                    <asp:ListItem Text="Enugu" Value="Enugu"></asp:ListItem>
                                    <asp:ListItem Text="Gombe" Value="Gombe"></asp:ListItem>
                                    <asp:ListItem Text="Imo" Value="Imo"></asp:ListItem>
                                    <asp:ListItem Text="Jigawa" Value="Jigawa"></asp:ListItem>
                                    <asp:ListItem Text="Kaduna" Value="Kaduna"></asp:ListItem>
                                    <asp:ListItem Text="Kano" Value="Kano"></asp:ListItem>
                                    <asp:ListItem Text="Katsina" Value="Katsina"></asp:ListItem>
                                    <asp:ListItem Text="Kebbi" Value="Kebbi"></asp:ListItem>
                                    <asp:ListItem Text="Kogi" Value="Kogi"></asp:ListItem>
                                    <asp:ListItem Text="Kwara" Value="Kwara"></asp:ListItem>
                                    <asp:ListItem Text="Lagos" Value="Lagos"></asp:ListItem>
                                    <asp:ListItem Text="Nassarawa" Value="Nassarawa"></asp:ListItem>
                                    <asp:ListItem Text="Niger" Value="Niger"></asp:ListItem>
                                    <asp:ListItem Text="Ogun" Value="Ogun"></asp:ListItem>
                                    <asp:ListItem Text="Ondo" Value="Ondo"></asp:ListItem>
                                    <asp:ListItem Text="Osun" Value="Osun"></asp:ListItem>
                                    <asp:ListItem Text="Oyo" Value="Oyo"></asp:ListItem>
                                    <asp:ListItem Text="Plateau" Value="Plateau"></asp:ListItem>
                                    <asp:ListItem Text="Rivers" Value="Rivers"></asp:ListItem>
                                    <asp:ListItem Text="Sokoto" Value="Sokoto"></asp:ListItem>
                                    <asp:ListItem Text="Taraba" Value="Taraba"></asp:ListItem>
                                    <asp:ListItem Text="Yobe" Value="Yobe"></asp:ListItem>
                                    <asp:ListItem Text="Zamfara" Value="Zamfara"></asp:ListItem>
                                    </asp:DropDownList>
                              
                            </div>
                           </div>
                          
                          <div class="row">
                            <div class="col-md-6 col-sm-6">
                              <label class="control-label">Sex <span class="required">*</span>
                              </label>
                                <asp:RadioButton class="wp-form-control wpcf7-text" ID="rdbmale" GroupName="sex" Text="Male" Checked="true" runat="server" />
                                <asp:RadioButton class="wp-form-control wpcf7-text" ID="rdbfemale" GroupName="sex" Text ="Female" runat="server" />
                            </div>
                          </div>  
                            <asp:Label ID="lbmsg" runat="server" Text=""></asp:Label>
                          <%--<input type="text" class="wp-form-control wpcf7-text" placeholder="Subject">
                          <textarea class="wp-form-control wpcf7-textarea" cols="30" rows="10" placeholder="What would you like to tell us"></textarea>
                          --%>
                            <asp:LinkButton class="wpcf7-submit button--itzel" ID="LinkButton1" OnClick="LinkButton1_Click" runat="server"><i class="button__icon fa fa-share"></i><span>Submit</span></asp:LinkButton>
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
