<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="userSubReq.aspx.cs" Inherits="project7.DashBoard.userSubReq" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-secondary rounded h-100 p-4">
        <h1>Subscription Requests</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1 table" Width="100%" Height="258px">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="user name" />
            <asp:BoundField DataField="subscriptionType" HeaderText="Sub Type" />
            <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
            <asp:BoundField DataField="EndDate" HeaderText="End Date" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
            <asp:BoundField DataField="PromoCode" HeaderText="PromoCode" />
            <asp:TemplateField HeaderText="Action">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Approve</asp:LinkButton>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("SubscriptionCustomerID") %>' />
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Cancel</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
</asp:GridView>
        </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

</asp:Content>
