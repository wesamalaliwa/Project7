<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="project7.Account.Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">--%>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />

    <style>
        #ctl01 {
/*            background-color: black;

*/    
            background-image:url("../img/login.jpg");
            background-size:cover;
        }

        .editt {
            border: none;
            background: none;
            cursor: pointer;
            margin: 0;
            padding: 0;
            color: gray;
        }

        #MainContent_FileUpload1 {
            color: white;
            width: 280px;
        }

        body {
            color: #797979;
            background: #f1f2f7;
            font-family: 'Open Sans', sans-serif;
            padding: 0px !important;
            margin: 0px !important;
            font-size: 13px;
            text-rendering: optimizeLegibility;
            -webkit-font-smoothing: antialiased;
            -moz-font-smoothing: antialiased;
        }

        .profile-nav, .profile-info {
            margin-top: 30px;
        }

            .profile-nav .user-heading {
                background: #fbc02d;
                color: #fff;
                border-radius: 4px 4px 0 0;
                -webkit-border-radius: 4px 4px 0 0;
                padding: 30px;
                text-align: center;
            }

                .profile-nav .user-heading.round a {
                    border-radius: 50%;
                    -webkit-border-radius: 50%;
                    border: 10px solid rgba(255,255,255,0.3);
                    display: inline-block;
                }

                .profile-nav .user-heading a img {
                    width: 112px;
                    height: 112px;
                    border-radius: 50%;
                    -webkit-border-radius: 50%;
                }

                .profile-nav .user-heading h1 {
                    font-size: 22px;
                    font-weight: 300;
                    margin-bottom: 5px;
                }

                .profile-nav .user-heading p {
                    font-size: 12px;
                }

            .profile-nav ul {
                margin-top: 1px;
            }

                .profile-nav ul > li {
                    border-bottom: 1px solid #ebeae6;
                    margin-top: 0;
                    line-height: 30px;
                }

                    .profile-nav ul > li:last-child {
                        border-bottom: none;
                    }

                    .profile-nav ul > li > a {
                        border-radius: 0;
                        -webkit-border-radius: 0;
                        color: #89817f;
                        border-left: 5px solid #fff;
                    }

                        .profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active a {
                            background: #f8f7f5 !important;
                            border-left: 5px solid #fbc02d;
                            color: #89817f !important;
                        }

                    .profile-nav ul > li:last-child > a:last-child {
                        border-radius: 0 0 4px 4px;
                        -webkit-border-radius: 0 0 4px 4px;
                    }

                    .profile-nav ul > li > a > i {
                        font-size: 16px;
                        padding-right: 10px;
                        color: #bcb3aa;
                    }

        .r-activity {
            margin: 6px 0 0;
            font-size: 12px;
        }


        .p-text-area, .p-text-area:focus {
            border: none;
            font-weight: 300;
            box-shadow: none;
            color: #c3c3c3;
            font-size: 16px;
        }

        .profile-info .panel-footer {
            background-color: #f8f7f5;
            border-top: 1px solid #e7ebee;
        }

            .profile-info .panel-footer ul li a {
                color: #7a7a7a;
            }

        .bio-graph-heading {
            background: #fbc02d;
            color: #fff;
            text-align: center;
            font-style: italic;
            padding: 40px 110px;
            border-radius: 4px 4px 0 0;
            -webkit-border-radius: 4px 4px 0 0;
            font-size: 16px;
            font-weight: 300;
        }

        .bio-graph-info {
            color: #89817e;
        }

            .bio-graph-info h1 {
                font-size: 42px;
                font-weight: 400;
                margin: 0 0 50px;
            }

        .bio-row {
            width: 50%;
            float: left;
            margin-bottom: 10px;
            padding: 0 15px;
        }

            .bio-row p span {
                /*                width: 120px;
*/ display: inline-block;
                font-weight: bolder;
            }

        .bio-chart, .bio-desk {
            float: left;
        }

        .bio-chart {
            width: 40%;
        }

        .bio-desk {
            width: 60%;
        }

            .bio-desk h4 {
                font-size: 15px;
                font-weight: 400;
            }

                .bio-desk h4.terques {
                    color: #4CC5CD;
                }

                .bio-desk h4.red {
                    color: #e26b7f;
                }

                .bio-desk h4.green {
                    color: #97be4b;
                }

                .bio-desk h4.purple {
                    color: #caa3da;
                }

        .file-pos {
            margin: 6px 0 10px 0;
        }

        .profile-activity h5 {
            font-weight: 300;
            margin-top: 0;
            color: #c3c3c3;
        }

        .summary-head {
            background: #ee7272;
            color: #fff;
            text-align: center;
            border-bottom: 1px solid #ee7272;
        }

            .summary-head h4 {
                font-weight: 300;
                text-transform: uppercase;
                margin-bottom: 5px;
            }

            .summary-head p {
                color: rgba(255,255,255,0.6);
            }

        ul.summary-list {
            display: inline-block;
            padding-left: 0;
            width: 100%;
            margin-bottom: 0;
        }

            ul.summary-list > li {
                display: inline-block;
                width: 19.5%;
                text-align: center;
            }

                ul.summary-list > li > a > i {
                    display: block;
                    font-size: 18px;
                    padding-bottom: 5px;
                }

                ul.summary-list > li > a {
                    padding: 10px 0;
                    display: inline-block;
                    color: #818181;
                }

            ul.summary-list > li {
                border-right: 1px solid #eaeaea;
            }

                ul.summary-list > li:last-child {
                    border-right: none;
                }

        .activity {
            width: 100%;
            float: left;
            margin-bottom: 10px;
        }

            .activity.alt {
                width: 100%;
                float: right;
                margin-bottom: 10px;
            }

            .activity span {
                float: left;
            }

            .activity.alt span {
                float: right;
            }

            .activity span, .activity.alt span {
                width: 45px;
                height: 45px;
                line-height: 45px;
                border-radius: 50%;
                -webkit-border-radius: 50%;
                background: #eee;
                text-align: center;
                color: #fff;
                font-size: 16px;
            }

            .activity.terques span {
                background: #8dd7d6;
            }

            .activity.terques h4 {
                color: #8dd7d6;
            }

            .activity.purple span {
                background: #b984dc;
            }

            .activity.purple h4 {
                color: #b984dc;
            }

            .activity.blue span {
                background: #90b4e6;
            }

            .activity.blue h4 {
                color: #90b4e6;
            }

            .activity.green span {
                background: #aec785;
            }

            .activity.green h4 {
                color: #aec785;
            }

            .activity h4 {
                margin-top: 0;
                font-size: 16px;
            }

            .activity p {
                margin-bottom: 0;
                font-size: 13px;
            }

            .activity .activity-desk i, .activity.alt .activity-desk i {
                float: left;
                font-size: 18px;
                margin-right: 10px;
                color: #bebebe;
            }

            .activity .activity-desk {
                margin-left: 70px;
                position: relative;
            }

            .activity.alt .activity-desk {
                margin-right: 70px;
                position: relative;
            }

                .activity.alt .activity-desk .panel {
                    float: right;
                    position: relative;
                }

        .activity-desk .panel {
            background: #F4F4F4;
            display: inline-block;
        }


        .activity .activity-desk .arrow {
            border-right: 8px solid #F4F4F4 !important;
        }

        .activity .activity-desk .arrow {
            border-bottom: 8px solid transparent;
            border-top: 8px solid transparent;
            display: block;
            height: 0;
            left: -7px;
            position: absolute;
            top: 13px;
            width: 0;
        }

        .activity-desk .arrow-alt {
            border-left: 8px solid #F4F4F4 !important;
        }

        .activity-desk .arrow-alt {
            border-bottom: 8px solid transparent;
            border-top: 8px solid transparent;
            display: block;
            height: 0;
            right: -7px;
            position: absolute;
            top: 13px;
            width: 0;
        }

        .activity-desk .album {
            display: inline-block;
            margin-top: 10px;
        }

            .activity-desk .album a {
                margin-right: 10px;
            }

                .activity-desk .album a:last-child {
                    margin-right: 0px;
                }

        .container bootstrap snippets bootdey {
            margin-top: 200px;
        }

        .profile-nav .user-heading {
            background: none;
        }

        .bio-graph-heading {
            background: none;
        }

        .js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers no-applicationcache svg inlinesvg smil svgclippaths {
            background-color: #c5a880 !important;
        }

        }

        html {
            background-color: #c5a880;
        }

        .change {
            display: inline;
        }

        .txt {
            margin-top: 100px;
            width: 75%;
        }

        txt1 {
            width: 75%;
            color: black;
            font-weight: bolder;
        }
        .txt2{
                        width: 75% !important;

        }
        body {
            background-color: #f7f6f6
        }

        .card {
            border: none;
            box-shadow: 5px 6px 6px 2px #e9ecef;
            border-radius: 4px;
        }


        .dots {
            height: 4px;
            width: 4px;
            margin-bottom: 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
        }

        .badge {
            padding: 7px;
            padding-right: 9px;
            padding-left: 16px;
            box-shadow: 5px 6px 6px 2px #e9ecef;
        }

        .user-img {
            margin-top: 4px;
        }

        .check-icon {
            font-size: 17px;
            color: #c3bfbf;
            top: 1px;
            position: relative;
            margin-left: 3px;
        }

        .form-check-input {
            margin-top: 6px;
            margin-left: -24px !important;
            cursor: pointer;
        }


            .form-check-input:focus {
                box-shadow: none;
            }


        .icons i {
            margin-left: 8px;
        }

        .reply {
            margin-left: 12px;
        }

            .reply small {
                color: #b7b4b4;
            }


                .reply small:hover {
                    color: green;
                    cursor: pointer;
                }
    </style>
