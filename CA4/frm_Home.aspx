<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Home.aspx.cs" Inherits="ASP_ALL_In_1.CA4.frm_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Employee Certificate</title>
    <style>
        body{
            background-color:azure;
        }
        #Label1,#Label4{
            font-size:40px;
            font-weight:bold;
            color:green;
            margin-left:120px;

        }
        #Label4{
            font-size:30px;
            font-weight:bold;
            color:blue;
            margin-left:200px;
            font-style:italic;


            
            
        }
        #Image1{
            margin-left:450px;
        }
        #Panel1{
            border-color:black;
            border-style: 2px solid ;
            margin-left:250px;
        }
        .auto-style1 {
            width: 617px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" Width="613px" BorderColor="Black" BorderStyle="Solid">
                <asp:Label ID="Label1" runat="server" Text="Certificate of Compelition"></asp:Label>
                &nbsp;<br />
                <asp:Label ID="Label4" runat="server" Text="Conguralations!"></asp:Label>
                &nbsp;<br />

                <br />
                <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderStyle="Groove" Height="102px" Width="131px" />
                <br />
                <br />
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="18px" Text="Mr/Mrs."></asp:Label>
&nbsp;
                <asp:Label ID="txtEmployeeName" runat="server" Font-Bold="True" Font-Size="20px" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="you have sucessfully completed our online certyification course in ASP.NET, having Employee Id :"></asp:Label>
                &nbsp;
                <asp:Label ID="txtEmployeeId" runat="server" Text="Label" Font-Bold="True" Font-Size="20px"></asp:Label>


                &nbsp;have a great future ahead and good Luck.<br />&nbsp;<br /><br /><br />&nbsp;<strong>02nd November 2018
                <br />
                &nbsp;Certificate code : 836599 </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ..................................................<br /> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Program Director</strong><br /> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;<asp:Label ID="Label5" runat="server" Font-Size="20px" ForeColor="Green" Text="B Group of Technology"></asp:Label>
                <br />
                &nbsp;</strong><asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Blue" Text="Dhangadhi-5, Kailali, Nepal"></asp:Label>


            </asp:Panel>
        </div>
    </form>
</body>
</html>
