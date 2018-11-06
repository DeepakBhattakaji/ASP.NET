<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_AdminHome.aspx.cs" Inherits="ASP_ALL_In_1.Login_Signup.Admin.frm_AdminHome" %>

<%@ Register Src="~/Login-Signup/Admin/Header.ascx" TagPrefix="uc1" TagName="Header" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin- Home</title>
    <style>
        body{
            background-color:azure;
        }
        #ddlUserList1,#ddlUserList2,#GVUserInfo1,#GVUserInfo2{
            margin-left:250px;
        }
        #label{
            font-size:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div>
           <uc1:Header runat="server" id="Header" />
           <br />
           <asp:Label ID="lblAdmin" runat="server" Text="Label"></asp:Label>
       </div>
        <div>
            <br />

        <h3>
<a href="../frm_ShowUser.aspx">Show User</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="../frm_ShowUser-Manually.aspx">Show User Using- Manually</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="../frm_ShowUser-Gridview-Exam.aspx">Show User Using- GridView- Manually[Exam]</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        </h3>

            <br />
            <hr />
            <strong>METHOD 1 :</strong><br />

            <asp:DropDownList ID="ddlUserList1" runat="server" Height="46px" OnSelectedIndexChanged="ddlUserList1_SelectedIndexChanged" Width="293px" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="UId" DataValueField="UId">

            </asp:DropDownList>

            <br />

            <br />

            <hr />

            <asp:Panel ID="PanelUserList1" runat="server">
                <asp:GridView ID="GVUserInfo1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="360px">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <a href="frm_AdminHome.aspx"></a>

                <br />
                <asp:Panel ID="PanelUserEdit" runat="server">

                                        <table>
        <tr>
            <td class="label">
                <strong>User ID : </strong>
            </td>
            <td>
             <asp:TextBox ID="txtUID" runat="server" ReadOnly="True" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td class="label">
                <strong>User Name : </strong>
            </td>
            <td>
             <asp:TextBox ID="txtUserName" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label">
                <strong>User Email : </strong>
            </td>
            <td>
             <asp:TextBox ID="txtEmail" runat="server" ReadOnly="True" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label">
                <strong>User DOB : </strong>
            </td>
            <td>
             <asp:TextBox ID="txtDOB" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label">
                <strong>User Type : </strong>
            </td>
            <td>
             <asp:TextBox ID="txtType" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="label">
                <strong>User Type : </strong>
            </td>
            <td>
                <asp:DropDownList ID="ddlUserTypeLoad" runat="server" AutoPostBack="True" Height="43px" OnSelectedIndexChanged="ddlUserTypeLoad_SelectedIndexChanged" Width="207px" AppendDataBoundItems="True" DataTextField="UserType">

                </asp:DropDownList>
            </td>
        </tr>


    </table>


                </asp:Panel>

                <br />
                <asp:Button ID="txtUpdate" runat="server" BorderColor="#CC99FF" Font-Bold="True" ForeColor="Green" OnClick="txtUpdate_Click" Text="Update" Width="82px" />
                &nbsp;<asp:Button ID="btnDelete" runat="server" BorderColor="#CC99FF" Font-Bold="True" ForeColor="Red" Text="Delete" Width="82px" OnClick="btnDelete_Click" />
                &nbsp;<asp:Button ID="btnCancel" runat="server" BackColor="#CC99FF" Font-Bold="True" ForeColor="Yellow" Text="Cancel" Width="82px" />
                <br />

            </asp:Panel>

        </div>
        <hr />
        <div>
            <strong>METHOD 2 :</strong><br />
        <asp:DropDownList ID="ddlUserList2" runat="server" AutoPostBack="True" Height="46px" Width="299px" OnSelectedIndexChanged="ddlUserList2_SelectedIndexChanged"></asp:DropDownList>

            <br />

            <hr />

        </div>

            <asp:Panel ID="PanelUserList2" runat="server">
                <asp:GridView ID="GVUserInfo2" runat="server" CellPadding="4" Width="360px" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>

            </asp:Panel>

    </form>

</body>
</html>
