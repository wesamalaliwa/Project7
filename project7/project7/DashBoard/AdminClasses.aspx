<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="AdminClasses.aspx.cs" Inherits="project7.DashBoard.AdminClasses" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-secondary rounded h-100 p-4">

               <asp:Button ID="addClass" runat="server" class="btn btn-mg btn-primary m-2" Text="Add Class" OnClick="addClass_Click" />

 
                  
    <asp:GridView ID="GridView1" runat="server" class="table">
        <Columns>
            <asp:HyperLinkField HeaderText="Edit" Text="edit" DataNavigateUrlFields="ClassID" DataNavigateUrlFormatString="EditClass.aspx?id={0}" />
            <asp:HyperLinkField HeaderText="Delete" Text="delete" DataNavigateUrlFields="ClassID" DataNavigateUrlFormatString="deleteClass.aspx?id={0}" />
        </Columns>
    </asp:GridView>
     
              </div>
</asp:Content>
