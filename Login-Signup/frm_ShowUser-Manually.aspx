<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_ShowUser-Manually.aspx.cs" Inherits="ASP_ALL_In_1.Login_Signup.frm_ShowUser_Manually" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show User - Manually Coding</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td align="center">
                        <asp:PlaceHolder ID="DBDataPlaceHolder" runat="server">

                        </asp:PlaceHolder>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
