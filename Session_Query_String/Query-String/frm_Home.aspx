<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Home.aspx.cs" Inherits="ASP_ALL_In_1.Login_Signup.Session_Query_String.Query_String.frm_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home- Query String</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="wrapper" runat="server">
                <table>
                    <tr>
                        <td><asp:Label ID="Label1" runat="server" Text="Welcome to "></asp:Label></td>
                        <td><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
