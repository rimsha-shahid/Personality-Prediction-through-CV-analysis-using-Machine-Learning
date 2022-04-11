<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personality Question.aspx.cs" Inherits="Personality_Prediction.Personality_Question" MasterPageFile="~/Master Page/Master Page.Master" %>





<asp:Content runat="server" ContentPlaceHolderID="head" ID="content1">
    
    <title>Personality Predictiont</title>
    <style>
       
        .container{
    margin:auto;
  padding-left:30px;
  padding-right:30px;
}
        
       a, b{
            color:black;
            text-decoration:none;
        }
     
     .form-control{
         border-color:black;
        
     }
        #a1{
            margin-top:20px;
            
        }
        label{
            font-size:20px;
        }
        
        #form{
            margin:auto;
            border-color:black;
           width:400px;
            box-shadow: 5px 10px 8px grey;
             margin-top:35px;
            border:2px solid black;
            margin-bottom:80px;
        }
        .form-group{
            margin-left:38px;
             margin-top:10px;
        }
       
       

     
        h1{
            text-align:center;
            margin-top:20px;
             color: black;

        }
        .auto-style1 {
            margin-left: 39px;
        }
        .auto-style2 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="content3">
    <form runat="server" id="form2">
    <div class="container h-100">

    <div class="row h-100 justify-content-center align-items-center">
  
   <div id="form"  >
       <h1>Personality Questions</h1>
  
    <div class="form-group">
    <label id="a1"><b>Question</b></label><br />
    <asp:TextBox runat="server" ID="ques" TextMode="MultiLine" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="question" ControlToValidate="ques" Text="*" ErrorMessage="Please Enter Your Question" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

       <div class="auto-style1">
          <label><b>Option 1</b></label><br />
        <asp:TextBox runat="server" ID="opt1" style="width:300px;" ></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="option1"  Text="*" ControlToValidate="opt1" ErrorMessage="Please Enter your Answer" ForeColor="red"></asp:RequiredFieldValidator>
            </div>

        <div class="auto-style1">
            <label><b>Option 2</b></label><br />
         <asp:TextBox runat="server" ID="opt2" style="width:300px;"> </asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="option2" Text="*" ControlToValidate="opt2" ErrorMessage="Please Enter your Answer" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        <div class="auto-style2">
           <label><b>Option 3</b></label><br />
         <asp:TextBox runat="server" ID="opt3" style="width:300px;"> </asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="option3" Text="*" ControlToValidate="opt3" ErrorMessage="Please Enter your Answer" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        <div class="auto-style1">
            <label><b>Option 4</b></label><br />
         <asp:TextBox runat="server" ID="opt4" style="width:300px;"> </asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="option4"  Text="*" ControlToValidate="opt4" ErrorMessage="Please Enter your Answer" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        <div class="auto-style1">
          <label><b>Option 5</b></label><br />
         <asp:TextBox runat="server" ID="opt5" style="width:300px;"> </asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="opyion5"  Text="*" ControlToValidate="opt5" ErrorMessage="Please Enter your Answer" ForeColor="red"></asp:RequiredFieldValidator>
            </div>

       <div class="auto-style1">
          <label><b>CorrectAnswer</b></label><br />
         <asp:TextBox runat="server" ID="correctans" style="width:300px;"> </asp:TextBox>
         </div>
           
        <asp:Button runat="server" ID="SaveDataPQ" Text="Submit"  class="btn btn-secondary " OnClick="SaveDataPQ_Click" style=" margin-left:38px; margin-bottom:20px; margin-top:10px; border:2px solid darkgrey"   />
        <br />
        <asp:ValidationSummary runat="server" ID="errormsg" ForeColor="Red" />

        </div>
        </div>
        </div>
        </form>
 </asp:Content>








<%--<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content2" runat="server">
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
</asp:Content>--%>