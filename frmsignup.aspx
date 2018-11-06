<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmsignup.aspx.cs" Inherits="ASP_ALL_In_1.frmsignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
    <style type="text/css">
        .auto-style1 {
            width: 113px;
        }
        .auto-style2 {
            width: 113px;
            height: 23px;
        }
        .auto-style4 {
            width: 100%;
            height: 114px;
        }
        .auto-style5 {
            height: 23px;
            width: 210px;
        }
        .auto-style6 {
            width: 210px;
        }
        .auto-style7 {
            width: 204px;
            height: 66px;
        }
        .auto-style8 {
            width: 113px;
            height: 26px;
        }
        .auto-style9 {
            width: 210px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style2">First Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Last Name</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Email Id</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Re-Password</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Phone No</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Address</td>
                    <td class="auto-style6">
                        <textarea id="TextArea1" class="auto-style7" name="S1"></textarea></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSignup" runat="server" Text="Signup" OnClick="btnSignup_Click" Width="169px" />
                    </td>
                </tr>
            </table>
        </div>
       
    </form>
</body>
</html>
