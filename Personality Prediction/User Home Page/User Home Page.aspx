<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page for Home Page/Master Home.Master" AutoEventWireup="true" CodeBehind="User Home Page.aspx.cs" Inherits="Personality_Prediction.Home_Page.User_Home_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- style sheet link-->
    <link href="User%20Home%20Page.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- featured image-->
    &nbsp;<img class="featured-image" src="../Images/brain.png" />
    
    <!--content-->
    <div class="content" runat="server" >

        <!-- Registration-->
       <a href="../User%20Home%20Page/Registration.aspx">Register</a>

        <!-- heading-->
        <h1> You should always feel comfortable</h1>

        <!--paragraph-->
        <p>
            Personality prediction system, which candidate is suitable for required job
            we can take resolution by using candidate CV’s, aptitude questions and 
            personality questions. In this system we will emphasis not only qualification,
            based on tests we can select the person for certain job position.
            </p>
        </div>

                  <!--our festures-->
      <div class="container">
                  <h2 class="Featured">Our Features</h2>
         </div>

    <!-- table -->
    <table class="ourfeatures">

        <!--images-->
        <tr>
            <td> <img src="../Images/sign-up.png" /> </td>
            <td> <img src="../Images/search-online.png" /> </td>
            <td> <img src="../Images/digital-data.png" /> </td>
        </tr>

        <!-- heading-->
        <tr>
            <td> <h4>Registered Yourself</h4> </td>
            <td> <h4>Check Records</h4> </td>
            <td> <h4>Defaulter lists</h4> </td>
        </tr>

        <!-- paragraph-->
        <tr>
        <td> <p>You can chek your data information. Link below...</p> </td>
        <td> <p>You can check our succesful candidates list. Link below...</p> </td>
        <td> <p>You can check our defaulter lists. Link below...</p> </td>
            </tr>

        
        <!-- Click me button-->
        <tr>
        <td> <a href="../User%20Home%20Page/Registration.aspx">Click Me</a> </td>
        <td> <a  href="#">Click Me</a> </td>
        <td> <a href="#">Click Me</a> </td>
            </tr>

    </table>

</asp:Content>
