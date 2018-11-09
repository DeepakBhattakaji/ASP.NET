<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="ASP_ALL_In_1._2018_Nov_09.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page2 - Home Product</title>
    <style>
         body{
            background-color:azure;
        }
         label{
             font-size:20px;
             color:green;
         }
         td{
             color:blueviolet;
             font-size:22px;
             font-weight:bold;
         }
         table{
             width:350px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <h3><asp:LinkButton ID="linkbtnBack" runat="server" Text="< Back" OnClick="linkbtnBack_Click"></asp:LinkButton></h3>
        </div>
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <table>
                    <caption><h1>Product Details</h1></caption>
                    <tr>
                        <th>
                                <label>Product Id :</label>
                        </th>
                        <td>
                            <asp:Label ID="lblProductId" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                                        <tr>
                        <th>
                                <label>Product Name :</label>
                        </th>
                        <td>
                            <asp:Label ID="lblProductName" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                                <label>Product Price :</label>
                        </th>
                        <td>
                            <asp:Label ID="lblProductPrice" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>

                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
