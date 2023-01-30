<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="AddPlans.aspx.cs" Inherits="project7.DashBoard.AddPlans" enableEventValidation="false" %>
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
    <div class="bg-secondary rounded h-100 p-4 container" style="display:block; box-sizing:border-box; height:auto; width:700.4px;" >
          <h6 class="mb-4">Edit Plans</h6>


                            <div class="form-floating mb-3">

                
              
                      <label class="form-label" for="form3Example8"> Plan Name</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
                
                </div>

                                             <div class="form-floating mb-3">
                      <label class="form-label" for="form3Example8">Description of plan</label>
                    <textarea id="desc" runat="server" class="form-control" rows="3" placeholder="write description of plan" ></textarea>
                
                </div>
                                         <div class="form-floating mb-3">


                       <label class="form-label" for="form3Example9"> Interval </label>
                      <asp:DropDownList class="form-select mb-3" ID="DropDownList1" runat="server" >
                          <asp:ListItem Value="1">one month</asp:ListItem>
                          <asp:ListItem Value="2">three month</asp:ListItem>
                          <asp:ListItem Value="3">one year</asp:ListItem>
                          <asp:ListItem></asp:ListItem>

                      </asp:DropDownList>
                  </div>
            <%--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>
<%--              <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" Type="Integer" MaximumValue="1000" MinimumValue="1">--%>
                  
                                         <div class="form-floating mb-3">
                   <label class="form-label" for="form3Example9">price</label>
                      <asp:TextBox  ID="TextBox2" runat="server" class="form-control" ></asp:TextBox>
                   
                  </div>
             <%-- </asp:RangeValidator>--%>
                 
                                         <div class="form-floating mb-3">
        
                  <label class="form-label" for="form3Example97">photo plane</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif" /> 
                    
                    <asp:Label class="form-label" ID="img" runat="server" Text="Label" Visible="false"></asp:Label>

                </div>

                <asp:Button ID="Add" runat="server" Text="SAVE" class="btn btn-mg btn-primary m-2" OnClick="Add_Click"  />

               
           <%--   <button type="submit" class="btn btn-success btn-lg mb-1" >Submit</button>--%>

    




        </div>
</asp:Content>
