<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="userPauseReq.aspx.cs" Inherits="project7.DashBoard.userPauseReq" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-secondary rounded h-100 p-4">
        <h1>Paused Subscriptions Requests</h1>
    <asp:GridView CssClass="table table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="user name" />
            <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
            <asp:BoundField DataField="EndDate" HeaderText="End Date" />
            <asp:BoundField DataField="interval" HeaderText="Interval " />
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="lb1" runat="server" OnClick="lb1_Click">Accept</asp:LinkButton>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("SubscriptionCustomerID") %>' />
                    <asp:LinkButton ID="lb2" runat="server" OnClick="lb2_Click">Cancel</asp:LinkButton>
                    <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("pauseID") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </div>
</asp:Content>
