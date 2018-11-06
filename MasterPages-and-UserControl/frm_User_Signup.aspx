<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages-and-UserControl/user.Master" AutoEventWireup="true" CodeBehind="frm_User_Signup.aspx.cs" Inherits="ASP_ALL_In_1.MasterPages_and_UserControl.frm_User_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <style>
        body{
             background-color:azure;

        }
        #Panel1{
            background-color:green;
          
        }
        #Label1{
            font-size:22px;
            color:blanchedalmond;
            text-align:center;
            height:35px;

        }
        #Panel2{
              margin-left:350px;
        }
        /*#txtFirstName,#txtMiddleName,#txtLastName,#txtEmail,#txtPassword,#txtPassword,#txtRePassword,#Phone,#Gender{
            height:25px;
            width:300px;
        }*/
        .label{
            font-size:22px;
            color:green;
            font-weight:bold;
        }
        #btnSubmit{
            width:150px;
            height:35px;
            background-color:green;
            color:white;
            font-size:22px;
        }
        tr{
            line-height:30px;
        }
        .WebUserControl1{
           margin-top:550px;
           text-align:center;
        }

        table{
            margin-left:350px;
        }

    </style>


                  <table >
             <caption><h3 style="text-align:center;color:green;">Registration - Form</h3>  </caption>

                <tr><td class="label">First Name :</td>
                    <td><asp:TextBox ID="txtFirstName" runat="server" /></td>
                </tr>
                      
                <tr><td>Middle Name :</td>
                    <td><asp:TextBox ID="txtMiddleName" runat="server" /></td>
                </tr>

                <tr><td>Last Name :</td>
                    <td><asp:TextBox ID="txtLastName" runat="server" /></td>
                </tr>

                  <tr><td>Email :</td>
                    <td><asp:TextBox ID="txtEmail" runat="server" /></td>
                </tr>
                 <tr><td>Password :</td>
                    <td><asp:TextBox ID="txtPassword" runat="server" /></td>
                </tr>
                 <tr><td>Re-Type Password :</td>
                    <td><asp:TextBox ID="txtRePassword" runat="server" /></td>
                </tr>
                      
                  <tr><td>Phone No. :</td>
                    <td><asp:TextBox ID="txtPhone" runat="server" /></td>
                </tr>

                  <tr><td id="Gender">Gender :</td>
                    <td><asp:RadioButton ID="male" runat="server"   Text="Male" GroupName="gender"/>
                        <asp:RadioButton ID="female" runat="server"  Text="Female" GroupName="gender"/>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr align="center">
                    
                    <td colspan="2"><asp:Button ID="btnSubmit" Text="Register Me" runat="server" OnClick="btnSubmit_Click" /></td>
                </tr>
            </table>

    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Show Student Information</asp:LinkButton>
</asp:Content>
