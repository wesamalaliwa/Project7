<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="EditClass.aspx.cs" Inherits="project7.DashBoard.editclasses" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="bg-secondary rounded h-100 p-4 container" style="display: block; box-sizing: border-box; height: auto; width: 700.4px;">
        <h6 class="mb-4">Edit Class</h6>
        <div class="form-floating mb-3">
            <input type="text" id="txtName" runat="server" class="form-control" />
            <label class="form-label" for="code">Name</label>
        </div>
        <br />
        <div class="form-floating mb-3">
            <input type="text" id="txtdesc" runat="server" class="form-control" />
            <label class="form-label" for="Discount">Description</label>
        </div>
        <br />

        <div class="form-floating mb-3">

            <input type="time" id="startTime" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>' />
            <label class="form-label" for="StartTime">StartTime</label>
            <span id="prevStartTime" runat="server"></span>
        </div>
        <br />

        <div class="form-floating mb-3">
            <input type="time" id="endTime" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>' />
            <label class="form-label" for="EndDate">EndDate</label>
            <span id="prevEndTime" runat="server"></span>
        </div>
        <br />
        <div class="form-floating mb-3">
            <input type="date" id="startDate" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>' />
            <label class="form-label" for="StartDate">StartDate</label>
            <span id="prevStartDate" runat="server"></span>
        </div>
        <br />

        <div class="form-floating">
            <input type="date" id="endDate" runat="server" class="form-control" min='<%= @DateTime.Now.ToString("yyyy-MM-dd") %>' />
            <label class="form-label" for="EndDate">EndDate</label>
            <span id="prevEndDate" runat="server"></span>
        </div>
        <br />

        <br />

        <div class="form-floating mb-3">
            <asp:FileUpload accept=".png,.jpg,.jpeg,.gif" ID="FUpic" class="form-control bg-dark" runat="server" placeholder="Your Image" />
            <label class="form-label" for="MaxUses" height="60px">image </label>
        </div>

        <br />
        <div class="form-floating mb-3" id="inputs">
            <span id="prevDays" runat="server"></span>
            <asp:CheckBoxList Style="width: 200px;" ID="CBdays" runat="server">
                <asp:ListItem class="form-check-input">Sunday</asp:ListItem>
                <asp:ListItem class="form-check-input">Monday</asp:ListItem>
                <asp:ListItem class="form-check-input">Tuesday</asp:ListItem>
                <asp:ListItem class="form-check-input">Wednesday</asp:ListItem>
                <asp:ListItem class="form-check-input">ThursDay</asp:ListItem>
            </asp:CheckBoxList>


            <div class="mt-4 pt-2">
                <asp:Button ID="EditClass" Width="97%" Height="50px" class="btn btn-mg btn-primary m-2" runat="server" Text="Save" OnClick="EditClass_Click" />

            </div>
        </div>
        <br />


    </div>




    <script>

        var inputs = Array.from(document.querySelectorAll("#inputs input"));

        //role = "switch" 
        inputs[0].setAttribute("checked", "true")
        inputs.forEach(item => {
            item.classList.add("form-check-input");
            item.setAttribute("role", "switch");
        })

        inputs.forEach(item => {

            item.parentElement.style.backgroundColor = "#343a40";
        })

    </script>
</asp:Content>
