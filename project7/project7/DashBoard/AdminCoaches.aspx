<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="AdminCoaches.aspx.cs" Inherits="project7.DashBoard.AdminCoaches" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="bg-secondary rounded h-100 p-4">
    <asp:Button ID="Button1" class="btn btn-mg btn-primary m-2" runat="server" Text="Add Coaches" OnClick="Button1_Click"  /><br/>
        <asp:GridView ID="GridView1" runat="server"  Class="table" AutoGenerateColumns="False" >
            <Columns>
                
            
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:ImageField DataImageUrlField="pic" HeaderText="Photo"  >
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                
            
                <asp:HyperLinkField DataNavigateUrlFields="CoachID" DataNavigateUrlFormatString="DeleteCoaches.aspx?id={0}" Text="Delete" />
                
            
                <asp:HyperLinkField DataNavigateUrlFields="CoachID" DataNavigateUrlFormatString="editCoach.aspx?id={0}"  Text="Edit" />
                
            
            </Columns>
       
           
         
       
       
        
        </asp:GridView> 
        </div>
        
    

</asp:Content>
