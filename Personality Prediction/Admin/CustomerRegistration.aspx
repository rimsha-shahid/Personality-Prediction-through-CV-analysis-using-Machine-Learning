<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="Personality_Prediction.Admin.CustomerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link  rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
  
    <title>Personality Predictiont</title>
    <style>
        body {
            
            background-image: url('../Images/FormsBg.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: center center;
        }
        .container{
    margin:auto;
  padding-left:30px;
  padding-right:30px;
}
        #email, #password, #Save, #confirmpass, #lname, #fname{
             padding:2%;
         }
       a, b{
            color:black;
            text-decoration:none;
        }
     
     .form-control{
         border-color:black;
        
     }
        #a1, #a2{
            margin-top:20px;
            
        }
        label{
            font-size:20px;
        }
        img{
            margin-left:30%;
            margin-top:10px;
            height:150px;
            width:150px;
            border:black 2px solid;
            border-radius: 25px;
        }
        #form{
            margin:auto;
            border-color:black;
           width:400px;
            box-shadow: 5px 10px 8px grey;
             margin-top:85px;
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

</head>
<body>
    <form id="form1" runat="server">
    <div class="container h-100">

    <div class="row h-100 justify-content-center align-items-center">
  
   <div id="form"  >
       <h1>User Registration Form</h1>
     <img src="../Images/loginimg.png" class="mx-auto d-block"  />
      <div class="form-group">
    <label id="a1"><b>First Name</b></label><br />
    <asp:TextBox runat="server" ID="fname" placeholder="FirstName" CssClass="form-control " class="auto-style1"  Width="308px" style="margin-top:10px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="firstname" ControlToValidate="fname" Text="*" ErrorMessage="Please Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
    <label id="a2"><b>Last Name</b></label><br />
    <asp:TextBox runat="server" ID="lname" placeholder="LastName" CssClass="form-control " class="auto-style1"  Width="308px" style="margin-top:10px;"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="lastname" ControlToValidate="lname" Text="*" ErrorMessage="Please Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>

        <div class="form-group">
         <label><b> Password</b></label><br />
        <asp:TextBox runat="server" ID="password"  TextMode="Password" placeholder="........." CssClass="form-control " class="auto-style1"  Width="308px" style="margin-top:10px;"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" ID="pass" ControlToValidate="password" Text="*" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /></div>
        <div class="form-group">
        <label><b>Confirm Password</b></label><br />
        <asp:TextBox runat="server" ID="confirmpass" TextMode="Password" placeholder="........." CssClass="form-control " class="auto-style2"  Width="308px" style="margin-top:10px;"></asp:TextBox>
        <asp:CompareValidator runat="server" ID="CPV1" ControlToValidate="password" ControlToCompare="confirmpass" Text="*" ErrorMessage="Password did not match" ForeColor="red"></asp:CompareValidator>
        <br /></div>

        <div class="form-group">
           
        <label><b>Email</b></label>
        <asp:TextBox runat="server" ID="email" placeholder="abc@gmail.com" CssClass="form-control " class="auto-style4"  Width="308px" style="margin-top:10px;"></asp:TextBox>
       <label runat="server" id="EmailDuplicationCheck" style="color:red"></label>
             <asp:RegularExpressionValidator runat="server" ID="emailexp" ControlToValidate="email" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"> </asp:RegularExpressionValidator>
         <asp:RequiredFieldValidator runat="server" ID="r_email" ControlToValidate="email" Text="*" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
         </div>

       <asp:Button runat="server" ID="Save" Text="Submit" CssClass="btn btn-secondary" OnClick="Save_Click" style=" margin-left:38px; margin-bottom:20px; margin-top:10px;"/>
        <a href="CustomerLogin.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Already have account! Login here</a>
     
       
        <asp:ValidationSummary runat="server" ID="errormsg" ForeColor="Red" />
     
    </div>
    
        </div>
        </div>
 </form>
</body>
</html>
