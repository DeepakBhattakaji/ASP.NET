<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="ASP_ALL_In_1._2018_Nov_09.EVEN.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page 1 - Employee DOB Select</title>
    <style>
                .wrapper{
            border:3px solid green;
            width:350px;
        }

        #btnSubmit{
            background-color:green;
            color:white;
            font-size:20px;
            font-weight:bold;
        }
        body{
            background-color:azure;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <asp:Panel ID="Panel1" runat="server">
                <h1>Select Employee DOB :</h1>
                <asp:DropDownList ID="ddlEmployeeYear" runat="server" AutoPostBack="True" Height="40px" Width="227px">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Width="129px" Height="40px" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
