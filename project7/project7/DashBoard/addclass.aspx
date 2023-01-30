<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="addclass.aspx.cs" Inherits="project7.DashBoard.addclass" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="bg-secondary rounded h-100 p-4 container"    style="display:block; box-sizing:border-box; height:auto; width:700.4px;" >
                            <h6 class="mb-4">Add Class</h6>
                            <div class="form-floating mb-3">
                                <input type="text"  ID="txtName" runat="server" class="form-control" />
                                <label class="form-label" for="code">Name</label>
                            </div>
                                  <div class="form-floating mb-3">

                                      <asp:DropDownList runat="server" style="background-color:black; color:white; border:none; border-radius:5px;" ID="ddl">
                                        
                                      </asp:DropDownList>
                                       </div>
<%--                                <label class="form-label" for="code">Name</label>--%>
                           



        <br />

                            <div class="form-floating mb-3"> 
                                <input type="text" ID="txtdesc" runat="server" class="form-control" />
                                <label class="form-label" for="Discount">Description</label>
                            </div>
        <br />

                              <div class="form-floating mb-3">
                             <input type="time" id="startTime" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>' />
                             <label class="form-label"   for="StartDate">StartTime</label>
                            </div>
                            <br/>

                            <div class="form-floating mb-3">
                             <input type="time" id="endTime" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>' />
                             <label class="form-label"   for="StartDate">EndTime</label>
                            </div>
        <br/>
                            <div class="form-floating mb-3">
                             <input type="date" id="startDate" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>' />
                             <label class="form-label" for="StartDate">StartDate</label>
                            </div>
        <br />
                           
                               <div class="form-floating">
                               <input   type="date" id="endDate" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>'/>
                               <label class="form-label" for="EndDate">EndDate</label>
                               </div>
        <br />

                              <br />
           <label class="form-label" for="MaxUses" Height="60px" >image </label>
                           <%--     <div style="background-color:#191C24 ;"  class="form-floating mb-3"> --%>
                                     <asp:FileUpload  accept=".png,.jpg,.jpeg,.gif" ID="FUpic" class="form-control bg-dark" runat="server"   placeholder="Your Image"/>
                          <%--         
                               </div>--%>
           
        <br />
                                  <div class="form-floating mb-3"  id="inputs">                 
                                      <asp:CheckBoxList  style="width:200px;" ID="CBdays" runat="server">
                                        <asp:ListItem class="form-check-input">Sunday</asp:ListItem>
                                        <asp:ListItem class="form-check-input">Monday</asp:ListItem>
                                        <asp:ListItem class="form-check-input">Tuesday</asp:ListItem>
                                        <asp:ListItem class="form-check-input">Wednesday</asp:ListItem>
                                        <asp:ListItem class="form-check-input">ThursDay</asp:ListItem>
                                    </asp:CheckBoxList>

                                      

                
                               </div>
                                               <asp:Button ID="AddClass" Width="30%" Height="50px" class="btn btn-mg btn-primary m-2" runat="server" Text="Add" OnClick="AddClass_Click" />

    <script>

        var inputs = Array.from(document.querySelectorAll("#inputs input"))  ;

        //role = "switch" 
        inputs[0].setAttribute("checked" , "true")
        inputs.forEach(item => {
            item.classList.add("form-check-input");
            item.setAttribute("role", "switch");
        })     

        inputs.forEach(item => {

            item.parentElement.style.backgroundColor = "#343a40";
        })     
        
    </script>
        
    <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
        function pass(quantity, donation) {

            Swal.fire({
                icon: 'success',
                title: 'Your Class Added succesfully !',
                html: '<a href="https://localhost:44314/Default">Return To Home Page</a>',
                //footer: '<a href="">Why do I have this issue?</a>'

            }).then(function () {
                window.location = "https://localhost:44314/DashBoard/AdminClasses";
            });
        }

    </script>
</asp:Content>