</asp:Content>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div>
        <div class="container bootstrap snippets bootdey" style="margin-top: 78px; background-color: #e9ecef; height: 780px;">
            <div class="row">
                <div class="profile-nav col-md-3">
                    <div class="panel">
                        <div class="user-heading round" style="color: #c5a880">
                            <a href="#">
                                <img runat="server" id="image" src="../images/profile.jpg" />
                            </a>
                            <h1>
                                <asp:Label ID="Name2" runat="server" Text=""></asp:Label></h1>
                            <p>
                                <asp:Label ID="Email1" runat="server" Text=""></asp:Label>
                            </p>
                        </div>

                        <ul class="nav nav-pills nav-stacked" style="display: block;">
                            <li class="active"><a href="Manage.aspx"><i class="fa fa-user"></i>Profile</a></li>
                            <%--                            <li><a href="#"><i class="fa fa-calendar"></i>Recent Activity <span class="label label-warning pull-right r-activity">9</span></a></li>--%>
                            <li><a href="#"><i class="fa fa-edit"></i>
                                <asp:Button ID="Button3" runat="server" Text=" Edit profile " CssClass="editt" OnClick="Button3_Click" /></a></li>
                            <li><a href="#"><i class="fa fa-edit"></i>
                                <asp:HyperLink class="profile-edit-btn" NavigateUrl="/Account/ManagePassword" Text="Change password" Visible="true" ID="ChangePassword" runat="server" />
                            </a></li>
                                  <li><a href="#"><i class="fa fa-edit"></i>
                                <asp:Button ID="Button4" runat="server" Text=" Pause subscription " CssClass="editt" OnClick="Button4_Click"  /></a></li>


                        </ul>
                    </div>
                </div>
                <div class="profile-info col-md-9">

                    <div class="panel">

                        <div class="panel-body bio-graph-info">
                            <h1>Your Information </h1>
                            <div class="row" id="row2" runat="server">
                                <div class="bio-row">
                                    <h5>
                                        <span>First Name :</span>
                                        <asp:Label ID="FirstName" runat="server" Text=""></asp:Label>
                                    </h5>
                                </div>
                                <div class="bio-row">
                                    <h5>
                                        <span>Last Name : </span>
                                        <asp:Label ID="LastName" runat="server" Text=""></asp:Label>
                                    </h5>
                                </div>
                                <div class="bio-row">
                                    <h5>
                                        <span>Email : </span>
                                        <asp:Label ID="Email" runat="server" Text=""></asp:Label>
                                    </h5>
                                </div>
                                <div class="bio-row">
                                    <h5>
                                        <span>Phone Number : </span>
                                        <asp:Label ID="Phone" runat="server" Text=""></asp:Label>
                                    </h5>
                                </div>
                            </div>
                            <div id="row1" runat="server">
                                <div class="row">
                                    <div class="bio-row">
                                        <p>
                                            <span>First Name </span>
                                            <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                        </p>
                                    </div>
                                    <div class="bio-row">
                                        <p>
                                            <span>Last Name </span>
                                            <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                                        </p>
                                    </div>
                                    <div class="bio-row">
                                        <p>
                                            <span>Email </span>
                                            <asp:TextBox class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                        </p>
                                    </div>

                                    <div class="bio-row">
                                        <p>
                                            <span>Phone Number </span>
                                            <asp:TextBox class="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                                        </p>
                                    </div>

                                    <div class="bio-row">
                                        <p>
                                            <span style="width: 208px;">Edit Your Photo</span>
                                            <br>
                                            <asp:FileUpload class="btn btn-primary" ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif" />
                                        </p>
                                    </div>
                                    <div class="bio-row">
                                        <span style="width: 208px;"></span>
                                        <br />
                                        <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Update" OnClick="Button2_Click" Height="44px" Width="99px" />

                                    </div>
                                </div>

                            </div>

                                   <div id="row3" runat="server">
                             <div class="row gutters-sm">
                   <div style="width:1150px;" class="col-md-12 mb-3">
                    <div style="width:100%;"  class="card">
                        <h3>Your Sub</h3>
                           <table class="table table-striped">
                               <tr>
                                   <th>sub type</th><th>start date</th> <th>end date</th><th>Action</th>
                                   </tr>
                            <% 
                                project7.gymdbEntities2 db = new project7.gymdbEntities2();
                                var user = db.AspNetUsers.Find(User.Identity.GetUserId());
                                var sub = from item in db.SubscriptionsCustomers.ToList()
                                          where user.Id == item.UserID
                                          select item;

                                foreach (var item in sub)
                                {
                                    
                                %>
                             <tr>
                                <td><%=item.Subscription.SubscriptionType %></td><td><%=item.StartDate %></td><td><%=item.EndDate %></td><td><span id="pop"><a href="../paused.aspx?subid=<%=item.SubscriptionCustomerID %>">pause</a></span> </td>
                              </tr>
                        <% }%>

                               </table>
                        </div>
                    </div>
                  </div>

                            </div>

                        </div>
                    </div>
                    <div>
                    </div>
                    <div class="panel txt" id="txt2" runat="server">

                        <textarea placeholder="Write your feedback ?" runat="server" id="feedback" rows="2" class="form-control"></textarea>

                        <footer class="panel-footer">

                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Button class="btn btn-warning pull-right" ID="Button1" runat="server" Text="Post" OnClick="Button1_Click" />
                                </ContentTemplate>
                            </asp:UpdatePanel>

                        </footer>
                    </div>
                    <div id="txt" runat="server">
                        <div class="txt1">

                            <div class="mt-5">

                                <div class="row ">

                                    <div class="col-md-12">

                                        <div class="card p-3 txt2">

                                            <div class="d-flex justify-content-between align-items-center">

                                                <div class="user d-flex flex-row align-items-center">

                                <img runat="server" id="Img1" width="40" height="40" class="user-img rounded-circle mr-2" src="../images/profile.jpg" />

                                                    <span><small class="font-weight-bold text-primary">
                                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                    </small><small class="font-weight-bold">
                                                        <asp:Label ID="feeds" runat="server" Text=""></asp:Label></small></span>

                                                </div>

