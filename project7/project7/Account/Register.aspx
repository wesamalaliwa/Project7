<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project7.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
      
         .bacgg
        {
            height:800px;
            background-image:url("../img/login.jpg" );
            background-size:cover;
        }
        .log
        {
            border:1px solid white;
            background-color:darkgray;
            opacity:0.8;    
            width:50%;
            height:500px;
            margin-bottom:100px;
            display:grid;
            grid-template-columns:auto auto;
           justify-content:space-around;
           border-radius:10px;
        }
        .log:hover
        {
            opacity:0.9;    
        }
        .txtlog
        {
            color:orangered;
            font-size:15px;
            font-weight:bolder;
        }
        .logbtn
        {
            border:2px solid orangered;
            background-color:white;
            color:orangered;
            font-weight:bolder;
        }
        .Reglog
        {
            color:orangered;
            
        }
        .tit
        {
        /*    text-align:center;
            display:inline-block;*/
    
        }
        .txt{
            display:inline;
           
        }
    </style>
    <%--    <h2><%: Title %>.</h2>--%>
    <div class="bacgg">
             <div class="tit">
             <h1 style="color:orangered;">Reg<span style="color:white;">i</span>ste<span style="color:white;">r </span></h1>

            </div>
        <div class=" row h-100 align-items-center justify-content-center" style="min-height: 100vh;" >
     
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>

        <div class="form-horizontal log">
         
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label txtlog">FirstName</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="FirstName" CssClass="form-control"/>
              
                </div>
            </div>
                  <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label txtlog">LastName</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="LastName" CssClass="form-control"/>
              
                </div>
            </div>

            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label txtlog">Email</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="The email field is required." />
                </div>
            </div>
<%--             <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="PhoneNumber" CssClass="col-md-2 control-label txtlog">PhoneNumber</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="PhoneNumber" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="PhoneNumber"
                        CssClass="text-danger" ErrorMessage="The PhoneNumber field is required." />
                </div>
            </div>--%>
             <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="PhoneNumber" CssClass="col-md-2 control-label txtlog">PhoneNumber</asp:Label>
                <div class="col-md-10">
                 <asp:TextBox ID="PhoneNumber" runat="server" Class="form-control"></asp:TextBox>

                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PhoneNumber" ErrorMessage="Invalid Phone Number" ValidationExpression="((079)|(078)|(077)){1}[0-9]{7}" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                 </div>
            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label txtlog">Password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
            </div>
      
             <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label txtlog txt">Confirm password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button  runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default logbtn " />
                </div>
            </div>
            
        </div>
        </div>
    </div>
</asp:Content>
