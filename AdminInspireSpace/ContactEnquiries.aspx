﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactEnquiries.aspx.cs" Inherits="AdminInspireSpace.TablesData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en">
   <head runat="server">
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Creative Interiors - Responsive Bootstrap 4 Admin Dashboard Template</title>
      <!-- Favicon -->
      <link rel="shortcut icon" href="images/favicon.ico" />
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
         <!-- Bootstrap CSS icons-->
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

      <!-- Typography CSS -->
      <link rel="stylesheet" href="css/typography.css">
      <!-- Style CSS -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="css/responsive.css">
         <!-- Linkbutton CSS -->
       <style>
           .LbtnDelete {
               color:white;
               background-color:red;
               border-radius:5px;
               cursor:pointer;
               padding:10px;
               display:inline-flex;
               align-items:center;

           }

           .LbtnEdit{
                color:white;
                 background-color:blue;
                 border-radius:5px;
 cursor:pointer;
 padding:10px;
 display:inline-flex;
 align-items:center;
           }

       </style>

   </head>
   <body>

       <form runat="server">
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
   <!-- Wrapper Start -->
   <div class="wrapper">
   <!-- Sidebar  -->
   <div class="iq-sidebar">
   <div class="iq-sidebar-logo d-flex justify-content-between">
      <a href="index.html">
      <img src="images/logo.png" class="img-fluid" alt="">
      <span>Creative Interiors/span>
      </a>
      <div class="iq-menu-bt align-self-center">
         <div class="wrapper-menu">
            <div class="line-menu half start"></div>
            <div class="line-menu"></div>
            <div class="line-menu half end"></div>
         </div>
      </div>
   </div>
   <div id="sidebar-scrollbar">
      <nav class="iq-sidebar-menu">
         <ul id="iq-sidebar-toggle" class="iq-menu">
            <li class="iq-menu-title"><i class="ri-separator"></i><span>Main</span></li>
            <li class="active">
               <a href="#dashboard" class="iq-waves-effect collapsed"  data-toggle="collapse" aria-expanded="false"><i class="ri-home-4-line"></i><span>Dashboard</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
               <ul id="dashboard" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                 <li><a href="Dashboard.aspx">Dashboard 1</a></li>
               </ul>
            </li>
          
           
           

            
          
            <li>
               <a href="#tables" class="iq-waves-effect collapsed"  data-toggle="collapse" aria-expanded="false"><i class="ri-table-line"></i><span>Table</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
               <ul id="tables" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                  <li><a href="RegistrationDetails.aspx">Registration Details</a></li>
                  <li><a href="ContactEnquiries.aspx">Contact Enquiries</a></li>
                
               </ul>
            </li>
           
            <li class="iq-menu-title"><i class="ri-separator"></i><span>Pages</span></li>
            <li>
               <a href="#authentication" class="iq-waves-effect collapsed"  data-toggle="collapse" aria-expanded="false"><i class="ri-pages-line"></i><span>Authentication</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
               <ul id="authentication" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                  <li><a href="Sign-in.aspx">Login</a></li>
                  <li><a href="Signup.aspx">Register</a></li>
                  
               </ul>
            </li>
           
         </ul>
      </nav>
      <div class="p-3"></div>
   </div>
