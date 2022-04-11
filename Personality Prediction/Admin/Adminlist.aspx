<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlist.aspx.cs" Inherits="Personality_Prediction.Admin.Adminlist" MasterPageFile="~/Master Page/Master Page.Master" %>

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
             <asp:Button runat="server" ID="AddNew" Text="Add New Admin"  CssClass="btn" style=" margin-bottom:20px;" OnClick="AddNew_Click1"/>

        <asp:GridView runat="server" ID="GView" AutoGenerateColumns="false" OnRowEditing="GView_RowEditing" OnRowDeleting="GView_RowDeleting" OnRowCommand="GView_RowCommand"  CssClass="table table-hover">
            <Columns>
                <asp:BoundField DataField="AdminID" HeaderText="Admin ID" />
                <asp:BoundField DataField="AdminName" HeaderText="Admin Name" />
               
                <asp:BoundField DataField="AdminEmail" HeaderText="Admin Email" />

                <asp:TemplateField HeaderText="Action">

                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="Editb" CommandName="EditRow" Text="EditRow" CommandArgument='<%# Eval ( "AdminID")%>'></asp:LinkButton>

                         <asp:LinkButton runat="server" ID="Deleteb" CommandName="DeleteRow" Text="DeleteRow" CommandArgument='<%# Eval ( "AdminID")%>' OnClientClick="return confirm('Are you sure to delete this');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>



            </Columns>  

        </asp:GridView>
         </form>
        </div>
         </div>
    </div>
    
   </asp:Content>

