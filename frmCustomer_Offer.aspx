<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCustomer_Offer.aspx.cs" Inherits="ASP_ALL_In_1.Cusomer_Offer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Offer</title>
    <style>
        body{
            background-color:azure;
        }
       .wrapper{
           margin-left:250px;
           border-style:solid;
           border-color:green;
           height:460px;
           width:600px;

       }
       #btnBuy{
           height:35px;
           width:200px;
           color:green;
           font-size:22px;
           font-weight:bold;
           background-color:lightgreen;
       }

       #Label19{
          float:right;
          color:red;
          font-style:italic;
          font-size:13px;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <asp:Panel ID="Panel1" runat="server">

                    <asp:Panel ID="Panel2" runat="server" BackColor="#009933" Height="38px" Width="601px">
                    <asp:Button ID="btnBack" runat="server" BackColor="#009933" Font-Bold="True" Font-Size="18px" ForeColor="White" Height="26px" OnClick="btnBack_Click" Text="Back" Width="68px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="White" Text="Customer Offer A.T. Age" style="font-size: x-large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnExit" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="18px" ForeColor="White" Height="26px" OnClick="btnExit_Click" Text="Exit" Width="68px" />
</asp:Panel>
                <br />
                &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Green" Text="Select Item :"></asp:Label>
                &nbsp;<asp:DropDownList ID="ddlSelectItem" runat="server" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="ddlSelectItem_SelectedIndexChanged" Width="154px">
                    <asp:ListItem>Select the Item :</asp:ListItem>
                    <asp:ListItem>I Phone</asp:ListItem>
                    <asp:ListItem>MI Phone</asp:ListItem>
                    <asp:ListItem>Nokia Phone</asp:ListItem>
                    <asp:ListItem>Samsung Phone</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;<br /><br />&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Green" Text="Select Quantity :"></asp:Label>
                &nbsp;<asp:DropDownList ID="ddlSelectQuantity" runat="server" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="ddlSelectQuantity_SelectedIndexChanged" Width="154px">
                </asp:DropDownList>
                <br />
                <hr />
                <br />
                &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Green" Text="Total Price of Selected Item and Quantity is :"></asp:Label>
                &nbsp;<asp:Label ID="lblitemPrice" runat="server" Font-Bold="True" ForeColor="Red" Text="0"></asp:Label>
                &nbsp; *&nbsp;
                <asp:Label ID="lblQuantity" runat="server" ForeColor="Red" Text="0" Font-Bold="True"></asp:Label>
                &nbsp; =&nbsp;
                <asp:Label ID="lblTotalPrice" runat="server" ForeColor="Blue" Text="0" Font-Bold="True"></asp:Label>
                <br />
                <hr />
                <br />
                &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Green" Text="Customer Name :"></asp:Label>
&nbsp;&nbsp;<asp:TextBox ID="txtCustomerName" runat="server" Height="25px" Width="200px"></asp:TextBox>
                <br />
                <br />
&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Green" Text="Customer Age :"></asp:Label>
                &nbsp;&nbsp;<asp:TextBox ID="txtCustomerAge" runat="server" AutoPostBack="True" Height="25px" OnTextChanged="txtCustomerAge_TextChanged" TextMode="Number" Width="145px"></asp:TextBox>
                &nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="You get :"></asp:Label>
                &nbsp;<asp:Label ID="lblDiscount" runat="server" Font-Bold="True" ForeColor="Red" Text="0"></asp:Label>
                    &nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="% Discount Offer!"></asp:Label>
&nbsp;<asp:Label ID="Label19" runat="server" Font-Bold="True" ForeColor="Red" Text="Discount offer! (Buy any product of worth Rs. 10,000/-)"></asp:Label>
                    <br />
                <br />
                    <hr />
                    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Net Amount to be paid :"></asp:Label>
                &nbsp;<asp:Label ID="lblNetAmount" runat="server" ForeColor="Green" Text="0" Font-Bold="True"></asp:Label>
                <hr />
                <br />
                &nbsp;<asp:Button ID="btnBuy" runat="server" Font-Bold="True" Text="Buy" Width="152px" OnClick="btnBuy_Click" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
