<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmBillGenerate.aspx.cs" Inherits="Electricity_Billing_System.frmBillGenerate" %>

<!DOCTYPE html>
<script runat="server">


  
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nepal Electricity Authority</title>
    <style>
        .wrapper
        {
            border-color:#009933;
            border-style:Solid;
            margin-left:350px;
            margin-top:10px;
            margin-bottom: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" CssClass="wrapper" Height="600px" Width="720px">
                <asp:Panel ID="Panel2" runat="server" BackColor="#009933" Height="38px" Width="723px">
                    <asp:Button ID="btnBack" runat="server" BackColor="#009933" Font-Bold="True" Font-Size="18px" ForeColor="White" Height="26px" OnClick="btnBack_Click" Text="Back" Width="68px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="White" Text="Electricity  Billing  System" style="font-size: x-large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnExit" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="18px" ForeColor="White" Height="26px" OnClick="btnExit_Click" Text="Exit" Width="68px" />
                    <br />
                    <br />
                    <asp:Panel ID="Panel3" runat="server" Height="543px" Width="722px">
                        <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="#0000CC" Text="--------------------------------------------------------Consumer Service--------------------------------------------------------"></asp:Label>
                        <br />
                        &nbsp;<br /> 
                        &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Customer No. :"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtCustomerNo" runat="server" Font-Bold="True" Height="24px" Width="202px"></asp:TextBox>
                        &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Bill For :"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlYear" runat="server" Font-Bold="True" Height="32px" Width="83px" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
                           
                        </asp:DropDownList>
                        &nbsp;<asp:DropDownList ID="ddlMonth" runat="server" Font-Bold="True" Height="32px" Width="116px">
                            
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlDay" runat="server" Font-Bold="True" Height="32px" Width="72px">
                           
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                        &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Name :"></asp:Label>
&nbsp;<asp:TextBox ID="txtName" runat="server" Font-Bold="True" Height="24px" Width="263px"></asp:TextBox>
                        &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Address :"></asp:Label>
&nbsp;<asp:TextBox ID="txtAddress" runat="server" Font-Bold="True" Height="24px" Width="279px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Province No. :"></asp:Label>
                        &nbsp;<asp:DropDownList ID="ddl_Province" runat="server" Font-Bold="True" Height="32px" Width="141px" OnSelectedIndexChanged="ddl_Province_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem>Select Province No.</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="District :"></asp:Label>
                        &nbsp;<asp:DropDownList ID="ddl_District" runat="server" Font-Bold="True" Height="32px" Width="144px" OnSelectedIndexChanged="ddl_District_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem>--------No Items-------</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="City :"></asp:Label>
                        &nbsp;<asp:DropDownList ID="ddl_City" runat="server" Font-Bold="True" Height="32px" Width="151px" OnSelectedIndexChanged="ddl_City_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem>--------No Items-------</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;<br />&nbsp;<br />&nbsp;<br /> &nbsp;<asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Customer Type :"></asp:Label>
                        &nbsp;<asp:DropDownList ID="ddl_CustomerType" runat="server" Height="32px" Width="137px" Font-Bold="True" AutoPostBack="True" OnSelectedIndexChanged="ddl_CustomerType_SelectedIndexChanged" Visible="False">
                            <asp:ListItem>Type of Customer</asp:ListItem>
                            <asp:ListItem>L. T. Consumer</asp:ListItem>
                            <asp:ListItem>H. T. Consumer</asp:ListItem>

                        </asp:DropDownList>
                        &nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Categories :"></asp:Label>
                        &nbsp;<asp:DropDownList ID="ddl_Categories" runat="server" Height="32px" Width="150px" Font-Bold="True" AutoPostBack="True" OnSelectedIndexChanged="ddl_Categories_SelectedIndexChanged" Visible="False">
                            <asp:ListItem>--------No Items-------</asp:ListItem>

                        </asp:DropDownList>
                        &nbsp;
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Phase :"></asp:Label>
                        &nbsp;<asp:DropDownList ID="ddl_Phase" runat="server" Height="32px" Width="106px" Font-Bold="True" AutoPostBack="True" OnSelectedIndexChanged="ddl_Phase_SelectedIndexChanged1" Visible="False">
                            <asp:ListItem>Select Phase</asp:ListItem>
                             <asp:ListItem>Single Phase Supply at 240 Volts</asp:ListItem>
                             <asp:ListItem>Three Phase Supply at 415 Volts</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;<br />
                        &nbsp;&nbsp;<asp:Label ID="lblErrorMsg1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#0000CC" Text="------------------------------------------------------------Meter Reading--------------------------------------------------------"></asp:Label>
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Previous :"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtPrevious" runat="server" Font-Bold="True" Height="24px" Width="132px"></asp:TextBox>
                        &nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Present :"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtPresent" runat="server" Font-Bold="True" Height="24px" OnTextChanged="txtPresent_TextChanged" Width="132px"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Unit Consume :"></asp:Label>
                        &nbsp;&nbsp;<asp:TextBox ID="txtUnitConsume" runat="server" BackColor="#CCCCCC" Font-Bold="True" Height="24px" OnTextChanged="txtUnitConsume_TextChanged" ReadOnly="True" Width="122px"></asp:TextBox>
                        <br />
                        &nbsp;
                        <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label22" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;<asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Areas :"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtAreas" runat="server" Height="24px" Width="141px" BackColor="#CCCCCC" Font-Bold="True" ReadOnly="True" OnTextChanged="txtAreas_TextChanged"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Tariff :"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtTariff" runat="server" Height="24px" Width="73px" BackColor="#CCCCCC" Font-Bold="True" ReadOnly="True" ></asp:TextBox>
                        &nbsp;&nbsp;<asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Tax Rate :"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtTaxRate" runat="server" Height="24px" Width="70px" BackColor="#CCCCCC" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                        &nbsp;&nbsp;<asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Duty Rate :"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtDutyRate" runat="server" Height="24px" Width="67px" BackColor="#CCCCCC" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                        &nbsp;<br />
                        <br />
                        <asp:Label ID="Label24" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>
                        <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;
                        <asp:Button ID="btnCalculate" runat="server" BackColor="#009933" Font-Bold="True" Font-Size="14pt" ForeColor="White" Height="34px" Text="Print Bill" Width="146px" OnClick="btnCalculate_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnClear" runat="server" BackColor="#CC0066" Font-Bold="True" Font-Size="14pt" ForeColor="White" Height="34px" Text="Clear" Width="146px" OnClick="btnClear_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#009933" Text="Total Bill :"></asp:Label>
                        &nbsp; <asp:TextBox ID="txtTotalBill" runat="server" Height="24px" Width="167px" BackColor="#CCCCCC" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
