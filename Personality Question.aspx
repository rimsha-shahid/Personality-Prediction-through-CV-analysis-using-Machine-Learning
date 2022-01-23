<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personality Question.aspx.cs" Inherits="Personality_Prediction.Personality_Question" MasterPageFile="~/Master Page/Master Page.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content2" runat="server">
     <form id="form1" runat="server" >
    <div style="margin-left:180px;" >

        <h1 style="text-align:center;"><b>Personality Questions </b></h1>
       

    <div class="form-group">
    <label>Question</label><br />
    <asp:TextBox runat="server" ID="ques" TextMode="MultiLine" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="question" ControlToValidate="ques" Text="*" ErrorMessage="Please Enter Your Question" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="dropdown dropright">
           <label>Openness to experience</label><br />
         <asp:DropDownList runat="server" ID="opt1" placeholder="--Select--"  data-toggle="dropdown" style="width:300px;"> </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ID="dropdown1" InitialValue="0" Text="*" ControlToValidate="opt1" ErrorMessage="Please select your Answer" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        <div class="dropdown dropright">
           <label>Extraversion</label><br />
         <asp:DropDownList runat="server" ID="opt2" placeholder="--Select--"  data-toggle="dropdown" style="width:300px;"> </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ID="dropdown2" InitialValue="0" Text="*" ControlToValidate="opt2" ErrorMessage="Please select your Answer" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        <div class="dropdown dropright">
           <label>Agreebleness</label><br />
         <asp:DropDownList runat="server" ID="opt3" placeholder="--Select--"  data-toggle="dropdown" style="width:300px;"> </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ID="dropdown3" InitialValue="0" Text="*" ControlToValidate="opt3" ErrorMessage="Please select your Answer" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        <div class="dropdown dropright">
           <label>Neuroticism</label><br />
         <asp:DropDownList runat="server" ID="opt4" placeholder="--Select--"  data-toggle="dropdown" style="width:300px;"> </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ID="dropdown4" InitialValue="0" Text="*" ControlToValidate="opt4" ErrorMessage="Please select your Answer" ForeColor="red"></asp:RequiredFieldValidator>
            </div><br />
           
        <asp:Button runat="server" ID="SaveData" Text="Submit"  class="btn btn-secondary" style="border:1px solid black" />
        <br />
        <asp:ValidationSummary runat="server" ID="errormsg" ForeColor="Red" />

        </div>
            </form>
</asp:Content>