<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Personality_Prediction.Admin.AdminLogin" %>

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
        img{
            margin-left:30%;
            margin-top:10px;
            height:150px;
            width:150px;
            border:black 2px solid;
            border-radius: 25px;
        }
         a, b{
            color:black;
            
        }
     .form-control{
         border-color:black;
     }
        #a1{
            margin-top:20px;
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
         h1{
            text-align:center;
            margin-top:20px;
             color:black;
          
        }
          label{
            font-size:20px;
        }
         #email, #password, #AdminData{
             padding:2%;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container h-100">

    <div class="row h-100 justify-content-center align-items-center">
          
       <div id="form"  >
   
        <h1>Admin Login</h1>
    <img src="../Images/loginimg.png" class="mx-auto d-block"  />
        <div class="form-group">
         <label id="a1"><b>Email</b></label><br />
        <asp:TextBox runat="server" ID="email" placeholder="abc@gmail.com" CssClass="form-control " class="auto-style1"  Width="308px" style="margin-top:10px;"></asp:TextBox>
       
         <asp:RequiredFieldValidator runat="server" ID="r_email" ControlToValidate="email" Text="*" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ID="emailexp" ControlToValidate="email" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"> </asp:RegularExpressionValidator>
              </div>

        <div class="form-group">
         <label><b> Password</b></label><br />
        <asp:TextBox runat="server" ID="password"  TextMode="Password" placeholder="........." CssClass="form-control " class="auto-style1"  Width="308px" style="margin-top:10px;"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" ID="pass" ControlToValidate="password" Text="*" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /></div>

        <asp:Button runat="server"  ID="AdminData" Text="Submit" OnClick="AdminData_Click" CssClass="btn btn-secondary"  style=" margin-left:38px;margin-bottom:20px; margin-top:10px;" />
   
           <asp:label runat="server" ID="lblmsg"></asp:label>
        <br />
        <asp:ValidationSummary runat="server" ID="errormsg" ForeColor="Red" />

        </div>
        </div>
        </div>
    </form>
</body>
</html>
