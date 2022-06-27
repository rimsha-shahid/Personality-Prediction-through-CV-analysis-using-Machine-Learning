<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personaliy Questions.aspx.cs" Inherits="Personality_Prediction.Apptitude_and_Personality_Questions.Personaliy_Questions" MasterPageFile="~/Master Page for Home Page/Master Home.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">

</asp:Content>
<asp:Content runat="server" ID="content2" ContentPlaceHolderID="ContentPlaceHolder1">
    
    <form id="form1" runat="server">

    <div>
    <h1><b>Personality Questions</b></h1>
        <br /> <br /> <br /> <br /> <br /> <br />

        <b> 1. I see myself as someone who is talkative.</b>
        <asp:RadioButtonList runat="server" ID="q1">
            <asp:ListItem Text="Strongly Agree" Value="1"/>
             <asp:ListItem Text="Agree" Value="2"/>
             <asp:ListItem Text="Neutral" Value="3"/>
             <asp:ListItem Text="Disagree"  Value="4"/>
             <asp:ListItem Text="Strongly Disagree"  Value="5"/>

        </asp:RadioButtonList>
         <b> 2. I see myself as someone who worries a lot.</b>
        <asp:RadioButtonList runat="server" ID="q2">
            <asp:ListItem Text="Strongly Agree" Value="1"/>
             <asp:ListItem Text="Agree" Value="2"/>
             <asp:ListItem Text="Neutral" Value="3"/>
             <asp:ListItem Text="Disagree"  Value="4"/>
             <asp:ListItem Text="Strongly Disagree"  Value="5"/>
            </asp:RadioButtonList>
           
         <b> 3. I see myself as someone who is helpful and unselfish when it comes to others.</b>
        <asp:RadioButtonList runat="server" ID="q3">
            <asp:ListItem Text="Strongly Agree" Value="1"/>
             <asp:ListItem Text="Agree" Value="2"/>
             <asp:ListItem Text="Neutral" Value="3"/>
             <asp:ListItem Text="Disagree"  Value="4"/>
             <asp:ListItem Text="Strongly Disagree"  Value="5"/>
            
        </asp:RadioButtonList>

        <b> 4. I see myself as someone who is inventive.</b>
        <asp:RadioButtonList runat="server" ID="q4">
            <asp:ListItem Text="Strongly Agree" Value="1"/>
             <asp:ListItem Text="Agree" Value="2"/>
             <asp:ListItem Text="Neutral" Value="3"/>
             <asp:ListItem Text="Disagree" Value="4"/>
             <asp:ListItem Text="Strongly Disagree" Value="5"/>
            </asp:RadioButtonList>

        <b> 5.I see myself as someone who is generally trusting.</b>
        <asp:RadioButtonList runat="server" ID="q5">
            <asp:ListItem Text="Strongly Agree" Value="1"/>
             <asp:ListItem Text="Agree" Value="2"/>
             <asp:ListItem Text="Neutral" Value="3"/>
             <asp:ListItem Text="Disagree" Value="4"/>
             <asp:ListItem Text="Strongly Disagree" Value="5"/>
            </asp:RadioButtonList>

        <b> 6. I see myself as someone who is generally trusting.</b>
        <asp:RadioButtonList runat="server" ID="q6">
            <asp:ListItem Text="Strongly Agree" Value="1"/>
             <asp:ListItem Text="Agree" Value="2"/>
             <asp:ListItem Text="Neutral" Value="3"/>
             <asp:ListItem Text="Disagree" Value="4"/>
             <asp:ListItem Text="Strongly Disagree" Value="5"/>
            </asp:RadioButtonList>

        <b> 7. I see myself as someone who is relaxed and remains calm in high-pressure situations.</b>
        <asp:RadioButtonList runat="server" ID="q7">
            <asp:ListItem Text="Strongly Agree" Value="1"/>
             <asp:ListItem Text="Agree" Value="2"/>
             <asp:ListItem Text="Neutral" Value="3"/>
             <asp:ListItem Text="Disagree" Value="4"/>
             <asp:ListItem Text="Strongly Disagree" Value="5"/>
            </asp:RadioButtonList>

        <b> 8. I see myself as someone who has an active imagination.</b>
        <asp:RadioButtonList runat="server" ID="q8">
            <asp:ListItem Text="Strongly Agree" Value="1"/>
             <asp:ListItem Text="Agree" Value="2"/>
             <asp:ListItem Text="Neutral" Value="3"/>
             <asp:ListItem Text="Disagree" Value="4"/>
             <asp:ListItem Text="Strongly Disagree" Value="5"/>
            </asp:RadioButtonList>

        <b> 9. I see myself as someone who can be tense.</b>
        <asp:RadioButtonList runat="server" ID="q9">
            <asp:ListItem Text="Strongly Agree" Value="1"/>
             <asp:ListItem Text="Agree" Value="2"/>
             <asp:ListItem Text="Neutral" Value="3"/>
             <asp:ListItem Text="Disagree" Value="4"/>
             <asp:ListItem Text="Strongly Disagree" Value="5"/>
            </asp:RadioButtonList>

        <b> 10. I see myself as someone who tends to be lazy.</b>
        <asp:RadioButtonList runat="server" ID="q10">
            <asp:ListItem Text="Strongly Agree" Value="1"/>
             <asp:ListItem Text="Agree" Value="2"/>
             <asp:ListItem Text="Neutral" Value="3"/>
             <asp:ListItem Text="Disagree" Value="4"/>
             <asp:ListItem Text="Strongly Disagree" Value="5"/>
            </asp:RadioButtonList>

        

        <asp:LinkButton runat="server" ID="linkbutton" ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BackColor="Gray" Font-Bold="true" Text="Submit" OnClick="Calculation"/>
        <br />
        <br />
        <asp:Panel runat="server" ID="Panel" BorderWidth="2" BorderStyle="Ridge" BorderColor="Gray" GroupingText="Result" Font-Italic="true" >

            <asp:Label runat="server" ID="result"></asp:Label>
        </asp:Panel>
    </div>
    </form>
    <script>
        alert("Option 1 has 3 marks Option 2 has 2 marks Option 3 has 1 marks Other Options have 0 marks ");
    </script>
</asp:Content>