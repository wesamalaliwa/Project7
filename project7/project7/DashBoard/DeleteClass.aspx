<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="DeleteClass.aspx.cs" Inherits="project7.DashBoard.DeleteClass" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="bg-secondary rounded h-100 p-4 container"    style="display:block; box-sizing:border-box; height:auto; width:700.4px;" >
                            <h6 class="mb-4">Delete Class</h6>
                            <div class="form-floating mb-3">
                                <input type="text"  ID="txtName" runat="server" class="form-control" disabled />
                                <label class="form-label" for="code">Name</label>
                            </div>
        <br />
                            <div class="form-floating mb-3"> 
                                <input type="text" ID="txtdesc" runat="server" class="form-control" disabled/>
                                <label class="form-label" for="Discount">Description</label>
                            </div>
        <br />

                              <div class="form-floating mb-3">
                              
                            
                              <span id="prevStartTime" runat="server"></span>
                            </div>
                            <br/>

                            <div class="form-floating mb-3">
                                <span id="prevEndTime" runat="server"></span>
                            </div>
        <br/>
                            <div class="form-floating mb-3">
                                 <span id="prevStartDate" runat="server"></span>
                            </div>
        <br />
                           
                               <div class="form-floating">
                                    <span id="prevEndDate" runat="server"></span>
                               </div>
        <br />

                              <br />
         
                                <div class="form-floating mb-3"> 
                                    <img  src="a" runat="server" id="image" style="width:50px ; height:50px"/>
                                        <label class="form-label" for="MaxUses" Height="60px">image </label>
                               </div>

        <br />
                                  <div class="form-floating mb-3"  id="inputs"> 
                                      <span id="prevDays" runat="server"></span>
                                    <div class="mt-4 pt-2">
                                        <asp:Button ID="DeleteClas" Width="97%" Height="50px" class="btn btn-mg btn-primary m-2" runat="server" Text="Delete" OnClick="DeleteClass_Click"  />
                                        
                                    </div>
                               </div>
        <br/>


                        </div>
</asp:Content>
