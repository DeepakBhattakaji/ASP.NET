<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Profile.aspx.cs" Inherits="ASP_ALL_In_1.MasterPages_and_UserControl.frm_Profile" %>

<%@ Register Src="~/MasterPages-and-UserControl/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="-- Profile Information --"></asp:Label>
            </asp:Panel>
        </div>
        <div>
        <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />

        </div>
    </form>
</body>
</html>
