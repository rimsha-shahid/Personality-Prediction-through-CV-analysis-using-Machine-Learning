<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apptitude Questions.aspx.cs" Inherits="Personality_Prediction.Apptitude_and_Personality_Questions.Apptitude_Questions" MasterPageFile="~/Master Page for Home Page/Master Home.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">

</asp:Content>
<asp:Content runat="server" ID="content2" ContentPlaceHolderID="ContentPlaceHolder1">
    <form id="form1" runat="server">
    <div>
      <h1><b>Apptitude Questions</b></h1>
        <br /> <br /> <br /> <br /> <br /> <br />

        <b> 1.	Which of the following variable types can be assigned a value directly in C#?</b>
        <asp:RadioButtonList runat="server" ID="q1">
            <asp:ListItem Text="Value types" Value="1"/>
             <asp:ListItem Text="Reference types" Value="2"/>
             <asp:ListItem Text="Pointer types" Value="3"/>
        </asp:RadioButtonList>

        <b> 2.	Which of the following converts a type to a Boolean value, where possible in C#?</b>
        <asp:RadioButtonList runat="server" ID="q2">
            <asp:ListItem Text="ToBoolean" Value="1"/>
             <asp:ListItem Text="ToSingle" Value="2"/>
             <asp:ListItem Text="ToChar" Value="3"/>
        </asp:RadioButtonList>

        <b> 3.	Which of the following converts a type to a small floating point number in C#?</b>
        <asp:RadioButtonList runat="server" ID="q3">
            <asp:ListItem Text="ToInt64" Value="1"/>
             <asp:ListItem Text="ToSbyte" Value="2"/>
             <asp:ListItem Text="ToSingle" Value="3"/>
        </asp:RadioButtonList>

          <b>4. Which of the following operator returns the size of a data type in C#?</b>
        <asp:RadioButtonList runat="server" ID="q4">
            <asp:ListItem Text="sizeof" Value="1"/>
             <asp:ListItem Text="typeof" Value="2"/>
             <asp:ListItem Text="&</a>" Value="3"/>
        </asp:RadioButtonList>

          <b>5. Which of the following access specifier in C# allows a child class to access the member variables and member functions of its base class?</b>
        <asp:RadioButtonList runat="server" ID="q5">
            <asp:ListItem Text="Public" Value="1"/>
             <asp:ListItem Text="Private" Value="2"/>
             <asp:ListItem Text="Protected" Value="3"/>
        </asp:RadioButtonList>

          <b>6. Which of the following property of Array class in C# gets a 64-bit integer, the total number of elements in all the dimensions of the Array?</b>
        <asp:RadioButtonList runat="server" ID="q6">
            <asp:ListItem Text="Rank" Value="1"/>
             <asp:ListItem Text="LongLength" Value="2"/>
             <asp:ListItem Text="Length" Value="3"/>
        </asp:RadioButtonList>

          <b>7. Which of the following is true about C# enumeration?</b>
        <asp:RadioButtonList runat="server" ID="q7">
            <asp:ListItem Text="An enumerated type is declared using the enum keyword." Value="1"/>
             <asp:ListItem Text="C# enumerations are value data type." Value="2"/>
             <asp:ListItem Text="Both a & b" Value="3"/>
        </asp:RadioButtonList>

         <b>8. Which of the following preprocessor directive defines a sequence of characters as symbol in C#?</b>
        <asp:RadioButtonList runat="server" ID="q8">
            <asp:ListItem Text="define" Value="1"/>
             <asp:ListItem Text="undef" Value="2"/>
             <asp:ListItem Text="region" Value="3"/>
        </asp:RadioButtonList>

         <b>9. Which of the following is true about exceptions in C#?</b>
        <asp:RadioButtonList runat="server" ID="q9">
            <asp:ListItem Text="Exception class." Value="1"/>
             <asp:ListItem Text="C# exceptions are represented by classes." Value="2"/>
             <asp:ListItem Text="Both of the above." Value="3"/>
        </asp:RadioButtonList>

         <b>10. C# developed by?</b>
        <asp:RadioButtonList runat="server" ID="q10">
            <asp:ListItem Text="IBM" Value="1"/>
             <asp:ListItem Text="Google" Value="2"/>
             <asp:ListItem Text="Microsoft" Value="3"/>
        </asp:RadioButtonList>

         <asp:LinkButton runat="server" ID="linkbuttonApptitude" ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BackColor="Gray" Font-Bold="true" Text="Submit" OnClick="linkbuttonApptitude_Click"/>
        <br />
        <br />
        <asp:Panel runat="server" ID="Panel" BorderWidth="2" BorderStyle="Ridge" BorderColor="Gray" GroupingText="Result" Font-Italic="true" >

            <asp:Label runat="server" ID="result"></asp:Label>
        </asp:Panel>



    </div>
    </form>
</asp:Content>
