<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_ShowUser.aspx.cs" Inherits="ASP_ALL_In_1.Login_Signup.frm_ShowUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display - User</title>
</head>
<body>
        <h3><a href="frm_Signup.aspx">Add User</a></h3>
<br />
    <form id="form1" runat="server">
        <div>
<%--           <table>
               <tr>
                   <th>User Id :</th>
                   <td>
                       <asp:Label ID="lblUserId" runat="server" Text="UserId"></asp:Label>

                   </td>
               </tr>
                              <tr>
                   <th>User Name :</th>
                   <td>
                       <asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label>

                   </td>
               </tr>
               <tr>
                   <th>Email :</th>
                   <td>
                       <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>

                   </td>
               </tr>
               <tr>
                   <th>Date of Birth :</th>
                   <td>
                       <asp:Label ID="lblDOB" runat="server" Text="DOB"></asp:Label>

                   </td>
               </tr>

           </table>--%>
            <asp:GridView ID="gv_tbl_Reg" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource_tbl_Reg" GridLines="None" Height="235px" Width="424px" AllowPaging="True" AllowSorting="True" DataKeyNames="Id">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="UId" HeaderText="UId" SortExpression="UId" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_tbl_Reg" runat="server" ConnectionString="<%$ ConnectionStrings:WebAppDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_Reg]" DeleteCommand="DELETE FROM [tbl_Reg] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tbl_Reg] ([UId], [UserName], [Email], [Password], [DOB], [UserType]) VALUES (@UId, @UserName, @Email, @Password, @DOB, @UserType)" UpdateCommand="UPDATE [tbl_Reg] SET [UId] = @UId, [UserName] = @UserName, [Email] = @Email, [Password] = @Password, [DOB] = @DOB, [UserType] = @UserType WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UId" Type="Int32" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="DOB" Type="String" />
                    <asp:Parameter Name="UserType" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UId" Type="Int32" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="DOB" Type="String" />
                    <asp:Parameter Name="UserType" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
