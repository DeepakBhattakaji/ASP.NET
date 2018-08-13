<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentRegistration.aspx.cs" Inherits="Class_Management_System.studentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration</title>
    <style>
        body{
            background-color:aliceblue;
        }
        .dob
        {
            width:30px;
        }
        table{
            line-height:30px;
        }
       #btnSubmit{
           color:darkgreen;
           background-color:antiquewhite;
           cursor:pointer;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table >
             <caption><h3 style="text-align:center;color:green;">Student Registration</h3>  </caption>

                <tr><td>Name :</td>
                    <td><asp:TextBox ID="stdName" runat="server" /></td>
                </tr>
                  <tr><td>Date of Birth :</td>
                    <td><asp:DropDownList ID="YYYY" runat="server" >
                       <!-- -->
                        <asp:ListItem>YYYY</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="MM" runat="server" CssClass="dob" />
                        <asp:TextBox ID="DD" runat="server" CssClass="dob" />
                      </td>
                </tr>
                  <tr><td>Gender :</td>
                    <td><asp:RadioButton ID="male" runat="server"   Text="Male" GroupName="gender"/>
                        <asp:RadioButton ID="female" runat="server"  Text="Female" GroupName="gender"/>
                    </td>
                </tr>
                  <tr><td>Course :</td>
                    <td><asp:CheckBox ID="cap123" runat="server"  Text="CAP123"/>
                        <asp:CheckBox ID="cap234" runat="server"  Text="CAP234"/>
                        <asp:CheckBox ID="cap567" runat="server"  Text="CAP567"/>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr align="center">
                    
                    <td colspan="2"><asp:Button ID="btnSubmit" Text="Register Me" runat="server" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
