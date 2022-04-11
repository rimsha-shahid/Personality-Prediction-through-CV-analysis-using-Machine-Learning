<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDisplayPersonalityQuestion.aspx.cs" Inherits="Personality_Prediction.UserDisplayPersonalityQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #form{
            margin:auto;
            border-color:black;
           width:700px;
            box-shadow: 5px 10px 8px grey;
             margin-top:85px;
            border:2px solid black;
            margin-bottom:80px;
        }
        h1{
            text-align:center;
            margin-top:20px;
             color: black;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container h-100">
    <div class="row h-100 justify-content-center align-items-center">
    <div id="form"  >
        <h1>Personality Question Test</h1>
        <asp:Repeater runat="server" ID="Repeater" >
            <ItemTemplate>
                <table>
                    <tr>
                        <td><%#Eval("PersonalityQuestionID") %> : <%#Eval("Question") %></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RadioButton runat="server" ID="RBopt1" Text='<%#Eval ("Option1") %>' GroupName="PQradiobtn"></asp:RadioButton>
                             <asp:RadioButton runat="server" ID="RBopt2" Text='<%#Eval ("Option2") %>' GroupName="PQradiobtn"></asp:RadioButton>
                             <asp:RadioButton runat="server" ID="RBopt3" Text='<%#Eval ("Option3") %>' GroupName="PQradiobtn"></asp:RadioButton>
                             <asp:RadioButton runat="server" ID="RBopt4" Text='<%#Eval ("Option4") %>' GroupName="PQradiobtn"></asp:RadioButton>
                             <asp:RadioButton runat="server" ID="RBopt5" Text='<%#Eval ("Option5") %>' GroupName="PQradiobtn"></asp:RadioButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="userselectedans" ></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>

        </asp:Repeater>
        <asp:Button runat="server" ID="SubmitPQans" Text="Submit" OnClick="SubmitPQans_Click"/>
        <br />
        <asp:Button runat="server" ID="ShowPQans" Text="Show Selected Answer" OnClick="ShowPQans_Click"/>
      </div>
        </div>
        </div>
    </form>
</body>
</html>
