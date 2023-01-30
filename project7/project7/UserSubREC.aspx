<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserSubREC.aspx.cs" Inherits="project7.UserSubREC" %>
<%@ Import Namespace="project7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your Have Alredy ',
                type: 'success'


            }).then(function () {
                window.location.href = "https://localhost:44314/Default";
            });
         
        }

    </script>
    <%--<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
 <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function pass(quantity, donation) {
            Swal.fire({
                icon: 'success',
                title: 'Your message has been sent succesfully !',
                html: '<a href="https://localhost:44348/Default">Return To Home Page</a>',
                //footer: '<a href="">Why do I have this issue?</a>'

            }).then(function () {
                window.location.href = "https://localhost:44314/Default";
            });


        }--%>
   
       <%--<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
 <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function pass(quantity, donation) {
            Swal.fire({
                icon: 'success',
                title: 'Your message has been sent succesfully !',
                html: '<a href="https://localhost:44348/Default">Return To Home Page</a>',
                //footer: '<a href="">Why do I have this issue?</a>'

            }).then(function () {
                window.location.href = "https://localhost:44314/Default";
            });


    </script>
        
        }--%>
    <title>Contact</title>
    <meta charset="UTF-8">
    <meta name="description" content="Gym Template">
    <meta name="keywords" content="Gym, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

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
    <style>
        img {
            width: 100%;
            height: 100%;
        }

        .subsic-detailes {
            width: 60%;
            margin: 0 auto;
            margin-top: 50px;
            box-shadow: 10px 5px 5px gray;
            padding: 20px 30px;
            border-radius: 20px;
            border: 1px solid gray;
        }

            .subsic-detailes h2 {
            }

            .subsic-detailes .main {
                display: flex;
                justify-content: space-between;
                flex-direction: column;
                margin-top: 30px;
                margin-bottom: 30px;
                border-radius: 10px;
                overflow: hidden;
            }

                .subsic-detailes .main div {
                }

        .info {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        ul {
            list-style: none;
        }
        label {
          font-weight:bolder;
        }
        .sec {
          display:flex;
          justify-content:space-between;
        }
        .sec > div{
            width:47%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>Subsicription</h2>
                        <div class="bt-option">
                            <a href="Default.aspx">Home</a>
                            <a href="#">Pages</a>
                            <span>Subsicription</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%
        int subID = int.Parse(Request.QueryString["id"]);
        string userID = Request.QueryString["userid"];
        gymdbEntities2 db = new gymdbEntities2();

        Subscription sub = db.Subscriptions.Find(subID);
        string[] str = sub.SubscriptionDesc.Split(',');

        %>
    <section class="subsic-detailes ">
      <h2><%=sub.SubscriptionType%></h2>
        <div class="sec">
        <div > 
        <div class="main">
             
            <div class="img">
                <img src="img/coco.jpg" />
                <%--<%=sub.Subscriptionpic%>--%>
            </div>

            <div class="desc">
                <ul>
                    <% foreach (string l in str)
                        {%>
                    <li><%=l%></li>
                    <%}%>
                </ul>
            </div>
        </div>
       </div>
        <div>
        <div class="info">

            <div>
                <label> Enter PromoCode</label>
                <input class="form-control" id="txtpromo" type="text" runat="server" /> <br/>
                <asp:Button CssClass="btn btn-primary" ID="applay" runat="server" Text="Applay promo" OnClick="applay_Click" />
                <asp:Label ID="lblpromo" runat="server"></asp:Label>
            </div>
            <br />
       
         </div>
        <div>
           
           
              <div>
                 <label>Original Price: </label>
                 <span><%=sub.Price %> JD</span>

               </div>
               
            <div>
                  <label >New Price: </label>
                  <asp:Label ID="lblnew" runat="server"></asp:Label>
                </div>
            <div>
  
                <label>Interval: </label>
                <span><%=sub.SubscriptionInterval %> Months</span>

            </div>
        </div>
              
        <div class="info">
            <div>
                <label>Start Date: </label>
                <span>
                    <input class="form-control" type="date" id="startDate" runat="server" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>'></span></div>
           
            
        </div>
        <div>
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="send" OnClick="Button1_Click" />
        </div>

  </div>
            </div>
    </section>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</asp:Content>
