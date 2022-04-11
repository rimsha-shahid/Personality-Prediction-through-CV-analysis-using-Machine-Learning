<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page for Home Page/Master Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Personality_Prediction.User_Home_Page.Login" %>
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
		<h1 style="text-align: center">User&nbsp;Login</h1>


			<label id="Label3" runat="server"> Email: </label><br />
			<input type="email" runat="server" id="txt_Email"/> <br /><br />


			<label id="Label4" runat="server" > Password: </label><br />
			<input type="password" runat="server" id="txtPassword"/><br /><br />

		   

			<input type="button" runat="server" id="loginbtn" value="Login" style="background-color: #006699"  />

			<div class="container signin" id="container-reg" style="width: 100%">
			
			<p>Don't have an account? <a href="../User%20Home%20Page/Registration.aspx">Register</a></p>
			</div>

		  <div>
		  </div>
			
		</div>
	   
		

	 

	</form>
	
   
  

  

</asp:Content>
