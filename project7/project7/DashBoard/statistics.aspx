<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/Siteadmin.Master" AutoEventWireup="true" CodeBehind="statistics.aspx.cs" Inherits="project7.DashBoard.WebForm8" enableEventValidation="false"%>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<body>
    

        <!-- Sale & Revenue Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-line fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total Subscriptions</p>
                                <h6 class="mb-0" id="totalsub" runat="server"></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-bar fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total Users</p>
                                <h6 class="mb-0" id="totaluser" runat="server"></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-area fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total Coaches</p>
                                <h6 class="mb-0" id="totalcoach" runat="server"></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-pie fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total Classes</p>
                                <h6 class="mb-0" id="totalclasses" runat="server" ></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sale & Revenue End -->


            <!-- Chart Start -->
<div class="container-fluid pt-12 px-12" style="display:flex;flex-direction:row">
    
    <div class="container pt-4 px-4">
    <div class="bg-secondary text-center rounded p-4"> 
<canvas id="Chart" width="428" height=427" style="display:block; box-sizing:border-box; height:300.6px;width:300.4px;"   ></canvas>
<input  type="hidden" id="hidden" runat="server"/>
<input  type="hidden" id="hidden1" runat="server"/>
        </div>
    
    </div>


        <div class="container pt-4 px-4">

        <div class="bg-secondary text-center rounded p-4"> 

 <canvas id="myChart" width="428" height=427" style="display:block; box-sizing:border-box; height:300.6px;width:300.4px;" ></canvas>
<input  type="hidden" id="hidden11" runat="server"/>
<input  type="hidden" id="hidden2" runat="server"/>
            </div></div>

  
    </div>
    <br />
          <div style="text-align:center;" class="container pt-4 px-4">
     <div class="bg-secondary text-center rounded p-4">
                        <div class="h-100 bg-secondary rounded p-4">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h6 class="mb-0">Calender</h6>
                            </div>
                            <div id="calender"></div>

                        </div>
         </div>
                     
        </div>
<!-- Content End -->
<script>

var xValues = JSON.parse(document.getElementById("ContentPlaceHolder1_hidden11").value);
var yValues = JSON.parse(document.getElementById("ContentPlaceHolder1_hidden2").value);

    var barColors = [
        "red",
        "blue",
        "green",
        "purple",
    ];

    new Chart("myChart", {
        type: "pie",
        data: {
            labels: xValues,
            datasets: [{
                backgroundColor: barColors,
                data: yValues
            }]
        },
        options: {
            title: {
                display: true,
                text: ""
            }
        }
    });
   

var xValues = JSON.parse(document.getElementById("ContentPlaceHolder1_hidden1").value);
var yValues = JSON.parse(document.getElementById("ContentPlaceHolder1_hidden").value);

    var barColors = [
        "red",
        "blue",
        "green",
        "purple",
    ];

    new Chart("Chart", {
        type: "pie",
        data: {
            labels: xValues,
            datasets: [{
                backgroundColor: barColors,
                data: yValues
            }]
        },
        options: {
            title: {
                display: true,
                text: ""
            }
        }
    });




</script>
</body>

</asp:Content>
