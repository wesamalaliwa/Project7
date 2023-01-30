<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="DeleteCoaches.aspx.cs" Inherits="project7.DashBoard.WebForm3" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <div class="bg-secondary rounded h-70 p-4 container" style="display:block; box-sizing:border-box; height:400px; width:700.4px;" >
          <h6 class="mb-4">Delete Coachs</h6>

    <div>
                                                                                <label class="form-label" for="code">FirstName : </label>


                                                                                <label type="text" text="" id="Fname" runat="server" class="form-label" />


        </div>
        
    <div>
                                                                                <label class="form-label" for="code">LastName : </label>


                                                                                <label type="text" text="" id="Lname" runat="server" class="form-label" />


        </div>
      
    <div>
                                                                                <label class="form-label" for="code">Email : </label>


                                                                                <label type="text" text="" id="Email" runat="server" class="form-label" />


        </div>

           
    <div>
                                                                                <label class="form-label" for="code">PhoneNumber : </label>


                                                                                <label type="text" text="" id="Phone" runat="server" class="form-label" />


        </div>
           
    <div>


        <asp:Image ImageUrl="#" ID="Image1" runat="server"  Width="150px" Height="150px"/>


        </div>
                                                                                <label class="form-label" for="code">Description : </label>


                                                                                <label type="text" text="" id="Desc" runat="server" class="form-label" />


        <br /> <br />

        <asp:Button ID="Addbtn" runat="server" OnClick="delete_Click" Text="Delete" Class="btn btn-mg btn-primary m-2" />
        <asp:Button Text="Cancel" runat="server" ID="Can" Class="btn btn-mg btn-primary m-2" OnClick="Can_Click" />


         </div>



</asp:Content>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <br />
    <br />
    <div class="bg-secondary rounded h-100 p-4 container" style="display:block; box-sizing:border-box; height:auto; width:700.4px;" >
          <h6 class="mb-4">Edit Coachs</h6>

    <div>
 
             <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                            <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Delete coach</h3>

                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                           
                                            <div class="form-outline">
                                                <label type="text" text="" id="Fname" runat="server" class="form-label" />
                                                                            <div class="form-floating mb-3">

                                                <label class="form-label" for="code">FirstName</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <label type="text" id="Lname" runat="server" class="form-label" />
                                                                                                                            
                                                <div class="form-floating mb-3">

                                                <label class="form-label" for="Discount">LastName</label>
                                            </div>

                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="form-outline">
                                                <label type="date" id="email" runat="server" class="form-label" />
                                                                                                                            
                                                <div class="form-floating mb-3">

                                                <label class="form-label" for="StartDate">Email</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="form-outline">
                                                <label type="date" id="Phone" runat="server" class="form-label" />
                                                                                                                            
                                                <div class="form-floating mb-3">

                                                <label class="form-label" for="EndDate">Phone</label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row">
                                          <div class="col-md-6 mb-4 pb-2">

                                              <div class="form-outline">
                                                <label type="number" id="Photo" runat="server" class="form-label" min="1" />
                                                                                                                             
                                                  <div class="form-floating mb-3">

                                                <label class="form-label" for="MaxUses">pic</label>
                                            </div>

                                        </div>
                                        
                                    </div>

                                                                       
                                        <div class="row">
                                          <div class="col-md-6 mb-4 pb-2">

                                              <div class="form-outline">
                                                <label type="number" id="Desc" runat="server" class="form-label" min="1" />
                                                                                                                             
                                                  <div class="form-floating mb-3">

                                                <label class="form-label" for="MaxUses">Description</label>
                                            </div>

                                        </div>
                                        
                                    </div>

                                    <div class="mt-4 pt-2">

                                        <asp:Image id="Image1" runat="server" />
                                        <asp:Button ID="delete" runat="server" Text="delete" OnClick="delete_Click" Class="btn btn-mg btn-primary m-2"    />
                                        <asp:Button ID="cancel" runat="server" Text="cancel" Class="btn btn-mg btn-primary m-2"     />
                                    </div>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      
  
</asp:Content>--%>
