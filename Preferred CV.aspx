<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/Master Page.Master" AutoEventWireup="true" CodeBehind="Preferred CV.aspx.cs" Inherits="Personality_Prediction.Admin.Job_Details.Preferred_CV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
	
   
  

  

</asp:Content>