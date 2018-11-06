<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Home.aspx.cs" Inherits="ASP_ALL_In_1.MasterPages_and_UserControl.frm_Home" %>

<%@ Register Src="~/MasterPages-and-UserControl/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
        }
        .WebUserControl1{
           margin-top:550px;
           text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Welcome to Home Page! -- Master Pages and User Control --"></asp:Label>
            </asp:Panel>
            <div class="WebUserControl1">
                <uc1:WebUserControl1 runat="server" id="WebUserControl1" />
            </div>
        </div>
    </form>
</body>
</html>
