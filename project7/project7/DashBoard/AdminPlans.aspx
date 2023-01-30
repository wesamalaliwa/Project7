<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="AdminPlans.aspx.cs" Inherits="project7.DashBoard.AdminPlans" enableEventValidation="false" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="bg-secondary rounded h-100 p-4">

    <asp:Button ID="Button1" runat="server" class="btn btn-mg btn-primary m-2" Text="Add Plan" OnClick="Button1_Click" />
    <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" >
    
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="SubscriptionID" DataNavigateUrlFormatString="DeletePlans.aspx?id={0}" Text="Delete" />
            <asp:HyperLinkField DataNavigateUrlFields="SubscriptionID" DataNavigateUrlFormatString="EditPlans.aspx?id={0}" Text="Edit" />
            <asp:BoundField DataField="SubscriptionType" HeaderText="plan name" />
            <asp:BoundField DataField="SubscriptionDesc" HeaderText="plan description" />
            <asp:BoundField DataField="SubscriptionInterval" HeaderText="plan interval" />
            <asp:BoundField DataField="Price" HeaderText="Price" />

            <asp:ImageField DataImageUrlField="Subscriptionpic" ControlStyle-Width="50" ControlStyle-Height="50">
                <ControlStyle Height="50px" Width="50px"></ControlStyle>
            </asp:ImageField>
        </Columns>

       
    </asp:GridView>
         </div>

</asp:Content>
