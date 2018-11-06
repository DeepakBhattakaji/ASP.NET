<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="ASP_ALL_In_1.Login_Signup.Admin.Header" %>


<style>
        h1,linkLogout{
            background-color:black;
            color:white;
            margin:0px;
        }

</style>

           <h1>Hello Welcome to Home Page!! <span style="float:right;">
               <asp:LinkButton ID="linkLogout" runat="server" OnClick="linkLogout_Click">Logout</asp:LinkButton> </span></h1>
            <hr />
