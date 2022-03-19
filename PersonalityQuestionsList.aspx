<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalityQuestionsList.aspx.cs" Inherits="Personality_Prediction.PersonalityQuestionsList" MasterPageFile="~/Master Page/Master Page.Master" %>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="head">
     
    <style>
        *{
            
             color:black;
             
        }
      .row{
          justify-content:center;
          align-items:center;
      }
     
      .table{
          border:2px solid #446b82;
          margin-top:5px;
          color:white;
          margin-left:160px;
          text-decoration:none;
      }
       
       .btn{
           color: #3d4c41;
           font-weight:bold;
           margin-left:160px;
       }
    </style>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="Content2">
     <div class="container h-100">

    <div class="row h-100">

        <div class="col-lg-4 col-sm-12">
            <form runat="server" id="Form">
             <asp:Button runat="server" ID="AddNewQuestion" Text="Add New Question"  CssClass="btn" style=" margin-bottom:20px;" OnClick="AddNewQuestion_Click"/>

        <asp:GridView runat="server" ID="GView" AutoGenerateColumns="false" OnRowEditing="GView_RowEditing" OnRowDeleting="GView_RowDeleting" OnRowCommand="GView_RowCommand"  CssClass="table table-hover">
            <Columns>
                  <asp:BoundField DataField="PersonalityQuestionID" HeaderText="ID" />
                 <asp:BoundField DataField="Question" HeaderText=" Personality Questions " />
                <asp:BoundField DataField="Option1" HeaderText="Option1" />
                <asp:BoundField DataField="Option2" HeaderText="Option2" />
                <asp:BoundField DataField="Option3" HeaderText="Option3" />
                <asp:BoundField DataField="Option4" HeaderText="Option4" />
                <asp:BoundField DataField="Option5" HeaderText="Option5" />

               
               
                <asp:BoundField DataField="CorrectAnswer" HeaderText="CorrectAnswer" />

                <asp:TemplateField HeaderText="Action">

                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="Edit" CommandName="EditRow" Text="EditRow" CommandArgument='<%# Eval ( "PersonalityQuestionID")%>'></asp:LinkButton>

                         <asp:LinkButton runat="server" ID="Delete" CommandName="DeleteRow" Text="DeleteRow" CommandArgument='<%# Eval ( "PersonalityQuestionID")%>' OnClientClick="return confirm('Are you sure to delete this');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>



            </Columns>  

        </asp:GridView>
         </form>
        </div>
         </div>
    </div>
    
   </asp:Content>

