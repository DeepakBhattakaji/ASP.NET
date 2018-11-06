<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmOSC.aspx.cs" Inherits="ASP_ALL_In_1.frmOSC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Shopping Cart</title>
    <style>
        body {
            background-color: azure;
        }

        div.wrapper {
            border-style: solid;
            border-color: #009933;
        }

        div.header {
            text-align: center;
        }

        div.ddlcat {
            margin-left: 100px;
        }

        .label {
            font-size: 20px;
            color: #009933;
            font-weight: bold;
            margin-right: 50px;
        }

        div.lblCatName {
            text-align: center;
        }

        .tblDetails {
            margin-left: 10px;
            margin-right: 10px;
        }

        #tblC1 {
            background-color: beige;
        }

        #tblC2 {
            background-color: aliceblue;
        }

        #tblC3 {
            background-color: beige;
        }

        #tblC4 {
            background-color: aliceblue;
        }

        #tblC1, #tblC2, #tblC3, #tblC4 {
            font-size: 18px;
            line-height: 25pt;
            font-weight: bold;
            width: 600px;
        }

        #btnCat1, #btnCat2, #btnCat3, #btnCat4 {
            color: yellow;
            background-color: forestgreen;
        }

            #btnCat1:hover, #btnCat2:hover, #btnCat3:hover, #btnCat4:hover {
                color: darkgreen;
                background-color: greenyellow;
            }

            #lblPrice1,#lblPrice2,#lblPrice3,#lblPrice4{
                margin-left:130px;
                color:green;
                font-weight:bold;
            }

        #btnRemove1, #btnRemove2, #btnRemove3, #btnRemove4 {
            color: yellow;
            background-color: darkred;
            margin-left: 0px;
        }

            #btnRemove1:hover, #btnRemove2:hover, #btnRemove3:hover, #btnRemove4:hover {
                color: blue;
                background-color: red;
            }

        .details_fetch {
            margin-left: 10px;
            color: darkblue;
            font-size:18px;
        }

       .quantity{
           margin-left:20px;
       }
       #lblItem1,#lblItem2,#lblItem3,#lblItem4,#Label15,#Label20,#Label21,#Label22{
           margin-left:100px;
       }
       #btnBuy{
           background-color:forestgreen;
           color:white;
           font-size:20px;
           margin-left:150px;
       }
       #lblTotalAmount,#lblDiscAmount,#lblNetAmount{
           margin-left:35px;
           color:orangered;
           font-size:20px;
       }

       #btnExit{
           margin-left:400px;
       }
       #Label1{
           margin-left:255px;
       }
       #btnBack{
           margin:0px;
       }

       #imgC1,#imgC2,#imgC3,#imgC4{
           margin-left:30px;
       }
       #tblLinkbtn1,#tblLinkbtn2,#tblLinkbtn3,#tblLinkbtn4{
           color:blue;
           margin-left:20px;
           text-decoration:underline;
           font-size:12px;
       }
       #txtTotalAmount0{
           margin-left:35px;
           color:orangered;
           font-size:20px;
       }
          #Label24{
          color:red;
          font-style:italic;
          font-size:13px;
       }
       </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <asp:Panel ID="Panel2" runat="server" Height="1151px">
                <div class="header">
                    <asp:Panel ID="Panel1" runat="server" Height="45px" BackColor="#009933">
                        <asp:Button ID="btnBack" runat="server" BackColor="#009933" Font-Bold="True" Font-Size="18px" ForeColor="White" Height="26px" OnClick="btnBack_Click" Text="Back" Width="68px" />
                        <asp:Label ID="Label1" runat="server" Text="Online Shopping Cart" Font-Bold="True" Font-Size="28px" ForeColor="White"></asp:Label>
                        <asp:Button ID="btnExit" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="18px" ForeColor="White" Height="26px" OnClick="btnExit_Click" Text="Exit" Width="68px" />
                    </asp:Panel>
                </div>
                <br />
                <div class="ddlcat">
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:Label ID="Label16" runat="server" Text="Enter Customer Name :" CssClass="label"></asp:Label>
                        <asp:TextBox ID="txtCustomerName" runat="server" Height="25px" Width="251px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label17" runat="server" Text="Enter Customer Age :" CssClass="label"></asp:Label>
                        <asp:TextBox ID="txtCustomerAge" runat="server" Height="25px" TextMode="Number" OnTextChanged="txtCustomerAge_TextChanged"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Age wise, you get :"></asp:Label>
                        &nbsp;<asp:Label ID="lblDiscount" runat="server" Font-Bold="True" ForeColor="Red" Text="0"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" ForeColor="Black" Text="% discount offer! (If you buy any product of worth Rs.1,00,000/-)"></asp:Label>
                        <br />
                        <br />
                        <hr />
                        <br />
                        <asp:Label ID="lable1" runat="server" Text="Select Category :" CssClass="label"></asp:Label>
                        <asp:DropDownList ID="ddlCategory" runat="server" Height="35px" Width="268px" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" Font-Bold="True" Font-Size="15px">
                            <asp:ListItem Text="-------------Select Category------------"></asp:ListItem>
                            <asp:ListItem Text="Apple"></asp:ListItem>
                            <asp:ListItem Text="Samsung"></asp:ListItem>
                            <asp:ListItem Text="LG"></asp:ListItem>
                            <asp:ListItem Text="Sony"></asp:ListItem>
                            <asp:ListItem Text="Nokia"></asp:ListItem>
                        </asp:DropDownList>

                    </asp:Panel>
                </div>
                <br />
                <div class="lblCatName">
                    <asp:Panel ID="CatName" runat="server" Height="45px" BackColor="#66FF66">
                        <asp:Label ID="lblCatName" runat="server" Text="Category Name" Font-Bold="True" Font-Size="28px" ForeColor="#000066"></asp:Label>
                    </asp:Panel>
                </div>
                <div class="mobileDetails">
                    <asp:Panel ID="mobileDetails" runat="server" Height="162px">
                        <asp:Table ID="tblDetails" runat="server" Height="148px" >
                            <asp:TableRow ID="tblR1" runat="server">
                                <asp:TableCell ID="tblC1" runat="server">
                                    <asp:Image ID="imgC1" runat="server" Height="200" Width="200"/><br />
                                    <asp:Label ID="Label2" runat="server" Text="Category Item :"></asp:Label>
                                    <asp:Label ID="lblCatItem1" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="Item Model No.:"></asp:Label>
                                    <asp:Label ID="lblItemModel1" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label4" runat="server" Text="Item Price.:"></asp:Label>
                                    <asp:Label ID="lblItemPrice1" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Button ID="btnCat1" runat="server" Text="Add to cart" OnClick="btnCat1_Click" />
                                    <asp:Button ID="btnRemove1" runat="server" Text="Remove" OnClick="btnRemove1_Click" />
                                    <asp:LinkButton ID="tblLinkbtn1" runat="server" OnClick="tblLinkbtn1_Click">See Details</asp:LinkButton>
                                </asp:TableCell>
                                <asp:TableCell ID="tblC2" runat="server">
                                 <asp:Image ID="imgC2" runat="server" Height="200" Width="200"/><br />

                                    <asp:Label ID="Label5" runat="server" Text="Category Item :"></asp:Label>
                                    <asp:Label ID="lblCatItem2" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label6" runat="server" Text="Item Model No.:"></asp:Label>
                                    <asp:Label ID="lblItemModel2" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text="Item Price.:"></asp:Label>
                                    <asp:Label ID="lblItemPrice2" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Button ID="btnCat2" runat="server" Text="Add to cart" OnClick="btnCat2_Click"/>
                                    <asp:Button ID="btnRemove2" runat="server" Text="Remove" OnClick="btnRemove2_Click"/>
                                    <asp:LinkButton ID="tblLinkbtn2" runat="server" OnClick="tblLinkbtn2_Click">See Details</asp:LinkButton>

                                </asp:TableCell>
                                <asp:TableCell ID="tblC3" runat="server">
                                <asp:Image ID="imgC3" runat="server" Height="200" Width="200"/><br />

                                    <asp:Label ID="Label8" runat="server" Text="Category Item :"></asp:Label>
                                    <asp:Label ID="lblCatItem3" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label9" runat="server" Text="Item Model No.:"></asp:Label>
                                    <asp:Label ID="lblItemModel3" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label10" runat="server" Text="Item Price.:"></asp:Label>
                                    <asp:Label ID="lblItemPrice3" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Button ID="btnCat3" runat="server" Text="Add to cart" OnClick="btnCat3_Click"/>
                                    <asp:Button ID="btnRemove3" runat="server" Text="Remove" OnClick="btnRemove3_Click"/>
                                    <asp:LinkButton ID="tblLinkbtn3" runat="server" OnClick="tblLinkbtn3_Click">See Details</asp:LinkButton>

                                </asp:TableCell>
                                <asp:TableCell ID="tblC4" runat="server">
                                <asp:Image ID="imgC4" runat="server" Height="200" Width="200"/><br />

                                    <asp:Label ID="Label11" runat="server" Text="Category Item :"></asp:Label>
                                    <asp:Label ID="lblCatItem4" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label12" runat="server" Text="Item Model No.:"></asp:Label>
                                    <asp:Label ID="lblItemModel4" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label13" runat="server" Text="Item Price.:"></asp:Label>
                                    <asp:Label ID="lblItemPrice4" runat="server" Text="" CssClass="details_fetch"></asp:Label>
                                    <br />
                                    <asp:Button ID="btnCat4" runat="server" Text="Add to cart" OnClick="btnCat4_Click"/>
                                    <asp:Button ID="btnRemove4" runat="server" Text="Remove" OnClick="btnRemove4_Click"/>
                                    <asp:LinkButton ID="tblLinkbtn4" runat="server" OnClick="tblLinkbtn4_Click">See Details</asp:LinkButton>

                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:Panel>
                </div>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblNoItemError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                <br /><br /><hr />
                <div class="details_fetch">
                    <asp:Panel ID="AddedtoCart" runat="server" Height="437px">
                        <asp:Label ID="Label14" runat="server" Text="Items Added in Cart :" Font-Bold="True" Font-Size="22px"></asp:Label>
                        <br /><br />

                        <asp:Label ID="lblItem1" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="lblPrice1" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="txtItem1" runat="server"  CssClass="quantity" Width="50px"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="lblItem2" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="lblPrice2" runat="server" Text="Label"></asp:Label>
                         <asp:TextBox ID="txtItem2" runat="server"  CssClass="quantity" Width="50px"></asp:TextBox>

                        <br /><br />
                        <asp:Label ID="lblItem3" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="lblPrice3" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="txtItem3" runat="server"  CssClass="quantity" Width="50px"></asp:TextBox>

                        <br /><br />
                        <asp:Label ID="lblItem4" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="lblPrice4" runat="server" Text="Label"></asp:Label>
                         <asp:TextBox ID="txtItem4" runat="server" CssClass="quantity" Width="50px"></asp:TextBox>

                        <br /><br />
                        <hr />
                        <asp:Button ID="btnBuy" runat="server" Font-Bold="True" OnClick="btnBuy_Click" Text="Calculate / Buy" Width="153px" />
                        <br />
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Total Amount :"></asp:Label>
                         <asp:Label ID="lblTotalAmount" runat="server" Text="0" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="Label20" runat="server" Text="Discount Amount :"></asp:Label>
                        <asp:Label ID="lblDiscAmount" runat="server" Text="0" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Green">

                        </asp:Label> &nbsp;<asp:Label ID="Label24" runat="server" Font-Bold="True" ForeColor="Red" Text="Discount offer! (Buy any product of worth Rs. 1,00,000/-)"></asp:Label>
                        <br />
                        <asp:Label ID="Label22" runat="server" Text="-------------------------------------------------------"></asp:Label><br />
                         <asp:Label ID="Label21" runat="server" Text="Net Amount to be Paid :"></asp:Label>
                        <asp:Label ID="lblNetAmount" runat="server" Text="0" Font-Bold="True"></asp:Label>

                    </asp:Panel>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
