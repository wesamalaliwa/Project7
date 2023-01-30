<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="DeletePlans.aspx.cs" Inherits="project7.DashBoard.DeletePlans" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e869edadc1.js" crossorigin="anonymous"></script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


          <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                            <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Delete Plan</h3>
                             

                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                           
                                            <div class="form-outline">
                                                 <label class="form-label" for="name">Plan Name</label>
                                                <input type="text" id="Pname" runat="server" class="form-control form-control-lg" />
                                               
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                 <label class="form-label" for="Discount">Plan Interval</label>
                                                <input type="text" id="SubInterval" runat="server" class="form-control form-control-lg" />
                                               
                                            </div>

                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="form-outline">
                                                 <label class="form-label" for="StartDate">Plan Description</label>
                                                <input type="text" id="pDesc" runat="server" class="form-control form-control-lg" />
                                               
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="form-outline">
                                                  <label class="form-label" for="EndDate">Price</label>
                                                <input type="text" id="PRice" runat="server" class="form-control form-control-lg" />
                                              
                                            </div>

                                        </div>
                                    </div>

                                  

                                    <div class="mt-4 pt-2">
                                        <asp:Button ID="delete" runat="server" Text="delete" OnClick="delete_Click"  />
                                        <asp:Button ID="cancel" runat="server" Text="cancel" OnClick="cancel_Click"   />
                                    </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>
