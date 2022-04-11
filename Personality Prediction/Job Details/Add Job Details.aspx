<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Add Job Details.aspx.cs" Inherits="Personality_Prediction.Admin.Job_Details.Job_Details" MasterPageFile="~/Master Page/Master Page.Master" %>

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
       <h1>Add Job Details</h1>
   
      <div class="form-group">
    <label id="a1"><b>Designation  </b></label><br />
    <asp:TextBox runat="server" ID="designation" placeholder="Designation" CssClass="form-control " class="auto-style1"  Width="308px" style="margin-top:10px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="desig" ControlToValidate="designation" Text="*" ErrorMessage="Please Enter Designation" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
        <div class="form-group">
         <label><b> Salary  </b></label><br />
        <asp:TextBox runat="server" ID="salary"  placeholder="0000000" CssClass="form-control " class="auto-style1"  Width="308px" style="margin-top:10px;"></asp:TextBox>
      <asp:CompareValidator runat="server" ID="salaryemp" ControlToValidate="salary" Type="Integer" Operator="DataTypeCheck" Text="*" ErrorMessage="Enter salary in numbers only"></asp:CompareValidator>
                   <asp:RequiredFieldValidator runat="server" ID="sal" ControlToValidate="salary" Text="*" ErrorMessage="Please Enter Salary" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /></div>
        
        <div class="form-group">
           
        <label><b>Place</b></label>
        <asp:TextBox runat="server" ID="place" CssClass="form-control " class="auto-style4"  Width="308px" style="margin-top:10px;"></asp:TextBox>
       <asp:RequiredFieldValidator runat="server" ID="emp_place" ControlToValidate="place" Text="*" ErrorMessage="Please Enter Candidate Place" ForeColor="Red"></asp:RequiredFieldValidator>
         </div>

       <asp:Button runat="server" ID="Save" Text="Submit" CssClass="btn btn-secondary" style=" margin-left:38px; margin-bottom:20px; margin-top:10px;"/>
      
        <asp:ValidationSummary runat="server" ID="errormsg" ForeColor="Red" />
     
    </div>
    
        </div>
        </div>
        </form>
 </asp:Content>