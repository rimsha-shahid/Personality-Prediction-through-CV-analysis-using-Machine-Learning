<%@ Page Language="C#" MasterPageFile="~/Master Page for Home Page/Master Home.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Personality_Prediction.User_Home_Page.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style>
		* {box-sizing: border-box}
		
		#registration-box {
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

		input[type=text], input[type=password], input[type=email] {
 
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
			border:none;

		}

  
	   
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server"   >
	  <div id="registration-box">
		<h1 style="text-align: center">&nbsp;Registration</h1>
			<p>Please fill in this form to create an account.</p>

			
		  <label id="Label1" runat="server"> User Name: </label><br />
			<input type="text" runat="server" id="uname"/> <br /><br />
		  <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="uname" Text="*" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>


		  <label id="Label2" runat="server"> Email: </label><br />
			<input type="email" runat="server" id="uEmail"/> <br /><br />
		  <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="uEmail" Text="*" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>


		  <label id="Label3" runat="server"> Password: </label><br />
			<input type="password" runat="server" id="uPassword"/><br /><br />
		  <asp:CompareValidator runat="server" ID="cvalidator" ControlToValidate="uPassword" ControlToCompare="cPassword" Text="*" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:CompareValidator>
		  <label id="Label4" runat="server"> Confirm Password: </label><br />
			<input type="password" runat="server" id="cPassword" /><br /><br />
		   
		  <input type="button" runat="server" id="registerbtn" value="Register" style="background-color: #006699"  />
			
		  <div class="container signin" id="container-reg">
				<p>Already have an account? <a href="../User%20Home%20Page/Login.aspx">Login</a>.</p>
		  </div>
		  <div>
			  <asp:ValidationSummary runat="server" ID="errormsg" ForeColor="Red" />
		  </div>
	</div>
</form>
</asp:Content>
