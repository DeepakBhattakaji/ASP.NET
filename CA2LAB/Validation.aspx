<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="CA2DBK.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration Form</title>
    <style>
        body{
            background-color:azure;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="256px">
                <table style="width: 100%;">
                    <tr>
                        <td colspan="2">
                            <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter The Student Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Student Name Must be Alphabetic" ValidationExpression="^[a-zA-Z'.\s]{5,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Reg No. :"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtRegno" runat="server"></asp:TextBox></td>
                                                <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegno" ErrorMessage="Enter The Student Regestration No." ForeColor="Red"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtRegno" ErrorMessage="Enter Valid Reg No. E.g [11716713]" ValidationExpression="^[0-9'.\d]{8}" ForeColor="Red"></asp:RegularExpressionValidator>

                                                    </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Course :"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>
                                </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCourse" ErrorMessage="Enter The Student Course" ForeColor="Red"></asp:RequiredFieldValidator>
                                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCourse" ErrorMessage="Course Name Must be AlphNumeric" ValidationExpression="^[a-zA-Z0-9'.\s]{5,20}" ForeColor="Red"></asp:RegularExpressionValidator>

                            </td>

                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="DOB :"></asp:Label></td>
                        <td>
                            <asp:DropDownList ID="ddlDay" runat="server">
                            </asp:DropDownList>
                            
                            <asp:DropDownList ID="ddlMonths" runat="server"></asp:DropDownList>
                            <asp:DropDownList ID="ddlYears" runat="server"></asp:DropDownList>


                            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Enter Captcha :"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                       </td>
                    </tr>

                </table> 
            </asp:Panel>
        </div>
    </form>
</body>
</html>
