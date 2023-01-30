<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="paused.aspx.cs" Inherits="project7.paused" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <h1 style="text-align:center;">pause your subscription</h1>
    <div class="container-fluid" style="width:50%; padding-top:5%;">
  <!-- Email input -->
          <div id="pause">
                
                 </div>
  <div class="form-outline mb-4">
            <input type="date" id="start" runat="server" class="form-control"/>
    <label class="form-label" for="form1Example1">Start date</label>
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
                           <input type="date" id="end" runat="server" class="form-control"/>

    <label class="form-label" for="form1Example2">End date</label>
  </div>

  <!-- 2 column grid layout for inline styling -->


  <!-- Submit button -->
                             <asp:Button ID="btnPause" runat="server" Text="Send" OnClick="btnPause_Click"   class="btn btn-primary btn-block" />

</div>
</asp:Content>
