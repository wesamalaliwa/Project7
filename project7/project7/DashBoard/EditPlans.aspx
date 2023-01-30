<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="EditPlans.aspx.cs" Inherits="project7.DashBoard.EditPlans" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
      <style>
        .h-100{
            height: 85% !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
       <div class="bg-secondary rounded h-100 p-4 container"    style="display:block; box-sizing:border-box; height:auto; width:700.4px;" >
                                       <h6 class="mb-4">Edit Plans</h6>
           
                            <div class="form-floating mb-3">
                              
                                            <asp:TextBox ID="PName" runat="server" class="form-control"></asp:TextBox>
                                <label class="form-label" for="name">Plan Name</label>
                            </div>
        <br />
           
                            <div class="form-floating mb-3">
                                <input type="text" id="code" runat="server" class="form-control" />
                                <label class="form-label" for="code">plan description</label>
                            </div>
                                               <div class="col-md-6 mb-4">

             <div class="form-outline">
                                            <label class="form-label" for="Discount">Plan Interval</label>
                                            <asp:DropDownList class="form-select mb-3" aria-label="Default select example" ID="DropDownList1" runat="server" fdprocessedid="8zaqb" >
                                                <asp:ListItem Value="1">month</asp:ListItem>
                                                <asp:ListItem Value="2">three month</asp:ListItem>
                                                <asp:ListItem Value="3">year</asp:ListItem>
                                                <asp:ListItem></asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
</div>
                                               <div class="col-md-6 mb-4">

            <label class="form-label" for="StartDate">Plan Description</label>
                                            <textarea id="desc" runat="server" class="form-control" rows="3" placeholder="write description of plan" ></textarea>

</div>
                                               <div class="col-md-6 mb-4">

            <label class="form-label" for="EndDate">Price</label>
                                            <asp:TextBox class="form-control" ID="price" runat="server"></asp:TextBox>
</div>
    
                                               <div class="col-md-6 mb-4">

             <label class="form-label" for="form3Example97">photo plan</label>
                                    <asp:FileUpload class="form-label" ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif" />

                                    <asp:Label ID="img" runat="server" Text="Label" Visible="false"></asp:Label>
</div>
                          <div class="mt-4 pt-2">
              <asp:Button ID="edit" class="btn btn-mg btn-primary m-2" runat="server" Text="Edit" OnClick="edit_Click" />
                                    <asp:Button class="btn btn-mg btn-primary m-2" ID="cancel" runat="server" Text="cancel" OnClick="cancel_Click" />
                              </div>


                                      




                                    </div>

                               <%--       

                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-6 mb-4 pb-2">

                                        <div class="form-outline">
                                           
                                        </div>

                                    </div>
                                    <div class="col-md-6 mb-4 pb-2">

                                        <div class="form-outline">
                                           
                                        </div>

                                    </div>
                                </div>
                                <div class="form-outline mb-4">

                                  
                                </div>



                                <div class="mt-4 pt-2">
                                 
                                </div>
                            
   





        <br />
                            <div class="form-floating mb-3"> 
                                <input type="text" id="Discount" runat="server" class="form-control" />
                                <label class="form-label" for="Discount">Promo Discount</label>
                            </div>
        <br />

                            <div class="form-floating mb-3">
                             <input type="date" id="StartDate" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>' />
                             <label class="form-label" for="StartDate">StartDate</label>
                            </div>
        <br />
                           
                               <div class="form-floating">
                               <input   type="date" id="EndDate" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>'/>
                               <label class="form-label" for="EndDate">EndDate</label>
                               </div>
        <br />

                              <br />
         
                                <div class="form-floating mb-3">
                                         <input type="number" id="MaxUses" runat="server" class="form-control" min="1" max="4" />
                                         <label class="form-label" for="MaxUses">MaxUses</label>
                               </div>

        <br />
        
                                

                        </div>--%>








</asp:Content>
