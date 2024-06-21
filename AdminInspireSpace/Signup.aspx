<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="AdminInspireSpace.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<html lang="en">
   <head runat="server">
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Sofbox - Responsive Bootstrap 4 Admin Dashboard Template</title>
      <!-- Favicon -->
      <link rel="shortcut icon" href="images/favicon.ico" />
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- Typography CSS -->
      <link rel="stylesheet" href="css/typography.css">
      <!-- Style CSS -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="css/responsive.css">
   </head>
   <body>
      <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
            <div class="loader">
               <div class="cube">
                  <div class="sides">
                     <div class="top"></div>
                     <div class="right"></div>
                     <div class="bottom"></div>
                     <div class="left"></div>
                     <div class="front"></div>
                     <div class="back"></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- loader END -->
        <!-- Sign in Start -->
        <section class="sign-in-page bg-white">
            <div class="container-fluid p-0">
                <div class="row no-gutters">
                    <div class="col-sm-6 align-self-center">
                        <div class="sign-in-from">
                            <h1 class="mb-0">Sign Up</h1>
                            <p>Enter your email address and password to access admin panel.</p>
                            <form class="mt-4" runat="server">


                                <div class="form-group">
                                    <label class="">Your Full Name</label>
                                    <asp:TextBox ID="txtName" class="form-control" runat="server"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Please Enter your Name" ControlToValidate="txtName" ForeColor="Red" 
                                        Font-Bold="true"></asp:RequiredFieldValidator>   
                                </div>

                                 <div class="form-group">
                                    <label class="">Phone Number</label>
                                    <asp:TextBox ID="txtphoneNo" class="form-control" runat="server"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
      ErrorMessage="Please Enter your Phone Number" ControlToValidate="txtphoneNo" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Phone Number"
                        ControlToValidate="txtphoneNo" ForeColor="Red" Font-Bold="true" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
                                </div>


                                 <div class="form-group">
                                     <label class="" >E-Mail ID</label>
                                     <asp:TextBox ID="txtEmailId" class="form-control" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ErrorMessage="Please Enter your E-mail Address" ControlToValidate="txtEmailId" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailId"
ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
Display = "Dynamic" ErrorMessage = "Invalid email address"/>   


                                </div>
                                  <div class="form-group">
                                   <label class="" >City</label>
                                      <asp:DropDownList ID="txtCity" runat="server" CssClass="form-control">
                                          <asp:ListItem>---Select City---</asp:ListItem>
                                          <asp:ListItem>New Delhi</asp:ListItem>
                                           <asp:ListItem>Mumbai</asp:ListItem>
                                           <asp:ListItem>Chennai</asp:ListItem>
                                           <asp:ListItem>Hyderabad</asp:ListItem>
                                      </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="txtCityVal" runat="server" 
                                  ErrorMessage ="Please Select a City from Dropdown" ControlToValidate="txtCity" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                                  </div>


                                    <div class="form-group">
                                         <label class="" >Gender</label>
                                         <asp:RadioButtonList ID="txtGender" runat="server" >
                                             <asp:ListItem ID="rdMale">Male</asp:ListItem>
                                              <asp:ListItem ID="rdFemale">Female</asp:ListItem>
                                              <asp:ListItem>Others</asp:ListItem>
                                         </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID="rfvGender" runat="server"
                                                    ControlToValidate="txtGender"
                                                       ErrorMessage="Please select your gender!"
                                                    InitialValue="-1"> // Alternativaly you can set the InitialValue in Load event 
                                       </asp:RequiredFieldValidator>
                                     </div>


                                 <div class="form-group">
                                        <label class="" >Age</label>
                                     <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
                                     <span class="form-bar"></span>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                      ErrorMessage="Please Enter your Age" ControlToValidate="txtAge" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="You are not eligible" 
                             ControlToValidate="txtAge" MinimumValue="18" MaximumValue="60"></asp:RangeValidator>   
                                 </div>


                                 <div class="form-group">
                                      <label class="" >Dob</label>
                                     <asp:TextBox ID="txtDob" runat="server" CssClass="form-control"></asp:TextBox>
                                     <span class="form-bar"></span>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                         ErrorMessage="Please Enter Date of Birth" ControlToValidate="txtDob"
                                         ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                               <!--      <asp:RegularExpressionValidator ID="RegExpVal1" runat="server" ControlToValidate="txtDob"
                                         ErrorMessage="DOB has to be in dd/mm/yyyy format"
                                         ValidationExpression="^([1-9]0[1-9][12][0-9]3[01])[- /.]([1-9]0[1-9]1[012])[- /.][0-9]{4}$"  ForeColor="Red"></asp:RegularExpressionValidator>  --> 
                                  
                                </div>


                                <div class="form-group">
                                    <label >Username</label>
                                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                        ErrorMessage="Please Enter Your Username" ControlToValidate="txtUsername"
                                        ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                                </div>


                                <div class="form-group">
                                     <label >Password</label>
                                     <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                     ErrorMessage="Please Enter Your Password" ControlToValidate="txtPassword" 
                                    ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                              </div>


                                <div class="form-group">
                                    <label >Confirm Password</label>
                                     <asp:TextBox ID="txtRePwd" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                        ErrorMessage="Please Re-Enter Your Password"  ControlToValidate="txtRePwd"
                                        ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match please re enter"
                                        ControlToCompare="txtPassword" ControlToValidate="txtRePwd" ></asp:CompareValidator>
                                </div>


                                  <div class="form-group">
                                    <label >Upload Document</label>
                                      <asp:FileUpload ID="docUpload" runat="server" CssClass="form-control" />
                               </div>


                               <div class="row m-t-25 text-left">
                                       <div class="col-md-12">
                                              <div class="checkbox-fade fade-in-primary">
                                                  <asp:Label ID="Label1" runat="server" Text="Label">Are you a New User ?
                                                      <asp:Checkbox ID="txtNewUser" runat="server"> </asp:Checkbox>
                                                      <span class="cr"> <i class="cr-icon iconfont-ui-check text-primary"></i></span>
                                                      <span class="text-inverse">I read and Accept <a href="#">Terms &amp; Conditions.</a></span>
                                                  </asp:Label>
                                  
                                              </div>
                                       </div>
                               </div>


                                 <div class="form-group">
                                       <asp:Button ID="btnReg" runat="server" Text="Register" 
                                        CssClass="btn btn-primary btn-md btn-block iq-waves-effect text-center m-b-20" OnClick="btnReg_Click"></asp:Button>
                                     <asp:Label ID="lblReg" runat="server" Text="" ForeColor="Green"></asp:Label>
                                 </div>
                                <div class="sign-info">
                                    <span class="dark-color d-inline-block line-height-2">Already Have Account ? <a href="sign-in.aspx">Log In</a></span>
                                     <a href="Dashboard.aspx">Back to Website</a>
                                    <ul class="iq-social-media">
                                        <li><a href="#"><i class="ri-facebook-box-line"></i></a></li>
                                        <li><a href="#"><i class="ri-twitter-line"></i></a></li>
                                        <li><a href="#"><i class="ri-instagram-line"></i></a></li>
                                    </ul>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-6 text-center">
                        <div class="sign-in-detail text-white" style="background: url(images/login/2.jpg) no-repeat 0 0; background-size: cover;">
                            <a class="sign-in-logo mb-5" href="#"><img src="images/logo-white.png" class="img-fluid" alt="logo"></a>
                            <div class="owl-carousel" data-autoplay="true" data-loop="true" data-nav="false" data-dots="true" data-items="1" data-items-laptop="1" data-items-tab="1" data-items-mobile="1" data-items-mobile-sm="1" data-margin="0">
                                <div class="item">
                                    <img src="images/login/1.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">Manage your orders</h4>
                                    <p>It is a long established fact that a reader will be distracted by the readable content.</p>
                                </div>
                                <div class="item">
                                    <img src="images/login/1.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">Manage your orders</h4>
                                    <p>It is a long established fact that a reader will be distracted by the readable content.</p>
                                </div>
                                <div class="item">
                                    <img src="images/login/1.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">Manage your orders</h4>
                                    <p>It is a long established fact that a reader will be distracted by the readable content.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Sign in END -->
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <!-- Appear JavaScript -->
      <script src="js/jquery.appear.js"></script>
      <!-- Countdown JavaScript -->
      <script src="js/countdown.min.js"></script>
      <!-- Counterup JavaScript -->
      <script src="js/waypoints.min.js"></script>
      <script src="js/jquery.counterup.min.js"></script>
      <!-- Wow JavaScript -->
      <script src="js/wow.min.js"></script>
      <!-- Apexcharts JavaScript -->
      <script src="js/apexcharts.js"></script>
      <!-- Slick JavaScript -->
      <script src="js/slick.min.js"></script>
      <!-- Select2 JavaScript -->
      <script src="js/select2.min.js"></script>
      <!-- Owl Carousel JavaScript -->
      <script src="js/owl.carousel.min.js"></script>
      <!-- Magnific Popup JavaScript -->
      <script src="js/jquery.magnific-popup.min.js"></script>
      <!-- Smooth Scrollbar JavaScript -->
      <script src="js/smooth-scrollbar.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="js/chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="js/custom.js"></script>
   </body>
</html>