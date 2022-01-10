<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/Master Page.Master" AutoEventWireup="true" CodeBehind="Admin Login.aspx.cs" Inherits="Personality_Prediction.Admin.Admin_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style>
		* {box-sizing: border-box}
		
		#login-box {
			padding:20px;
		  position: relative;
		  margin: 5% auto;
		  width: 50%;
		  height: 100%;
		  background: #FFF;
		  border-radius: 2px;
		  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
		 margin-top:20px
		}

			input[type=password], input[type=email] {
 
			  padding: 15px;
			  margin: 5px 0 22px 0;
			  display: inline-block;
			  border: none;
			  width:100%;
			  background: #f1f1f1;
			}

			input[type=text]:focus, input[type=password]:focus, input[type=email]:focus {
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
			a {
			  color: dodgerblue;
			}


			.signin {
			  background-color: #f1f1f1;
			  width:100%;
			  text-align:center;
			}

  
	   
	</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server"   >
	  <div id="login-box">
		<h1 style="text-align: center">Admin&nbsp;Login</h1>


			<label id="Label3" runat="server"> Email: </label><br />
			<input type="email" runat="server" id="txt_Email"/> <br /><br />
			<asp:RequiredFieldValidator runat="server" ID="aemail" ControlToValidate="txt_Email" Text="*" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>


			<label id="Label4" runat="server" > Password: </label><br />
			<input type="password" runat="server" id="txtPassword"/><br /><br />
			<asp:RequiredFieldValidator runat="server" ID="apass" ControlToValidate="txtPassword" Text="*" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>

		   

			<input type="button" runat="server" id="loginbtn" value="Login" style="background-color: #006699"  />

			<div class="container signin" id="container-reg" style="width: 100%">
			<asp:ValidationSummary runat="server" ID="ValidationSummary1" ForeColor="Red" />
			</div>
			
		</div>
	   
		

	 

	</form>
	
   
  

  

</asp:Content>
