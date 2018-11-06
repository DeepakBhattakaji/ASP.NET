<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Login.aspx.cs" Inherits="ASP_ALL_In_1.CA4.frm_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Id Generate</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <table>
                    <tr>
                        <th>
                            <asp:Label ID="Label1" runat="server" Text="Employee ID :"></asp:Label>
                        </th>
                        <td>
                <asp:TextBox ID="txtEmployeeId" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                                        <tr>
                        <th>
                            <asp:Label ID="Label2" runat="server" Text="Employee Name :"></asp:Label>
                        </th>
                        <td>
                <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>

                        </td>
                    </tr>

                    <tr align="center">
                        <td colspan="2">
                            <asp:Button ID="btnLogin" runat="server" Text="Generate Certificate" OnClick="btnLogin_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
