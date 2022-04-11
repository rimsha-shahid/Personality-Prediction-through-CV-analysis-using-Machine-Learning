<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page for Home Page/Master Home.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="Personality_Prediction.User_Home_Page.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- style sheet link-->
    <link href="Contact%20Us.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <!-- heading -->
   <h1 class="question"> Any question? Contact us.. </h1> </center>

   <!-- main table-->

    <table>

        <!--image-->
        <tr>
            <td rowspan="6">
                <img class="contact" src="../Images/contact%20us.png" />
            </td>
         </tr>

        
            <!-- team work images-->
        <tr>
            <td>
                <img class="team" src="../Images/Team%20work.png" />
            </td>
        </tr>

        <!-- rimsha -->
        <tr>
            <td>
                <h1> Rimsha Shahid </h1>
                <p> <b>E-mail:</b> Rimshas208@gmail.com</p>
            </td>
        </tr>

        <!-- amna -->
        <tr>
            <td>
                <h1> Amna Tahir </h1>
            <p> <b>E-mail:</b> amnatahir4545@gmail.com</p>
            </td>
        </tr>

        <!-- aysha -->
        <tr>
            <td>
                <h1> Ayesha Khalid </h1>
            <p> <b>E-mail:</b> ayeshaKhalid.e049@gmail.com</p>
            </td>
        </tr>

        <!-- maryam -->
        <tr>
            <td>
                <h1> Maryam Zafar </h1>
            <p> <b>E-mail:</b> maryam402@gmail.com</p>
            </td>
        </tr>

    </table>

</asp:Content>
