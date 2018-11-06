<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Appointment.aspx.cs" Inherits="ASP_ALL_In_1.CA3LAB.frm_Appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Appointment Record</title>
    <style>
        body{
            background-color:azure;
        }
        #form1{
            margin-left:0px;
        }
        #Panel1{
            border:groove 2px;
            border-color:green;
            border-width:250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <table>
                    <tr>
                        <td>
                         <asp:Label Text="Enter Appointment ID : " runat="server" ID="Label6" Font-Bold="True" Font-Size="18px" ForeColor="Green"></asp:Label>

                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="txtPID" runat="server" Font-Bold="True" Font-Size="18px" TextMode="Number" Width="126px"></asp:TextBox>
                        </td>
                                                <td>
                            <asp:Button ID="btn_Search" runat="server" Text="Search" OnClick="btn_Search_Click" BackColor="Green" Font-Bold="True" Font-Size="18px" ForeColor="White" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label Text="Patient Name : " runat="server" ID="Label1" Font-Bold="True" Font-Size="18px" ForeColor="Green"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:Label ID="lbl_PName" runat="server" Font-Bold="True" Font-Size="18px"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label Text="Aadhar Card No. : " runat="server" ID="Label2" Font-Bold="True" Font-Size="18px" ForeColor="Green"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:Label ID="lbl_AadharCard" runat="server" Font-Bold="True" Font-Size="18px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label Text="Phone No. : " runat="server" ID="Label3" Font-Bold="True" Font-Size="18px" ForeColor="Green"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:Label ID="lbl_PhoneNo" runat="server" Font-Bold="True" Font-Size="18px"></asp:Label>
                        </td>
                    </tr>
                                        <tr>
                        <td>
                            <asp:Label Text="Date of Birth : " runat="server" ID="Label4" Font-Bold="True" Font-Size="18px" ForeColor="Green"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:Label ID="lbl_Dob" runat="server" Font-Bold="True" Font-Size="18px"></asp:Label>
                        </td>
<td>     <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="18px" Text="Age : " ForeColor="Red"></asp:Label>
</td>
<td>     <asp:Label ID="lbl_Age" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Red"></asp:Label>
</td>

                    </tr>
                    
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
