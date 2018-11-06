<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_BillingSystem.aspx.cs" Inherits="ASP_ALL_In_1.EBS.frm_BillingSystem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NEPAL ELECTRICITY BILLING SYSTEM</title>
    <style>
        #Panel1{
            margin-left:250px;
        }
        body{
            background-color:azure;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BorderColor="Green" BorderStyle="Solid" Width="515px">
                <table>
                    <tr>
                    <th>
                        <label>Customer ID :</label>
                    </th>
                        <td>
                            <asp:TextBox ID="txtCustomerId" runat="server" Width="93px" Font-Bold="True" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                                        <tr>
                    <th>
                        <label>Customer Name :</label>
                    </th>
                        <td>
                            <asp:TextBox ID="txtCustomerName" runat="server" Width="250px" Font-Bold="True" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                    <th>
                        <label>Bill For :</label>
                    </th>
                        <td>
                            <asp:DropDownList ID="ddlYear" runat="server" Font-Bold="True" Height="25px"></asp:DropDownList>
                            <asp:DropDownList ID="ddlMonth" runat="server" Font-Bold="True" Height="25px"></asp:DropDownList>
                            <asp:DropDownList ID="ddlDay" runat="server" Font-Bold="True" Height="25px"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>Categories :</label>
                        </th>
                        <td>
                            <asp:DropDownList ID="ddlCategories" runat="server" Width="250px" Font-Bold="True" Height="25px">
<%--                                <asp:ListItem>Select Category</asp:ListItem>--%>
                                <asp:ListItem>Domestic Services</asp:ListItem>
                                <asp:ListItem>Domestic & Commercial Services</asp:ListItem> 
                                 <asp:ListItem>Industrial Services</asp:ListItem>
                                 <asp:ListItem>Cottage Industries</asp:ListItem>
                                 <asp:ListItem>Agricultural Services</asp:ListItem>
                                 <asp:ListItem>Street Lighting and PWS Services</asp:ListItem>
                                 <asp:ListItem>General Purpose Service</asp:ListItem>
                                 <asp:ListItem>Temporary Supply Services</asp:ListItem>
                            </asp:DropDownList>
                        
                        </td>
                    </tr>
                        <tr>
                        <th>
                            <label>Phase :</label>
                        </th>
                        <td>
                        <asp:DropDownList ID="ddlPhase" runat="server" Width="250px" Font-Bold="True" Height="25px">
<%--                            <asp:ListItem>Select Phase</asp:ListItem>--%>
                            <asp:ListItem>Single Phase</asp:ListItem>
                            <asp:ListItem>Three Phase</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <th>
                            <label>Areas :</label>
                        </th>
                        <td>
                            <asp:DropDownList ID="ddlAreas" runat="server" Width="250px" Font-Bold="True" Height="25px">
<%--                                <asp:ListItem>Select Area</asp:ListItem>--%>
                                <asp:ListItem>Rular Area</asp:ListItem>
                                <asp:ListItem>Urban Area</asp:ListItem>
                                <asp:ListItem>Sub-Urban Area</asp:ListItem>
                                <asp:ListItem>Ex-Urban Area</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                        <tr>
                        <th>
                            <label>Previous Year (Meter Reading) :</label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtPrev" runat="server" TextMode="Number" Width="250px" Font-Bold="True" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <th>
                            <label>Current Year (Meter Reading) :</label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtCurrent" runat="server" TextMode="Number" Width="250px" Font-Bold="True" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label></td>
                    </tr>
                        <tr>
                        <th>
                            <label>Unit Comsume :</label>
                        </th>
                        <td>
                            <asp:Button ID="btnCalcUnit" runat="server" BackColor="Green" Font-Bold="True" Font-Size="12pt" ForeColor="White" Text="Units" OnClick="btnCalcUnit_Click" />
                            &nbsp;<asp:TextBox ID="txtUnit" runat="server" Height="25px" ReadOnly="true" Width="81px" BackColor="#CCCCCC" Font-Bold="True"></asp:TextBox>
                            &nbsp;</td>
                    </tr>
                        <tr>
                        <th>
                            <label>Tariff :</label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtTariff" runat="server" ReadOnly="true" Width="250px" BackColor="#CCCCCC" Font-Bold="True" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <th>
                            <label>Tax Rate :</label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtTax" runat="server" ReadOnly="true" Width="250px" BackColor="#CCCCCC" Font-Bold="True" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <th>
                            <label>Total Bill :</label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtTotalBill" runat="server" ReadOnly="true" Width="250px" Font-Bold="True" Height="25px" Font-Size="14pt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" BackColor="Orange" Font-Bold="True" Font-Size="12pt" ForeColor="Blue" Height="34px" OnClick="btnCalculate_Click" Width="155px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
