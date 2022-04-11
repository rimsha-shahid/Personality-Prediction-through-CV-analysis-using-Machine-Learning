<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/Master Page.Master" AutoEventWireup="true" CodeBehind="Shortlist CV.aspx.cs" Inherits="Personality_Prediction.Admin.Job_Details.Shortlist_CV" %>
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
      
       a, b{
            color:black;
            text-decoration:none;
        }
     
     .form-control{
         border-color:black;
         padding:2%;
        
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
            margin-left: 1px;
        }
         .auto-style2 {
            width: 300px;
            margin-left: 49px;
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
       <h1>Shortlist CV</h1>
   
       <div class="form-group">
    <label id="a1"><b>Select ID  </b></label><br />
    <asp:TextBox runat="server" ID="select" TextMode="MultiLine" CssClass="form-control " class="auto-style1"  Width="308px" style="margin-top:10px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="selectid" ControlToValidate="select" Text="*" ErrorMessage="Please Enter ID" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
      
       <asp:Button runat="server" ID="Save" Text="Scan CV" CssClass="btn btn-secondary" style=" width:308px; margin-left:38px; margin-bottom:20px; margin-top:2px; border:2px solid darkgrey"/>
      
        <asp:ValidationSummary runat="server" ID="errormsg" ForeColor="Red" />
     
    </div>
    
        </div>
        </div>
        </form>
 </asp:Content>
