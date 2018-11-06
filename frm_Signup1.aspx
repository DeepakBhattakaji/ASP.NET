<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Signup1.aspx.cs" Inherits="ASP_ALL_In_1.frm_Signup1" %>

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
        .WebUserControl1{
           margin-top:550px;
           text-align:center;
        }

        table{
            margin-left:350px;
        }

                .auto-style1 {
                    width: 248px;
                }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
                
                  <table >
             <caption><h3 style="text-align:center;color:green;">Registration - Form</h3>  </caption>

                <tr><td class="label">UserName :</td>
                    <td class="auto-style1"><asp:TextBox ID="txtUserName" runat="server" Height="35px" Width="300px" /></td>
                </tr>
                      
                  <tr><td class="label">Email :</td>
                    <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server" Height="35px" Width="300px" /></td>
                </tr>
                 <tr><td class="label">Password :</td>
                    <td class="auto-style1"><asp:TextBox ID="txtPassword" runat="server" Height="35px" Width="300px" /></td>
                </tr>
                 <tr><td class="label">Re-Type Password :</td>
                    <td class="auto-style1"><asp:TextBox ID="txtRePassword" runat="server" Height="35px" Width="300px" /></td>
                </tr>
                      
                  <tr><td class="label">Enter Date of Birth :</td>
                      <td class="auto-style1">
                          <asp:DropDownList ID="ddlDay" runat="server" AutoPostBack="True" Height="40px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="73px">

                          </asp:DropDownList>&nbsp;<asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True" Height="40px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="73px">

                          </asp:DropDownList>&nbsp;<asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" Height="40px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="73px">

                          </asp:DropDownList></td>
                </tr>

                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr align="center">
                    
                    <td colspan="2"><asp:Button ID="btnSubmit" Text="Register Me" runat="server" OnClick="btnSubmit_Click" /></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
