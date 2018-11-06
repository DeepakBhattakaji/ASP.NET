<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CA2DBK.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Information</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Student Name :  "></asp:Label>
                <asp:Label ID="lblStdName" runat="server" Text=""></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
