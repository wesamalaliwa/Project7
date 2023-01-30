<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="class-timetable.aspx.cs" Inherits="project7.WebForm7" %>
<%@import Namespace="project7" %>
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
       <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

  
    <!-- Breadcrumb Section Begin -->
     <section class="class-timetable-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title">
                        <span>Find Your Time</span>
                        <h2>Find Your Time</h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="table-controls">
                        <ul  id="bred">
                            <li id="all" data-tsfilter="all">All event</li>
                            <%
                                gymdbEntities2 db = new gymdbEntities2();


                                foreach (var c in db.Classes)
                                {
                                    if (c.EndDate > DateTime.Now)
                                    {
                                %>
                            <li  data-tsfilter="<%=c.Name %>""><%=c.Name %></li>
                           <%}
                               } %>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 offset-1 ">
                    <div class="class-timetable">
                        <table>
                            <thead>
                                <tr>
                                    <th></th>
                                     <th>Sunday</th>
                                    <th>Monday</th>
                                    <th>Tuesday</th>
                                    <th>Wednesday</th>
                                    <th>Thursday</th>
                                </tr>
                            </thead>

                            <tbody class="body">
                                <%


                                    foreach (var c in db.Classes)
                                    {
                                        if (c.EndDate > DateTime.Now)
                                        {
                                            string[] days = c.DaysOfWeek.Split(',');
                                    %>
                                <tr>
                                    <td class="class-time"><%=c.StartTime + "-" + c.EndTime%></td>

                                    <%
                                        foreach (string day in days)
                                        {
                                            %>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">

                                         <% if (day != "none")
                                             {  %>
                                        <h5 class="<%=c.Name%>"><%=c.Name%></h5>
                                        <%} %>

                                        <% if (day != "none")
                                            {  %>
                                        <span><%=c.Coach.FirstName + " " + c.Coach.LastName%></span>
                                        <%} %>
                                    </td>
                                    <%} %>
                                </tr>
                               <%}
                                   }%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Class Timetable Section Begin -->

    <!-- Class Timetable Section End -->

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
    <script src="js/main.js"></script>
        <script>
        var li = Array.from(document.querySelectorAll("#bred li"));
        console.log(li);

        li.forEach(item => {
            item.onclick = () => {
                var c = item.getAttribute("data-tsfilter");
                console.log(c);



                var allh5 = Array.from(document.querySelectorAll(".body h5"))

                allh5.forEach((item) => {
                    item.style.opacity = 0;
                    item.nextElementSibling.style.opacity = 0;
                })


                var h = Array.from(document.getElementsByClassName(c)) ;

                h.forEach(item => {

                    item.style.opacity = 1;
                    item.nextElementSibling.style.opacity = 1;
                })
                 

            } 
        })

        document.getElementById("all").onclick = function () {


            var allh5 = Array.from(document.querySelectorAll(".body h5"))

            allh5.forEach((item) => {
                item.style.opacity = 1;
                item.nextElementSibling.style.opacity =1;
            })
         }

     </script>
</asp:Content>
