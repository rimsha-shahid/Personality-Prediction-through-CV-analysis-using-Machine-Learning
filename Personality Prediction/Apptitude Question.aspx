<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apptitude Question.aspx.cs" Inherits="Personality_Prediction.Apptitude_Question" MasterPageFile="~/Master Page/Master Page.Master" %>





<asp:Content runat="server" ContentPlaceHolderID="head" ID="content2">
    
  
    <title>Personality Predictiont</title>
    <style>
       
        .container{
    margin:auto;
  padding-left:30px;
  padding-right:30px;
}
        #email, #password, #Save, #confirmpass, #name{
             padding:2%;
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
       
       

        .auto-style1 {
            display: block;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
            margin-left: 27px;
        }
        .auto-style2 {
            display: block;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
            margin-left:27px;
        }
        .auto-style3 {
            margin-left: 27px;
        }
        .auto-style4 {
            display: block;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
            margin-left: 27px;
        }
        h1{
            text-align:center;
            margin-top:20px;
             color: black;

        }
    </style>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="content3">
    <form runat="server" id="form2">
    <div class="container h-100">

    <div class="row h-100 justify-content-center align-items-center">
  
   <div id="form"  >
       <h1>Apptitude Questions</h1>
   
      <%-- <div class="dropdown dropright">
           <label id="a1"><b>Type</b></label><br />
         <asp:DropDownList runat="server" ID="DropDownList1" placeholder="--Select--"  data-toggle="dropdown" style="width:300px;"> </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" InitialValue="0" Text="*" ControlToValidate="DropDownList1" ErrorMessage="Please select your Type" ForeColor="red"></asp:RequiredFieldValidator>
            </div>--%>

    <div class="form-group">
    <label><b>Question</b></label><br />
    <asp:TextBox runat="server" ID="ques" TextMode="MultiLine" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="ques" Text="*" ErrorMessage="Please Enter Your Question" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label><b>Option 1</b></label><br />
    <asp:TextBox runat="server" ID="opt1" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="opt1" Text="*" ErrorMessage="Please Enter Your Option 1" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label><b>Option 2</b></label><br />
    <asp:TextBox runat="server" ID="opt2" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="opt2" Text="*" ErrorMessage="Please Enter Your Option 2" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label><b>Option 3</b></label><br />
    <asp:TextBox runat="server" ID="opt3" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="opt3" Text="*" ErrorMessage="Please Enter Your Option 3" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label><b>Option 4</b></label><br />
    <asp:TextBox runat="server" ID="opt4" style="width:300px;" ></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="opt4" Text="*" ErrorMessage="Please Enter Your Option 4" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label><b>CorrectAnswer</b></label><br />
    <asp:TextBox runat="server" ID="cans" style="width:300px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="cans" Text="*" ErrorMessage="Please Enter Your Correct Answer" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
           
        <asp:Button runat="server" ID="Submit" Text="Submit" OnClick="Submit_Click"  class="btn btn-secondary" style=" margin-left:38px; margin-bottom:20px; margin-top:10px; border:2px solid darkgrey"  />
       
        <br />
        <asp:ValidationSummary runat="server" ID="ValidationSummary1" ForeColor="Red" />

        </div>
        </div>
        </div>
       
        </form>
 </asp:Content>






<%--<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server">
		
     
    
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
      
    </asp:Content>--%>