<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmHome.aspx.cs" Inherits="EmpSalaryCalc.frmHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DBK-Home Page</title>
    <style>
        body{
            background-color:azure;
        }
        .btn{
            background-color:antiquewhite;
            height:100px;
            width:300px;
            font-size:28px;
            color:darkgoldenrod;
            font-weight:bold;
            margin-left:100px;
            margin-top:20px;
            cursor:pointer;
        }
        .btn:hover{
            background-color:beige;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnSalary" runat="server" Text="Employee Salary" CssClass="btn" OnClick="btnSalary_Click" />
            <asp:Button ID="btnElectricity" runat="server" Text="Electricity Bill" CssClass="btn" OnClick="btnElectricity_Click" />
            <asp:Button ID="btnLMS" runat="server" Text="CA-1 LMS" CssClass="btn" OnClick="btnLMS_Click" />
            <asp:Button ID="btnOSC" runat="server" Text="CA-1 OSC" CssClass="btn" OnClick="btnOSC_Click" />
            <asp:Button ID="btnCustomerOffer" runat="server" Text="Customer Offer" CssClass="btn" OnClick="btnCustomerOffer_Click" />


        </div>
    </form>
</body>
</html>
