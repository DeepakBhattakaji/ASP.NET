<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLMS.aspx.cs" Inherits="ASPCA1DBK.LMS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:azure;
        }
        .panelLeft {
            float: left;
            margin-left: 0px;
        }

        .auto-style1 {
            width: 254px;
            height: 288px;
        }
        .auto-style3 {
            width: 343px;
            height: 288px;
        }
        .wrapper{
            margin-left:250px;
            margin-right: 39px;
        }
        .auto-style4 {
            margin-top: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="872px" Width="801px" CssClass="wrapper" BorderColor="#009933" BorderStyle="Solid">
                <asp:Panel ID="Panel3" runat="server" BackColor="#009933" Height="49px" Style="margin-bottom: 0px" Width="801px" >
                    &nbsp;&nbsp;<asp:Button ID="btnBack" runat="server" BackColor="#009933" Font-Bold="True" Font-Size="18px" ForeColor="White" Height="26px" OnClick="btnBack_Click" Text="Back" Width="68px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="White" Text="Libary Management System (LMS)"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnExit" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="18px" ForeColor="White" Height="26px" OnClick="btnExit_Click" Text="Exit" Width="68px" />
                <br />
                <br />
                <br />
            </asp:Panel>
                <asp:Panel ID="Panel4" runat="server" BackColor="#CCFFFF" Height="54px" Width="801px" >
                    &nbsp;<br /> &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#009933" Text="Select Cateogory : "></asp:Label>
                    &nbsp;
                    <asp:DropDownList ID="ddlBooks" runat="server" Height="36px" Width="256px" OnSelectedIndexChanged="ddlBooks_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>Select Books Item</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Electrical Engg</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Business Law</asp:ListItem>

                    </asp:DropDownList>
                    <br />
                </asp:Panel>

                <asp:Panel ID="PanelBooksList0" runat="server" BackColor="#CCCCFF" Height="300px" Width="350px" CssClass="auto-style4">

                    <table style="width: 1066px; margin-top: 0px">
                        <tr>
                            <td class="auto-style1">
                                          <asp:Label ID="lblBookCate0" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="#009933" Text="Book Category:"></asp:Label>
                                <br />
                                <br />
                                &nbsp;&nbsp;
                            <asp:Label ID="lblBookName3" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Category :"></asp:Label>
                                <asp:Label ID="BCate0" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                <br />
                                <br />
                                &nbsp;&nbsp;
                            <asp:Label ID="lblBookName4" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Name :"></asp:Label>
                                <asp:Label ID="Bname1" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                <br />
                                <br />
                                &nbsp;&nbsp;
                            <asp:Label ID="lblBookAuthor7" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Author :"></asp:Label>
                                <asp:Label ID="BAuthor1" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                <br />
                                <br />
                                &nbsp;&nbsp;
                            <asp:Label ID="lblBookAuthor8" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Price :"></asp:Label>
                                <asp:Label ID="BPrice1" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                <br />
                                <br />
                                &nbsp;&nbsp;
                            <asp:Label ID="lblBookAuthor9" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Publication :"></asp:Label>
                                <asp:Label ID="BPub3" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                <br />
                                <br />
                                &nbsp;&nbsp;
                            <asp:Label ID="lblBookAuthor10" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Pub. Date :"></asp:Label>
                                <asp:Label ID="BDate" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style3">
                                <asp:Panel ID="PanelBooksList1" runat="server" BackColor="#CCCCFF" Height="300px" Width="346px" CssClass="panelLeft">
                                    
                                <asp:Label ID="lblBookCate1" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="#009933" Text="Book Category:"></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;
                                <asp:Label ID="lblBookName7" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Category :"></asp:Label>
                                    <asp:Label ID="BCate1" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;
                                <asp:Label ID="lblBookName8" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Name :"></asp:Label>
                                    <asp:Label ID="Bname3" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;
                                <asp:Label ID="lblBookAuthor15" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Author :"></asp:Label>
                                    <asp:Label ID="BAuthor3" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;
                                <asp:Label ID="lblBookAuthor16" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Price :"></asp:Label>
                                    <asp:Label ID="BPrice3" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;
                                <asp:Label ID="lblBookAuthor17" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Publication :"></asp:Label>
                                    <asp:Label ID="BPub7" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;
                                <asp:Label ID="lblBookAuthor18" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Pub. Date :"></asp:Label>
                                    <asp:Label ID="BDate2" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                </asp:Panel>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            </td>

                        </tr>
                    </table>


                    <asp:Panel ID="PanelSearch0" runat="server" BackColor="#00CCFF" Height="73px" Width="801px" style="margin-right: 0px">
                        &nbsp;&nbsp;
                                <br />
                        &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Search : "></asp:Label>
                        &nbsp;&nbsp;
                                <asp:TextBox ID="txtSearch" runat="server" Height="25px" Width="347px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnSearch" runat="server" BackColor="#00CC00" Font-Bold="True" Font-Size="20px" ForeColor="White" Height="32px" Text="Search..." Width="181px" OnClick="btnSearch_Click" />
                        <br />
                        <br />

                    </asp:Panel>

                    <asp:Panel ID="PanelBDetails0" runat="server" Height="330px" Style="margin-top: 20px" Width="665px" Visible="False">
                        &nbsp;&nbsp;
                                    <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="25px" ForeColor="#009933" Text="Details of The Book :"></asp:Label>
                        <br />
                        <br />
                        &nbsp;
                                    <asp:Label ID="lblBookName5" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book ID :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="BID" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                        <br />
                        <br />
                        &nbsp;
                                    <asp:Label ID="lblBookName6" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Name :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Bname2" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                        <br />
                        <br />
                        &nbsp;
                                    <asp:Label ID="lblBookAuthor11" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Author :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="BAuthor2" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                        <br />
                        &nbsp;
                                    <br />
                        &nbsp;
                                    <asp:Label ID="lblBookAuthor12" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Price :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="BPrice2" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                        <br />
                        <br />
                        &nbsp;
                                    <asp:Label ID="lblBookAuthor13" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Publication :"></asp:Label>
                        &nbsp;&nbsp;
                                    <asp:Label ID="BPub5" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                        <br />
                        <br />
                        &nbsp;
                                    <asp:Label ID="lblBookAuthor14" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Book Pub. Date :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="BDate6" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="#000099" Text="Label"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnAdd" runat="server" BackColor="#00CC00" Font-Bold="True" Font-Size="20px" ForeColor="White" Height="32px" OnClick="btnAdd_Click" Text="Add" Width="181px" />
                    </asp:Panel>
                    <br />

                </asp:Panel>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
