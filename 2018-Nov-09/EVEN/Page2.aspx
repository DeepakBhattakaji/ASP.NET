<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="ASP_ALL_In_1._2018_Nov_09.EVEN.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page 2 - Home Employee Record</title>
    <style type="text/css">
        .wrapper {
           width:350px;
        }
        body{
            background-color:azure;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div">
         <h3><asp:LinkButton ID="linkbtnBack" runat="server" Text="< Back" OnClick="linkbtnBack_Click"></asp:LinkButton></h3>

            <h1>Employee Details</h1>
              <asp:Panel ID="Panel2" runat="server" Height="186px">
                    <asp:GridView ID="gvEmployee" runat="server" Height="142px" Width="467px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </asp:Panel>
        </div>
    </form>
</body>
</html>
