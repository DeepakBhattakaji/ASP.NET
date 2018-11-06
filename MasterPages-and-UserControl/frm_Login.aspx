<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Login.aspx.cs" Inherits="ASP_ALL_In_1.MasterPages_and_UserControl.frm_Login" %>

<%@ Register Src="~/MasterPages-and-UserControl/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
        #txtEmail,#txtPassword{
            height:25px;
            width:300px;
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
            line-height:55px;
        }
        .WebUserControl1{
           margin-top:20%;
           text-align:center;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="35px">
                <asp:Label ID="Label1" runat="server" Text="B Group of Technology - Login"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                                  <table >
             <caption><h3 style="text-align:center;color:green; font-size:22px;">Login - Form</h3>  </caption>

                  <tr><td class="label">Email :</td>
                    <td><asp:TextBox ID="txtEmail" runat="server" /></td>
                </tr>
                 <tr><td class="label">Password :</td>
                    <td><asp:TextBox ID="txtPassword" runat="server" /></td>
                </tr>

                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr align="center">
                    
                    <td colspan="2"><asp:Button ID="btnSubmit" Text="Login" runat="server" /></td>
                </tr>
            </table>


            </asp:Panel>
        </div>
        <div class="WebUserControl1">
            <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />
        </div>
    </form>
</body>
</html>
