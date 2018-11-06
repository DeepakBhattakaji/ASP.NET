<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Signup.aspx.cs" Inherits="ASP_ALL_In_1.Login_Signup.frm_Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
            <style>
        body{
             background-color:azure;

        }
        #Panel1{
            background-color:green;
          
        }
        #Label1{
            font-size:22px;
            color:blanchedalmond;
            text-align:center;
            height:35px;

        }
        #Panel2{
              margin-left:350px;
        }
        .label{
            font-size:22px;
            color:green;
            font-weight:bold;
        }
        #btnSubmit{
            width:150px;
            height:35px;
            background-color:green;
            color:white;
            font-size:22px;
        }
        tr{
            line-height:30px;
        }


        table{
            margin-left:300px;
        }

                .auto-style1 {
                    width: 283px;
                }

                .auto-style2 {
                    font-size: 22px;
                    color: green;
                    font-weight: bold;
                    height: 62px;
                    width: 199px;
                }
                .auto-style3 {
                    width: 283px;
                    height: 62px;
                }
                .auto-style4 {
                    font-size: 22px;
                    color: green;
                    font-weight: bold;
                    height: 46px;
                    width: 199px;
                }
                .auto-style5 {
                    width: 283px;
                    height: 46px;
                }
                .auto-style6 {
                    font-size: 22px;
                    color: green;
                    font-weight: bold;
                    height: 45px;
                    width: 199px;
                }
                .auto-style7 {
                    width: 283px;
                    height: 45px;
                }

                .auto-style8 {
                    font-size: 22px;
                    color: green;
                    font-weight: bold;
                    width: 199px;
                }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
                
                  <table >
             <caption><h3 style="text-align:center;color:green; background-color:antiquewhite; font-size:22px;">Registration - Form&nbsp;&nbsp;&nbsp;
                 <a href="frm_Login.aspx">Login</a>
                 </h3>  </caption>

                  <tr><td class="auto-style4">User Id :</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblAutoId" runat="server" Font-Bold="True" Font-Size="18px"></asp:Label></td>
                </tr>

                <tr><td class="auto-style8">User Name :</td>
                    <td class="auto-style1"><asp:TextBox ID="txtUserName" runat="server" Height="35px" Width="300px" Font-Bold="True" Font-Size="18px" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVUserName" runat="server" ErrorMessage="Enter User Name" ForeColor="Red" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="REVUserName" runat="server" ErrorMessage="Enter Valid Name (E.g. Deepak Bhatta)" ControlToValidate="txtUserName" ValidationExpression="^[a-zA-Z'.\s]{1,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    </tr>

                      
                  <tr><td class="auto-style6">Email :</td>
                    <td class="auto-style7"><asp:TextBox ID="txtEmail" runat="server" Height="35px" Width="300px" Font-Bold="True" Font-Size="18px" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ErrorMessage="Enter Email ID" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="Email ID is not Valid" ForeColor="Red"  ControlToValidate="txtEmail" ValidationExpression="^(.+)@([^\.].*)\.([a-z]{2,})$" ></asp:RegularExpressionValidator>
                    </td>
                  </tr>
                 <tr><td class="auto-style8">Password :</td>
                    <td class="auto-style1"><asp:TextBox ID="txtPassword" runat="server" Height="35px" Width="300px" TextMode="Password"  Font-Bold="True" Font-Size="18px" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVPassword" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator></td>
                     </tr>
                 <tr><td class="auto-style8">Re-Type Password :</td>
                    <td class="auto-style1"><asp:TextBox ID="txtRePassword" runat="server" Height="35px" Width="300px" TextMode="Password" Font-Bold="True" Font-Size="18px" /></td>
                                   <td>
                        <asp:CompareValidator ID="CVPassword" runat="server" ErrorMessage="Password Must be Same!" ControlToCompare="txtPassword" ControlToValidate="txtRePassword" ForeColor="Red"></asp:CompareValidator>
                                       <br />
                        <asp:RequiredFieldValidator ID="RFVRePassword" runat="server" ErrorMessage="Enter Re-Password" ControlToValidate="txtRePassword" ForeColor="Red"></asp:RequiredFieldValidator></td>

                                   </td>

                     </tr>
                      
                  <tr><td class="auto-style2">Enter Date of Birth :</td>
                      <td class="auto-style3">
                          <asp:DropDownList ID="ddlDay" runat="server" AutoPostBack="True" Height="43px" Width="86px" Font-Bold="True" Font-Size="18px" />

                          &nbsp;<asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True" Height="40px" Width="92px" Font-Bold="True" Font-Size="18px" />

                          &nbsp;<asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" Height="40px" Width="95px" Font-Bold="True" Font-Size="18px" />

                          </td>
                </tr>

                <tr align="center">
                    
                    <td colspan="2">
                        <br />
                        <asp:Button ID="btnSubmit" Text="Signup" runat="server" OnClick="btnSubmit_Click" /></td>
                </tr>
            </table>

        </div>
</body>
    </form>

</html>
