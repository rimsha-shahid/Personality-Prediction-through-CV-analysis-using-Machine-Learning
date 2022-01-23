<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/Master Page.Master" AutoEventWireup="true" CodeBehind="Job Deetails.aspx.cs" Inherits="Personality_Prediction.view_Details.Job_Deetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- style sheet link -->
    <link href="Job%20Details.css" rel="stylesheet" />

<style type="text/css">
    .auto-style1 {
        height: 119px;
    }
    .auto-style2 {
        height: 137px;
        width: 123px;
    }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
             <!-- image question mark -->
            <td>
                <img src="..\Images\job details.png" class="auto-style2" />
            </td>

            <td class="auto-style1">
                <!-- heading of job  -->
                <h1> View Job Details </h1>
            </td>
        </tr>
    </table>
           
</asp:Content>
