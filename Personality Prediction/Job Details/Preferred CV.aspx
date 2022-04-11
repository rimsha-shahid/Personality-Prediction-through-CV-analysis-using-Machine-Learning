
<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/Master Page.Master" AutoEventWireup="true" CodeBehind="Preferred CV.aspx.cs" Inherits="Personality_Prediction.Admin.Job_Details.Preferred_CV" %>

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
       <h1>Preferred CV</h1>
   
      <div class="form-group">
               <label><b>Product Image</b></label><br />
               <asp:FileUpload ID="fileupload" runat="server"  CssClass="auto-style1" Class="auto-style2" Width="308px" Height="30px" />
               <asp:Image  id="ProductImage" runat="server" CssClass="img-circle col-3 h-2" /> 
               <asp:RequiredFieldValidator runat="server" ID="img" ControlToValidate="fileupload" Text="*" ErrorMessage="Image is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
          </div>
       <asp:Button runat="server" ID="upload" Text="Upload" CssClass="btn btn-secondary" style=" margin-left:38px; margin-bottom:20px; margin-top:1px; border:2px solid darkgrey"/>
                     
       <br />
       <asp:Button runat="server" ID="Save" Text="Scan" CssClass="btn btn-secondary" style=" width:308px; margin-left:38px; margin-bottom:20px; margin-top:10px; border:2px solid darkgrey"/>
      
        <asp:ValidationSummary runat="server" ID="errormsg" ForeColor="Red" />
     
    </div>
    
        </div>
        </div>
        </form>
 </asp:Content>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
		* {box-sizing: border-box}
		
		#box {
			padding:20px;
		  position: relative;
		  margin: 5% auto;
		  width: 50%;
		  height: 100%;
		  background: rgb(255, 255, 255);
		  border-radius: 2px;
		  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
		 margin-top:20px
		}

			input[type=file], input[type=number] {
 
			  padding: 15px;
			  margin: 5px 0 22px 0;
			  display: inline-block;
			  border: none;
			  width:100%;
			  background: #f1f1f1;
			}

			input[type=file]:focus, input[type=number]:focus {
			  background-color: #ddd;
			  outline: none;
			}

			input[type=button] {
  
			  color: white;
			  font-size:larger;
			  padding: 16px 20px;
			  margin: 8px 0;
			  border: none;
			  cursor: pointer;
			 width: 100%;
			  opacity: 0.9;
			}

			input[type=button]:hover {
			  opacity:1;
			}

	</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server"   >
	  <div id="box">


		<h1 style="text-align: center">Preferred CV</h1>


			<label id="Label1" runat="server"> Job ID: </label><br />
			<input type="number" runat="server" id="job_id"/> <br /><br />


			<label id="Label2" runat="server" > Choose File: </label><br />
			<input type="file" runat="server" id="job_file"/><br />
			  <asp:Button ID="Button1" runat="server" Text="Upload" />
		   

			<br />
		  <br />
		   
			<input type="button" runat="server" id="submitbtn" value="Scan" style="background-color: #006699"  />

			
		</div>
	   
		
		
	 

	</form>
	
   
  

  

</asp:Content>--%>