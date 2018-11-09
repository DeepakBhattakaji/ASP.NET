<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="ASP_ALL_In_1._2018_Nov_09.ODD.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page1- Select Product</title>
    <style>
        .wrapper{
            border:3px solid green;
            width:250px;
        }
        body{
            background-color:azure;
        }
                #btnSubmit{
            background-color:green;
            color:white;
            font-size:20px;
            font-weight:bold;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <asp:Panel ID="Panel1" runat="server" Width="251px">
                <h2>Product ID</h2>
                <table>
                    <tr>
                        <td>
                <asp:DropDownList ID="ddlProductId" runat="server" Height="38px" Width="198px" AutoPostBack="True">
                </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                        </td>
                    </tr>

                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
