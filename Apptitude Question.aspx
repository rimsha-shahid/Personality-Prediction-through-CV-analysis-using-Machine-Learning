<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apptitude Question.aspx.cs" Inherits="Personality_Prediction.Apptitude_Question" MasterPageFile="~/Master Page/Master Page.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server">
		
     
    
        <form id="form1" runat="server" >
    <div style="margin-left:180px;" >

        <h1 style="text-align:center;"><b>Apptitude Questions </b></h1>
        <div class="dropdown dropright">
           <label>Type</label><br />
         <asp:DropDownList runat="server" ID="ddlClass" placeholder="--Select--"  data-toggle="dropdown" style="width:300px;"> </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ID="dropdown" InitialValue="0" Text="*" ControlToValidate="ddlClass" ErrorMessage="Please select your Type" ForeColor="red"></asp:RequiredFieldValidator>
            </div>

    <div class="form-group">
    <label>Question</label><br />
    <asp:TextBox runat="server" ID="ques" TextMode="MultiLine" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="question" ControlToValidate="ques" Text="*" ErrorMessage="Please Enter Your Question" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label>Option 1</label><br />
    <asp:TextBox runat="server" ID="opt1" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ans1" ControlToValidate="opt1" Text="*" ErrorMessage="Please Enter Your Option 1" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label>Option 2</label><br />
    <asp:TextBox runat="server" ID="opt2" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ans2" ControlToValidate="opt2" Text="*" ErrorMessage="Please Enter Your Option 2" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label>Option 3</label><br />
    <asp:TextBox runat="server" ID="opt3" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ans3" ControlToValidate="opt3" Text="*" ErrorMessage="Please Enter Your Option 3" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label>Option 4</label><br />
    <asp:TextBox runat="server" ID="opt4" style="width:300px;" ></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ans4" ControlToValidate="opt4" Text="*" ErrorMessage="Please Enter Your Option 4" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label>Answer</label><br />
    <asp:TextBox runat="server" ID="cans" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="correctans" ControlToValidate="cans" Text="*" ErrorMessage="Please Enter Your Correct Answer" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
           
        <asp:Button runat="server" ID="SaveData" Text="Submit"  class="btn btn-secondary" style="border:1px solid black" />
        <br />
        <asp:ValidationSummary runat="server" ID="errormsg" ForeColor="Red" />

        </div>
            </form>
      
    </asp:Content>