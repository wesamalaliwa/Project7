<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="AddCoaches.aspx.cs" Inherits="project7.DashBoard.AddCoaches" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <br />
    <br />
    <div class="bg-secondary rounded h-100 p-4 container" style="display:block; box-sizing:border-box; height:auto; width:700.4px;" >
          <h6 class="mb-4">Add Coachs</h6>

    <div>
            <label for="name" class="form-label">FirstName</label> 

                            <div class="form-floating mb-3">
    <div >
        <asp:TextBox runat="server" ID="Fname" type="text" class="form-control"  placeholder="FirstName" />
        <%--      <input id="name" name="name" placeholder="Name" type="text" class="form-control"/>--%>
    </div>
  </div>
            <label for="age" class="form-label">LastName</label> 

 
                            <div class="form-floating mb-3">
    <div >
        <asp:TextBox runat="server"  placeholder="LastName"  id="Lname"   class="form-control" type="text"/>
        <%--      <input id="age" name="age" placeholder="Age" type="text" class="form-control"/>--%>
    </div>
  </div>
    <label for="email" class="form-label" style="height: 30px">Email</label> 


                            <div class="form-floating mb-3">
    <div >

        <asp:TextBox runat="server" id="email" name="email" placeholder="Email" type="text" class="form-control"  />

    </div>
  </div>


            <label for="phone" class="form-label">Phone      </label> 


                            <div class="form-floating mb-3">

        <div class="col-8">
          <asp:TextBox ID="phone" runat="server" class="form-control" name="phone" placeholder="Phone" type="text" />
      </div>
            </div>

            <label for="photo" class="form-label">Photo</label> 


                            <div class="form-floating mb-3">
    <div class="col-8">
        <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control"  />
    </div>
  </div> 
            <label for="email" class="form-label">Description</label> 

 
                                    <div class="form-floating mb-3">


    <div class="auto-style1">

        <asp:TextBox runat="server" id="TextBox1" name="Desc" placeholder="Description" type="text" class="form-control"  />

    </div>
  </div>

        <asp:Button ID="Addbtn" runat="server" OnClick="Button1_Click" Text="Save" Class="btn btn-mg btn-primary m-2" />


         </div>

                 </div>

</asp:Content>
