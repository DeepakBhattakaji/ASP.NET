<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminRegrestration.aspx.cs" Inherits="Class_Management_System.adminRegrestration" %>

<!DOCTYPE html>
<script runat="server">

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //
        if(args.Value.Length>3)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
</script>


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
                               <asp:RangeValidator ID="RV_Age" runat="server" ControlToValidate="txtAge" MinimumValue="1" MaximumValue="99" ErrorMessage="Invalid Age. Please Enter age between 1 to 99 " ForeColor="Red" />
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
                                         <tr><td> Enter Contact No. :  </td>
                           <td>  <asp:TextBox ID="txtContact" runat="server">
                </asp:TextBox>
                                 <asp:RegularExpressionValidator ID="REV_Contact" runat="server" ControlToValidate="txtContact" ErrorMessage="Invalid Phone" ValidationExpression="^(\(?\s*\d{3}\s*[\)\-\.]?\s*)?[2-9]\d{2}\s*[\-\.]\s*\d{4}$"  ForeColor="Red"  />
                           
                           </td> </tr> 

                     <tr><td> Enter Email-Id :  </td>
                           <td>  <asp:TextBox ID="txtEmail" runat="server">
                </asp:TextBox>
                                 <asp:RegularExpressionValidator ID="REV_Email" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ForeColor="Red"  ValidationExpression="^(.+)@([^\.].*)\.([a-z]{2,})$" />
                           </td> </tr> 

                    <tr align="center"><td colspan="2" ><asp:Button ID="btnSubmit" Text="Submit" runat="server" Width="76px" ></asp:Button>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Invalid Name" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>
                        </td></tr>
          
        </div>
    </form>
</body>
</html>
