<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSharpFundamental.aspx.cs" Inherits="ASP_ALL_In_1.CSharpFundamental" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C# Fundamentals</title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="382px">
                <asp:Label ID="Label1" runat="server" Text="Select Operator :" Font-Bold="True" Font-Size="20px" ForeColor="Green"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Font-Bold="True" Height="26px" Width="196px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select the Operator...</asp:ListItem>
                    <asp:ListItem>+</asp:ListItem>
                    <asp:ListItem>-</asp:ListItem>
                    <asp:ListItem>*</asp:ListItem>
                    <asp:ListItem>/</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="Green" Text="Enter First Number :"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtNum1" runat="server" Font-Bold="True" Height="26px" Width="164px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="Green" Text="Enter Second Number :"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtNum2" runat="server" Font-Bold="True" Height="26px" Width="149px"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="Blue" Text="Result :"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="Blue" Text="0"></asp:Label>

            </asp:Panel>
        </div>
    </form>
</body>
</html>
