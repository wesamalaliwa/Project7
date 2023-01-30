<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="project7.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <meta charset="UTF-8">
    <meta name="description" content="Gym Template">
    <meta name="keywords" content="Gym, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gym | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Section Begin -->


    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/he7.jpg" style="height:700px">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2 style="margin-top:200px" >Our <span style="color:#f36100" >BLOG</span></h2>
                        <div class="bt-option">
                            <a href="Default.aspx">Home</a>
                            <a href="#">Pages</a>
                            <span>Blog</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 p-0">
                    <div class="blog-item">
                        <div class="bi-pic">
                            <img src="img/blog/he6.jpg" alt="">
                        </div>
                        <div class="bi-text">
                            <h5><a href="blog-details.aspx"> InBody</a></h5>
                       
                            <ul>
                                <li>by Admin</li>
                                <li>jan.,15, 2023</li>
                               
                            </ul>
                            <p>
In Body is a multipolar electrical device to measure the body's components of fat, water, and muscles and uses bioelectrical impedance analysis technology .                            </p>
                        </div>
                    </div>

                    <div class="blog-item">
                        <div class="bi-pic">
                            <img src="img/blog/blog-5.jpg" alt="">
                        </div>
                        <div class="bi-text">
                            <h5><a href="healthy-details.aspx">Healthy diet</a></h5>
                            <ul>
                                <li>by Admin</li>
                                <li> Dec.,15, 2022</li>
                                
                            </ul>
                            <p>A healthy diet is only a method that is followed in distributing our food and calories to the daily diets distributed during the day, provided that the diet is balanced and sound

</p>
                        </div>
                    </div>

                    <div class="blog-item">
                        <div class="bi-pic">
                            <img src="img/blog/blog-2.jpg" alt="">
                        </div>
                        <div class="bi-text">
                            <h5><a href="blog-details.aspx">Vegan White Peach Mug Cobbler With Cardam Vegan White Peach Mug
                                    Cobbler...</a></h5>
                            <ul>
                                <li>by Admin</li>
                                <li>Nov.,15, 2022</li>
                                
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor incididunt ut
                                labore et dolore magna aliqua accumsan lacus facilisis.</p>
                        </div>
                    </div>
                  
                   
                    
                  
                </div>
                <div class="col-lg-4 col-md-8 p-0">
                    <div class="sidebar-option">
                        <div class="so-categories">
                            <h5 class="title">Healthy foods and calories</h5>
                            
                           
                            <ul>
                               <%-- <li><a href="https://youtube.com/shorts/lqtXYlzrkNY?feature=share">Healthy Green Salad <span>99</span></a>--%>
                          <li>   <a href=" https://youtube.com/watch?v=shorts/lqtXYlzrkNY?feature=share&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup"> Healthy Green Salad <span>99</span></a>
                              </li>       
                                <li><a href="https://youtube.com/watch?v=shorts/8PJ3_p7VqHw?feature=share&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup" >Healthy Burgers <span>300</span></a></li>
                                <li><a href=" https://youtube.com/watch?v=shorts/U4qaciFGwgQ?feature=share&list=RD8PJ3_p7VqHw&start_radio=1"  class="video-popup">Healthy fish fillet  <span>280</span></a></li>
                                <li><a href="  https://youtube.com/watch?v=shorts/KHJVBnPAbrs?feature=share&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup">Healthy Steak Recipes  <span>116</span></a></li>
                                <li><a href="https://youtube.com/watch?v=shorts/5Jow2Fr7aws?feature=share&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup">Healthy Dinners <span>...</span></a></li>
                                <li><a href="https://youtube.com/watch?v=shorts/dLairfd8bZU?feature=share&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup">Quick and healthy breakfasts <span>...</span></a></li>
                            </ul>
                        </div>
                        <div class="so-latest">
                            
                            <div class="latest-large set-bg" data-setbg="img/blog/gym.jpg">
                               
                            </div>
                          <%--  <div class="latest-item">
                                <div class="li-pic">
                                    <img src="img/letest-blog/latest-2.jpg" alt="">
                                </div>
                                <div class="li-text">
                                    <h6><a href="blog-details.aspx">Grilled Potato and Green Bean Salad</a></h6>
                                    <span class="li-time">Aug 15, 2019</span>
                                </div>
                            </div>
                            <div class="latest-item">
                                <div class="li-pic">
                                    <img src="img/letest-blog/latest-3.jpg" alt="">
                                </div>
                                <div class="li-text">
                                    <h6><a href="blog-details.aspx">The $8 French RosÃ© I Buy in Bulk Every Summer</a></h6>
                                    <span class="li-time">Aug 15, 2019</span>
                                </div>
                            </div>
                            <div class="latest-item">
                                <div class="li-pic">
                                    <img src="img/letest-blog/latest-4.jpg" alt="">
                                </div>
                                <div class="li-text">
                                    <h6><a href="blog-details.aspx">Ina Garten's Skillet-Roasted Lemon Chicken</a></h6>
                                    <span class="li-time">Aug 15, 2019</span>
                                </div>
                            </div>
                            <div class="latest-item">
                                <div class="li-pic">
                                    <img src="img/letest-blog/latest-5.jpg" alt="">
                                </div>
                                <div class="li-text">
                                    <h6><a href="blog-details.aspx">The Best Weeknight Baked Potatoes, 3 Creative Ways</a></h6>
                                    <span class="li-time">Aug 15, 2019</span>
                                </div>
                            </div>
                        </div>--%>
                        <div class="so-tags">
                            <h5 class="title">Types of sports</h5>
                            <a href="https://youtu.be/DDqL1CUGwCw">INbody</a>
                            <a href="#">Body buidling</a>
                            <a href="https://youtu.be/2oINpxBVKAk">Yoga</a>
                            <a href="#">Weightloss</a>
                            <a href="#">Proffeponal</a>
                            <a href="#">Streching</a>
                            <a href="https://youtu.be/ue5Jw0zW-Tk">Cardio</a>
                            <a href="#">Karate</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Get In Touch Section Begin -->
    <div class="gettouch-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="gt-text">
                        <i class="fa fa-map-marker"></i>
                        <p>333 Middle Winchendon Rd, Rindge,<br/> NH 03461</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gt-text">
                        <i class="fa fa-mobile"></i>
                        <ul>
                            <li>125-711-811</li>
                            <li>125-668-886</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gt-text email">
                        <i class="fa fa-envelope"></i>
                        <p>Support.gymcenter@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Get In Touch Section End -->

  
    <!-- Footer Section End -->

    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
     <script src="js/jquery.magnific-popup.min.js"></script>
</asp:Content>
