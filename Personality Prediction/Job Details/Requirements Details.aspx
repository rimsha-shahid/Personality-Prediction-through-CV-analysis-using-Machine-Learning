<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/Master Page.Master" AutoEventWireup="true" CodeBehind="Requirements Details.aspx.cs" Inherits="Personality_Prediction.Admin.Job_Details.Requirements_Details" %>

<asp:Content runat="server" ContentPlaceHolderID="head" ID="content1">
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link  rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
  
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
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="content2">
    <form runat="server" id="form1">
    <div class="container h-100">

    <div class="row h-100 justify-content-center align-items-center">
  
   <div id="form"  >
       <h1>Requirements Details</h1>
   
      <div class="form-group">
    <label id="a1"><b>Experience  </b></label><br />
    <asp:TextBox runat="server" ID="experiance" TextMode="MultiLine" CssClass="form-control " class="auto-style1"  Width="308px" style="margin-top:10px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="desig" ControlToValidate="experiance" Text="*" ErrorMessage="Please Enter Experiance" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
        <div class="form-group">
         <label><b> Qualification  </b></label><br />
        <asp:TextBox runat="server" ID="qualification" TextMode="MultiLine"  CssClass="form-control " class="auto-style1"  Width="308px" style="margin-top:10px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="qualif" ControlToValidate="qualification" Text="*" ErrorMessage="Please Enter Qualification" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /></div>
        
        <div class="form-group">
           
        <label><b>Key Skills</b></label>
        <asp:TextBox runat="server" ID="skill" CssClass="form-control " TextMode="MultiLine" class="auto-style4"  Width="308px" style="margin-top:10px;"></asp:TextBox>
       <asp:RequiredFieldValidator runat="server" ID="skills" ControlToValidate="skill" Text="*" ErrorMessage="Please Enter Your Skills" ForeColor="Red"></asp:RequiredFieldValidator>
         </div>

       <asp:Button runat="server" ID="Save" Text="Submit" CssClass="btn btn-secondary" style=" margin-left:38px; margin-bottom:20px; margin-top:10px; border:2px solid darkgrey"/>
      
        <asp:ValidationSummary runat="server" ID="errormsg" ForeColor="Red" />
     
    </div>
    
        </div>
        </div>
        </form>
 </asp:Content>