<%--                                                <small id="">2 days ago</small>--%>
                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>







            </div>
        </div>

    </div>


    <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
        function pass(quantity, donation) {

            Swal.fire({
                icon: 'success',
                title: 'Your feedback has been sent succesfully !',
                html: '<a href="https://localhost:44314/Default">Return To Home Page</a>',
                //footer: '<a href="">Why do I have this issue?</a>'

            }).then(function () {
                window.location = "https://localhost:44314/Account/Manage";
            });
        }

    </script>

    <div>
        <div>


            <dl class="dl-horizontal">
                <%--    <dt>Password:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]" Visible="false" ID="CreatePassword" runat="server" />--%>
                    </dd>
          <%--          <dt>External Logins:</dt>
                    <dd><%: LoginsCount %>
                        <asp:HyperLink NavigateUrl="/Account/ManageLogins" Text="[Manage]" runat="server" />

                    </dd>--%>
                <%--            <%--
                        Phone Numbers can used as a second factor of verification in a two-factor authentication system.
                        See <a href="https://go.microsoft.com/fwlink/?LinkId=403804">this article</a>
                        for details on setting up this ASP.NET application to support two-factor authentication using SMS.
                        Uncomment the following blocks after you have set up two-factor authentication
                --%>
                <%--
                    <dt>Phone Number:</dt>
                    <% if (HasPhoneNumber)
                       { %>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/AddPhoneNumber" runat="server" Text="[Add]" />
                    </dd>
                    <% }
                       else
                       { %>
                    <dd>
                        <asp:Label Text="" ID="PhoneNumber" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/AddPhoneNumber" runat="server" Text="[Change]" /> &nbsp;|&nbsp;
                        <asp:LinkButton Text="[Remove]" OnClick="RemovePhone_Click" runat="server" />
                    </dd>
                    <% } %>
                --%>

                <%--                    <dt>Two-Factor Authentication:</dt>
                    <dd>
                        <p>
                            There are no two-factor authentication providers configured. See <a href="https://go.microsoft.com/fwlink/?LinkId=403804">this article</a>
                            for details on setting up this ASP.NET application to support two-factor authentication.
                        </p>--%>
                <% if (TwoFactorEnabled)
                    { %>
                <%--
                        Enabled
                        <asp:LinkButton Text="[Disable]" runat="server" CommandArgument="false" OnClick="TwoFactorDisable_Click" />
                --%>
                <% }
                    else
                    { %>
                <%--
                        Disabled
                        <asp:LinkButton Text="[Enable]" CommandArgument="true" OnClick="TwoFactorEnable_Click" runat="server" />
                --%>
                <% } %>
                <%--      </dd>--%>
            </dl>

        </div>
    </div>
    <%-- </div>
    </div>--%>

   
</asp:Content>
