<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Admin.aspx.cs" Inherits="ASP_ALL_In_1.Login_Signup.Admin.frm_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin-Page</title>
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
        #txtEmail,#txtPassword{
            height:25px;
            width:300px;
        }
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
            line-height:55px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="35px">
                <asp:Label ID="Label1" runat="server" Text="B Group of Technology - Admin Login"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                                  <table >
             <caption><h3 style="text-align:center;color:green; font-size:22px;">Admin Login - Form&nbsp;&nbsp;&nbsp;&nbsp;
                 </h3>  </caption>

                  <tr><td class="label">Email :</td>
                    <td><asp:TextBox ID="txtEmail" runat="server" /></td>
                </tr>
                 <tr><td class="label">Password :</td>
                    <td><asp:TextBox ID="txtPassword" runat="server" /></td>
                </tr>

                <tr align="center">
                    
                    <td colspan="2"><asp:Button ID="btnSubmit" Text="Login" runat="server" OnClick="btnSubmit_Click"/>
                        <br />
                    </td>
                </tr>
            </table>


            </asp:Panel>
        </div>
    </form>
</body>
</html>
