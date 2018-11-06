<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Login.aspx.cs" Inherits="ASP_ALL_In_1.Login_Signup.Session_Query_String.Query_String.frm_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login- Query String</title>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div>
            <asp:Panel ID="wrapper" runat="server">
                <table>
                    <tr>
                        <th>User Name :</th>
                        <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <th>Password :</th>
                        <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
