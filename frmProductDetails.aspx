<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmProductDetails.aspx.cs" Inherits="ASP_ALL_In_1.frmProductDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details</title>
    <style>
        body{
            background-color:azure;
        }
        .specif{
            margin-left:150px;
        }
        .Panel1{
            border-color:forestgreen;
            border-style:solid;

        }
        .image{
            margin-right:150px;
        }
        .details{
            margin-right:400px;
        }
        #label1,#label2,#label4,#label6,#label8,#label10,#label12,#label14{
            color:green;
            font-size:12px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="tbldetails" runat="server" Width="800">
                <asp:TableRow ID="tblRowdetails" runat="server">
                    <asp:TableCell ID="tblCellImage" runat="server">
                        <asp:Image ID="imgProduct" runat="server" CssClass="image" Height="200" Width="200"/> 
                    </asp:TableCell>
                <asp:TableCell ID="tblCelldetails" runat="server" CssClass="details">
                <asp:Panel ID="Panel1" runat="server" BorderColor="#009933" BorderStyle="Solid">
                <asp:Label ID="Label1" runat="server" Text="Product Cateogory :  "></asp:Label>
                <asp:Label ID="lblProductCate" runat="server" Text="Label"></asp:Label><br /><br />
                <asp:Label ID="Label2" runat="server" Text="Product Name :  "></asp:Label>
                <asp:Label ID="lblProductName" runat="server" Text="Label"></asp:Label><br /><br />
                <asp:Label ID="Label4" runat="server" Text="Product Model :  "></asp:Label>
                <asp:Label ID="lblProductModel" runat="server" Text="Label"></asp:Label><br /><br />
                <asp:Label ID="Label6" runat="server" Text="Product Price :  "></asp:Label>
                <asp:Label ID="lblProductPrice" runat="server" Text="Label"></asp:Label><br /><br />
                <asp:Label ID="Label8" runat="server" Text="Product Specification :  "></asp:Label><br />
                <%--<asp:Label ID="lblProductSpecif" runat="server" Text=""></asp:Label><br /><br />--%>
                <asp:Label ID="Label10" runat="server" Text="Hardware Version :  " CssClass="specif"></asp:Label>
                <asp:Label ID="lblHardware" runat="server" Text="Label"></asp:Label><br /><br />
                <asp:Label ID="Label12" runat="server" Text="Software Version :  " CssClass="specif"></asp:Label>
                <asp:Label ID="lblSoftware" runat="server" Text="Label"></asp:Label><br /><br />
                <asp:Label ID="Label14" runat="server" Text="Sensors :  " CssClass="specif"></asp:Label>
                <asp:Label ID="lblSensors" runat="server" Text="Label"></asp:Label>
            </asp:Panel>

                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
