<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSalaryCalc.aspx.cs" Inherits="EmpSalaryCalc.frmSalaryCalc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Salary Calculation</title>
        <style type="text/css">
        #form1 {
            width: 550px;
            border-color:#009900;
            height: 580px;
        }
         body{
            background-color:azure;
        }
    </style>
</head>
<body>
<form id="form1" runat="server" style="border-style: solid; border-width: medium; border-color: inherit; margin-top: 20px; margin-left: 350px; color: #009900; ">   
        <asp:Panel ID="Panel3" runat="server" BackColor="#009900" ForeColor="White" Height="30px" Width="550px">
            &nbsp;
            <asp:Button ID="btnBack" runat="server" BackColor="#009933" Font-Bold="True" Font-Size="18px" ForeColor="White" Height="26px" OnClick="btnBack_Click" Text="Back" Width="68px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="18pt" ForeColor="White" Text="Employee Salary Calculation"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnExit" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="18px" ForeColor="White" Height="26px" OnClick="btnExit_Click" Text="Exit" Width="68px" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="308px" Width="545px" Font-Bold="True">
            <br />
            &nbsp;
            
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#009933" Text="Name :" Font-Size="16px"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtName" runat="server" Width="175px" Height="25px" Font-Bold="True" Font-Size="14px"></asp:TextBox>
            &nbsp;
            <br />
            <br />

                       &nbsp;
            <asp:Label ID="label10" runat="server" Font-Bold="True" Text="Designation:" Font-Size="16px"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddl_Designation" runat="server" AutoPostBack="True" Height="25px" OnSelectedIndexChanged="ddl_Designation_SelectedIndexChanged" Width="179px" Font-Bold="True" Font-Size="14px">
                <asp:ListItem>Select Designation</asp:ListItem>
                <asp:ListItem>HOS</asp:ListItem>
                <asp:ListItem>HOD</asp:ListItem>
                <asp:ListItem>Incharge</asp:ListItem>
                <asp:ListItem>Professor</asp:ListItem>
                <asp:ListItem>Lab Assistant</asp:ListItem>
                <asp:ListItem>Helper</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:Label ID="LabelddlError" runat="server" Font-Size="10pt" ForeColor="Red"></asp:Label>
            <br />
            <br />
&nbsp;
            <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#009933" Text="Basic Salary :" Font-Size="16px"></asp:Label>
            &nbsp;<asp:Label ID="Label17" runat="server" ForeColor="Black" Text="₹"></asp:Label>
&nbsp;<asp:TextBox ID="txtBasicSalary" runat="server" ReadOnly="True" Width="99px" BackColor="#CCCCCC" Height="25px" Font-Bold="True" Font-Size="14px"></asp:TextBox>
            &nbsp;<asp:Label ID="Label15" runat="server" ForeColor="Black" Text="Per Annum &nbsp;"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Working Days :" Font-Size="16px"></asp:Label>
            &nbsp;<asp:TextBox ID="txtDays" runat="server" TextMode="Number" Width="40px" Height="25px" Font-Bold="True" Font-Size="14px" style="margin-left: 0px" OnTextChanged="txtDays_TextChanged"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="TA :" Font-Size="16px"></asp:Label>
&nbsp;<asp:Label ID="Label22" runat="server" ForeColor="Black" Text="₹"></asp:Label>
            &nbsp;<asp:TextBox ID="txtTA" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Size="14px" Height="25px" ReadOnly="True" style="margin-left: 0px" Width="40px"></asp:TextBox>
            &nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="DA :" Font-Bold="True" Font-Size="16px"></asp:Label>
&nbsp;<asp:Label ID="Label20" runat="server" ForeColor="Black" Text="₹"></asp:Label>
&nbsp;<asp:TextBox ID="txtDA" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Size="14px" Height="25px" ReadOnly="True" Width="40px"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="TAX :" Font-Size="16px"></asp:Label>
&nbsp;<asp:Label ID="Label21" runat="server" ForeColor="Black" Text="%"></asp:Label>
            &nbsp;<asp:TextBox ID="txtTAX" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Size="14px" Height="25px" ReadOnly="True" Width="40px"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="16px" ForeColor="#009933" Text="Net Salary :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" ForeColor="Black" Text="₹"></asp:Label>
            &nbsp;<asp:TextBox ID="txtNetSalary" runat="server" ReadOnly="True" Width="100px" BackColor="#CCCCCC" Height="25px" Font-Bold="True" Font-Size="14px"></asp:TextBox>
            &nbsp;<asp:Label ID="Label16" runat="server" ForeColor="Black"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSubmit" runat="server" BackColor="#009933" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="32px" OnClick="btnSubmit_Click" Text="Calculate" Width="100px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" BackColor="#FF3399" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="32px"  Text="Clear" Width="102px" OnClick="btnClear_Click" />

            <br />
            <hr />
            <br />
            <asp:Panel ID="Panel4" runat="server">
                &nbsp;<asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black">--------------------------Employee Details----------------------</asp:Label>
                <br />
                <br />
&nbsp;
                <asp:Label ID="lblname1" runat="server" Text="Employee Name :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblName" runat="server"></asp:Label>
                <br />
&nbsp;
                <asp:Label ID="lblDeg1" runat="server" Text="Employee Designation :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblDesignation" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Employee Basic Salary :"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblBSalary" runat="server"></asp:Label>
                <br />
                &nbsp;
                <asp:Label ID="Label4" runat="server" Text="Employee Working Days :"></asp:Label>
                &nbsp;<asp:Label ID="lblWDays" runat="server"></asp:Label>
                <br />
                &nbsp;
                <asp:Label ID="Label5" runat="server" Text="Employee TA :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTA" runat="server"></asp:Label>
                <br />
&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Employee DA :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblDA" runat="server"></asp:Label>
                <br />
                &nbsp;
                <asp:Label ID="Label19" runat="server" Text="Employee TAX to Deduct :"></asp:Label>
                <asp:Label ID="lblTAX" runat="server"></asp:Label>
                <br />
&nbsp;
                <asp:Label ID="Label23" runat="server" Text="Employee Net Salary :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="lblNetSalary" runat="server"></asp:Label>
                <br />
            </asp:Panel>
        </asp:Panel>
    <br />
    &nbsp;&nbsp;
        </form>
</body>
</html>