</div>
   <!-- TOP Nav Bar -->
   <div class="iq-top-navbar">
      <div class="iq-navbar-custom">
         <div class="iq-sidebar-logo">
            <div class="top-logo">
               <a href="index.html" class="logo">
               <img src="images/logo.png" class="img-fluid" alt=""/>
               <span>Creative Interiors </span>
               </a>
            </div>
         </div>
         <div class="navbar-breadcrumb">
            <h5 class="mb-0">Contacts Table</h5>
            <nav aria-label="breadcrumb">
               <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Contacts Table</li>
               </ul>
            </nav>
         </div>
         <nav class="navbar navbar-expand-lg navbar-light p-0">
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <i class="ri-menu-3-line"></i>
               </button>
               <div class="iq-menu-bt align-self-center">
                  <div class="wrapper-menu">
                     <div class="line-menu half start"></div>
                     <div class="line-menu"></div>
                     <div class="line-menu half end"></div>
                  </div>
               </div>
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav ml-auto navbar-list">
                     <li class="nav-item">
                        <a class="search-toggle iq-waves-effect" href="#"><i class="ri-search-line"></i></a>
                        <form action="#" class="search-box">
                           <input type="text" class="text search-input" placeholder="Type here to search..." />
                        </form>
                     </li>
                     <li class="nav-item dropdown">
                        <a href="#" class="search-toggle iq-waves-effect">
                           <i class="ri-mail-line"></i>
                           <span class="badge badge-pill badge-primary badge-up count-mail">3</span>
                        </a>
                        <div class="iq-sub-dropdown">
                           <div class="iq-card shadow-none m-0">
                              <div class="iq-card-body p-0 ">
                                 <div class="bg-primary p-3">
                                    <h5 class="mb-0 text-white">All Messages<small class="badge  badge-light float-right pt-1">5</small></h5>
                                 </div>
                                 <a href="#" class="iq-sub-card" >
                                    <div class="media align-items-center">
                                       <div class="">
                                          <img class="avatar-40 rounded" src="images/user/01.jpg" alt="">
                                       </div>
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 ">Nik Emma Watson</h6>
                                          <small class="float-left font-size-12">13 Jun</small>
                                       </div>
                                    </div>
                                 </a>
                                 <a href="#" class="iq-sub-card" >
                                    <div class="media align-items-center">
                                       <div class="">
                                          <img class="avatar-40 rounded" src="images/user/02.jpg" alt="">
                                       </div>
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 ">Lorem Ipsum Watson</h6>
                                          <small class="float-left font-size-12">20 Apr</small>
                                       </div>
                                    </div>
                                 </a>
                                 <a href="#" class="iq-sub-card" >
                                    <div class="media align-items-center">
                                       <div class="">
                                          <img class="avatar-40 rounded" src="images/user/03.jpg" alt="">
                                       </div>
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 ">Why do we use it?</h6>
                                          <small class="float-left font-size-12">30 Jun</small>
                                       </div>
                                    </div>
                                 </a>
                                 <a href="#" class="iq-sub-card" >
                                    <div class="media align-items-center">
                                       <div class="">
                                          <img class="avatar-40 rounded" src="images/user/04.jpg" alt="">
                                       </div>
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 ">Variations Passages</h6>
                                          <small class="float-left font-size-12">12 Sep</small>
                                       </div>
                                    </div>
                                 </a>
                                 <a href="#" class="iq-sub-card" >
                                    <div class="media align-items-center">
                                       <div class="">
                                          <img class="avatar-40 rounded" src="images/user/05.jpg" alt="">
                                       </div>
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 ">Lorem Ipsum generators</h6>
                                          <small class="float-left font-size-12">5 Dec</small>
                                       </div>
                                    </div>
                                 </a>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="nav-item">
                        <a href="#" class="iq-waves-effect"><i class="ri-shopping-cart-2-line"></i></a>
                     </li>
                     <li class="nav-item">
                        <a href="#" class="search-toggle iq-waves-effect">
                           <i class="ri-notification-2-line"></i>
                           <span class="bg-danger dots"></span>
                        </a>
                        <div class="iq-sub-dropdown">
                           <div class="iq-card shadow-none m-0">
                              <div class="iq-card-body p-0 ">
                                 <div class="bg-danger p-3">
                                    <h5 class="mb-0 text-white">All Notifications<small class="badge  badge-light float-right pt-1">4</small></h5>
                                 </div>
                                 <a href="#" class="iq-sub-card" >
                                    <div class="media align-items-center">
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 ">New Order Recieved</h6>
                                          <small class="float-right font-size-12">23 hrs ago</small>
                                          <p class="mb-0">Lorem is simply</p>
                                       </div>
                                    </div>
                                 </a>
                                 <a href="#" class="iq-sub-card" >
                                    <div class="media align-items-center">
                                       <div class="">
                                          <img class="avatar-40 rounded" src="images/user/01.jpg" alt="">
                                       </div>
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 ">Emma Watson Nik</h6>
                                          <small class="float-right font-size-12">Just Now</small>
                                          <p class="mb-0">95 MB</p>
                                       </div>
                                    </div>
                                 </a>
                                 <a href="#" class="iq-sub-card" >
                                    <div class="media align-items-center">
                                       <div class="">
                                          <img class="avatar-40 rounded" src="images/user/02.jpg" alt="">
                                       </div>
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 ">New customer is join</h6>
                                          <small class="float-right font-size-12">5 days ago</small>
                                          <p class="mb-0">Jond Nik</p>
                                       </div>
                                    </div>
                                 </a>
                                 <a href="#" class="iq-sub-card" >
                                    <div class="media align-items-center">
                                       <div class="">
                                          <img class="avatar-40" src="images/small/jpg.svg" alt="">
                                       </div>
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 ">Updates Available</h6>
                                          <small class="float-right font-size-12">Just Now</small>
                                          <p class="mb-0">120 MB</p>
                                       </div>
                                    </div>
                                 </a>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="nav-item iq-full-screen"><a href="#" class="iq-waves-effect" id="btnFullscreen"><i class="ri-fullscreen-line"></i></a></li>
                  </ul>
               </div>
               <ul class="navbar-list">
                  <li>
                     <a href="#" class="search-toggle iq-waves-effect bg-primary text-white"><img src="images/user/1.jpg" class="img-fluid rounded" alt="user"></a>
                     <div class="iq-sub-dropdown iq-user-dropdown">
                        <div class="iq-card shadow-none m-0">
                           <div class="iq-card-body p-0 ">
                              <div class="bg-primary p-3">
                                 <h5 class="mb-0 text-white line-height">Hello Ikram Sayyed</h5>
                                 <span class="text-white font-size-12">Available</span>
                              </div>
                              <a href="profile.html" class="iq-sub-card iq-bg-primary-hover">
                                 <div class="media align-items-center">
                                    <div class="rounded iq-card-icon iq-bg-primary">
                                       <i class="ri-file-user-line"></i>
                                    </div>
                                    <div class="media-body ml-3">
                                       <h6 class="mb-0 ">My Profile</h6>
                                       <p class="mb-0 font-size-12">View personal profile details.</p>
                                    </div>
                                 </div>
                              </a>
                              <a href="profile-edit.html" class="iq-sub-card iq-bg-primary-success-hover">
                                 <div class="media align-items-center">
                                    <div class="rounded iq-card-icon iq-bg-success">
                                       <i class="ri-profile-line"></i>
                                    </div>
                                    <div class="media-body ml-3">
                                       <h6 class="mb-0 ">Edit Profile</h6>
                                       <p class="mb-0 font-size-12">Modify your personal details.</p>
                                    </div>
                                 </div>
                              </a>
                              <a href="account-setting.html" class="iq-sub-card iq-bg-primary-danger-hover">
                                 <div class="media align-items-center">
                                    <div class="rounded iq-card-icon iq-bg-danger">
                                       <i class="ri-account-box-line"></i>
                                    </div>
                                    <div class="media-body ml-3">
                                       <h6 class="mb-0 ">Account settings</h6>
                                       <p class="mb-0 font-size-12">Manage your account parameters.</p>
                                    </div>
                                 </div>
                              </a>
                              <a href="privacy-setting.html" class="iq-sub-card iq-bg-primary-secondary-hover">
                                 <div class="media align-items-center">
                                    <div class="rounded iq-card-icon iq-bg-secondary">
                                       <i class="ri-lock-line"></i>
                                    </div>
                                    <div class="media-body ml-3">
                                       <h6 class="mb-0 ">Privacy Settings</h6>
                                       <p class="mb-0 font-size-12">Control your privacy parameters.</p>
                                    </div>
                                 </div>
                              </a>
                              <div class="d-inline-block w-100 text-center p-3">
                                 <a class="iq-bg-danger iq-sign-btn" href="sign-in.html" role="button">Sign out<i class="ri-login-box-line ml-2"></i></a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
               </ul>
            </nav>
      </div>
   </div>
   <!-- TOP Nav Bar END -->
   <!-- Page Content  -->
       <div id="content-page" class="content-page">
           <div class="container-fluid">
               <div class="row">
                   <div class="col-sm-12">
                       <div class="iq-card">
                           <div class="iq-card-header d-flex justify-content-between">
                               <div class="iq-header-title">
                                   <h4 class="card-title">Contacts Table</h4>
                               </div>
                           </div>

                           <div>
                               <asp:TextBox ID="txtSearchEmail" runat="server"></asp:TextBox>
                               <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                               <asp:Label ID="lblNoRec" runat="server" Text=""></asp:Label>
                           </div>

                           <span>

                               <h6>Search Record For a Period</h6>
                               <asp:TextBox ID="txtDtStart" runat="server" placeholder="Start Date"></asp:TextBox>
                               <asp:LinkButton ID="linkBtnDtStart" runat="server" OnClick="LinkButtonDtStart_Click">
                                   <i class="fa fa-calendar fa-2x" aria-hidden="true"></i>
                               </asp:LinkButton>
                               <asp:Calendar ID="dtPickerStart" runat="server"  Visible="false" OnSelectionChanged="dtPickerStart_SelectionChanged"></asp:Calendar>


                               <asp:TextBox ID="txtDtEnd" runat="server" placeholder="End Date"></asp:TextBox>
                               <asp:LinkButton ID="linkBtnDtEnd" runat="server" OnClick="LinkButtonDtEnd_Click">
                                   <i class="fa fa-calendar fa-2x" aria-hidden="true"></i>
                               </asp:LinkButton>
                               <asp:Calendar ID="dtPickerEnd" runat="server"  Visible="false" OnSelectionChanged="dtPickerEnd_SelectionChanged"></asp:Calendar>

                               <asp:Button ID="btnSearchPeriod" runat="server" Text="Search" onclick="btnSearchPeriod_Click"/>
                               <asp:Label ID="lblSearchPeriod" runat="server" Text=""></asp:Label>
                           </span>


                           <div class="iq-card-body">
                               <h4 class="card-title">Hoverable rows</h4>
                               <p>Add <code class="highlighter-rouge">.table-hover</code> to enable a hover state on table rows within a <code class="highlighter-rouge">&lt;tbody&gt;</code>.</p>
                               <div class="table-responsive">
                                   <table class="table table-hover">
                                       <thead>
                                           <tr>
                                               <th scope="col">id</th>
                                               <th scope="col">Name</th>
                                               <th scope="col">Email Id</th>
                                               <th scope="col">Phone No</th>
                                               <th scope="col">Create Date</th>
                                               <th scope="col">Message</th>
                                           </tr>
                                       </thead>
                                       <asp:Repeater ID="dataBindRepeater" runat="server">
                                           <ItemTemplate>
                                               <tbody>
                                                   <tr>
                                                       <td><%#Eval("Id") %></td>
                                                       <td><%#Eval("Name") %></td>
                                                       <td><%#Eval("EmailId") %></td>
                                                       <td><%#Eval("PhoneNo") %></td>
                                                       <td><%#Eval("CreateDate") %></td>
                                                       <td><%#Eval("Message") %></td>
                                                       <td>
                                                           <asp:LinkButton ID="LbtnDelete" CssClass="LbtnDelete" runat="server" OnClick="LbtnDelete_Click"><i class="bi bi-trash3-fill"></i>Delete</asp:LinkButton>
                                                           <asp:Label ID="lblId" runat="server" Text='<%#Eval("Id") %>' Visible="false"></asp:Label>
                                                       </td>
                                                       <td>
                                                           <a href="Update-Contact.aspx?Id=<%#Eval("Id") %>"  class="LbtnEdit" ><i class="bi bi-pencil-square"></i> Edit</a>
                                                       </td>
                                                   </tr>
                                               </tbody>
                                           </ItemTemplate>
                                       </asp:Repeater>
                                   </table>
                                   <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>

           </div>
       </div>
</div>
<!-- Wrapper END -->
 <!-- Footer -->
   <footer class="bg-white iq-footer">
      <div class="container-fluid">
         <div class="row">
            <div class="col-lg-6">
               <ul class="list-inline mb-0">
                  <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
                  <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
               </ul>
            </div>
            <div class="col-lg-6 text-right">
               Copyright 2024  <a href="#">Sofbox</a> All Rights Reserved.
            </div>
         </div>
      </div>
   </footer>
   <!-- Footer END -->
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
   <!-- lottie JavaScript -->
   <script src="js/lottie.js"></script>
   <!-- Chart Custom JavaScript -->
   <script src="js/chart-custom.js"></script>
   <!-- Custom JavaScript -->
   <script src="js/custom.js"></script>
       </form>
      
</body>
</html>