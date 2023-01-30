<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="Addp.aspx.cs" Inherits="project7.DashBoard.WebForm5" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
        .h-100{
            height: 75% !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <br />
    <div class="bg-secondary rounded h-100 p-4 container"    style="display:block; box-sizing:border-box; height:auto; width:700.4px;" >
                            <h6 class="mb-4">Add New Promo</h6>
                            <div class="form-floating mb-3">
                                <input type="text" id="code" runat="server" class="form-control" />
                                <label class="form-label" for="code">Promo Code</label>
                            </div>

                            <div class="form-floating mb-3"> 
                                <input type="text" id="Discount" runat="server" class="form-control" />
                                <label class="form-label" for="Discount">Promo Discount</label>
                            </div>

                            <div class="form-floating mb-3">
                             <input type="date" id="StartDate" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>' />
                             <label class="form-label" for="StartDate">StartDate</label>
                            </div>
                           
                               <div class="form-floating">
                               <input   type="date" id="EndDate" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>'/>
                               <label class="form-label" for="EndDate">EndDate</label>
                               </div>

                              <br />
         
                             
        
                                    <div class="mt-4 pt-2">
                                        <asp:Button ID="add" runat="server" class="btn btn-mg btn-primary m-2" Text="Add Promo" OnClick="add_Click"   />
                                        <asp:Button ID="cancel" runat="server" class="btn btn-mg btn-primary m-2"  Text="cancel" OnClick="cancel_Click"  />

                                    </div>

                        </div>


</asp:Content>

