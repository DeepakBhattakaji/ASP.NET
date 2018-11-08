<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_HomeMQS.aspx.cs" Inherits="ASP_ALL_In_1.Multiple_Query_String.frm_HomeMQS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page MQS</title>
    <style>
        label{
            color:green;
        }
        #lblUserName,#lblEmail,#lblPhone{
            color:blueviolet;
            font-weight:bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="wrapper" runat="server">
                <label>Hello My name is&nbsp; </label>
                <asp:Label ID="lblUserName" runat="server"></asp:Label><br />
                <label>And Don&#39;t Forget to Email Me on&nbsp; </label>
                <asp:Label ID="lblEmail" runat="server"></asp:Label><br />
                <label>Please Be in Touch COntact me on&nbsp; </label>
                <asp:Label ID="lblPhone" runat="server"></asp:Label><br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
