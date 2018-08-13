<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminRegrestration.aspx.cs" Inherits="Class_Management_System.adminRegrestration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
    <style>
        table{
            line-height:30px;
            border-style:solid;
            border-color:green;
        }
        tr{
            color:green;
            font-size:20px;
        }
    </style>
</head>
<body style="height: 203px">
    <form id="adminLogin" runat="server">
        <div>
               <h2>Validation Control-</h2> <span><h3 style="color:greenyellow;">Regular Expresion</h3></span>
                <table>
           <caption><h3 style="text-align:center;color:green;">Registration Page</h3>  </caption>
        <tr><td colspan="5">                    <asp:ValidationSummary ID="VS_Summary" runat="server" ShowMessageBox="True" ForeColor="Red" /></td></tr>
                     <tr><td> Enter Name :  </td>
                           <td>  <asp:TextBox ID="txtName" runat="server">
                </asp:TextBox>
                            <asp:RegularExpressionValidator ID="REV_Name" runat="server" ControlToValidate="txtName" ErrorMessage="Invalid UserName" ForeColor="Red" ValidationExpression="^[a-zA-Z'.\s]{1,50}" />

                           </td>
                         
                     </tr> 
                                 <tr><td> Enter Age :  </td>
                           <td>  <asp:TextBox ID="txtAge" runat="server">
                </asp:TextBox>
                               <asp:RangeValidator ID="RV_Age" runat="server" ControlToValidate="txtAge" MinimumValue="18" MaximumValue="40" Type="Integer" ErrorMessage="Invalid Age. Please Enter age between 18 to 40 " ForeColor="Red" />
                               </td>
                                     </tr>
                   <tr> <td> Enter Password: </td>
                           <td>  <asp:TextBox ID="txtPass" TextMode="Password" runat="server">
                                 </asp:TextBox>
                            
                           </td> </tr> 
                   <tr> <td> Re-Type Password: </td>
                           <td>  <asp:TextBox ID="txtRePass" TextMode="Password" runat="server">
                </asp:TextBox> 
                               <asp:CompareValidator ID="CV_RePass" runat="server" ControlToCompare="txtPass" ControlToValidate="txtRePass" ErrorMessage="Password should be same" ForeColor="Red"/>
                           </td> </tr> 
                                         <tr><td> Enter Phone No. :  </td>
                           <td>  <asp:TextBox ID="txtPhone" runat="server">
                </asp:TextBox>
                                 <asp:RegularExpressionValidator ID="REV_Contact" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid Phone" ValidationExpression="^9\d{9}$"  ForeColor="Red"  />
                           
                           </td> </tr> 
                                                             <tr><td> Enter LandLine No. :  </td>
                           <td>  <asp:TextBox ID="txtLandline" runat="server">
                </asp:TextBox>
                                 <asp:RegularExpressionValidator ID="REV_Landline" runat="server" ControlToValidate="txtLandline" ErrorMessage="Invalid Phone,(e.g. 977-091-411156)" ValidationExpression="^[0-9]\d{2,4}-\d{2,4}-\d{6,8}$"  ForeColor="Red"  />
                           
                           </td> </tr> 

                     <tr><td> Enter Email-Id :  </td>
                           <td>  <asp:TextBox ID="txtEmail" runat="server">
                </asp:TextBox>
                                 <asp:RegularExpressionValidator ID="REV_Email" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ForeColor="Red"  ValidationExpression="^(.+)@([^\.].*)\.([a-z]{2,})$" />
                           </td> </tr> 

                    <tr align="center"><td colspan="2" ><asp:Button ID="btnSubmit" Text="Submit" runat="server" Width="76px" ></asp:Button></td></tr>
          
        </div>
    </form>
</body>
</html>
