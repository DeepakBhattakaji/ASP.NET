<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_MQS.aspx.cs" Inherits="ASP_ALL_In_1.Multiple_Query_String.frm_MQS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Multiple Query String </title>
    <style>
        #wrapper{
            border-style:solid;
            border-color:green;
            border:1px;
        }
    </style>
</head>
<body style="width: 322px">
    <form id="form1" runat="server">
        <div>
            <asp:Panel Id="wrapper" runat="server">
            <table>
                <tr>
                    <th><label>Enter User Name :</label></th>
                    <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th><label>Enter User Email :</label></th>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>

                </tr>
                <tr>
                    <th><label>Enter User Phone No. :</label></th>
                    <td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><asp:Button ID="btnLogin" runat="server" Text="Submit" OnClick="btnLogin_Click" /></td>
                </tr>
            </table>
                </asp:Panel>
        </div>
    </form>
</body>
</html>
