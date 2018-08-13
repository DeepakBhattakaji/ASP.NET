<!-- LOGIN PAGE  -->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="Class_Management_System.frmLogin" %>

<!DOCTYPE html>
<script runat="server">

    public void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;


    }

    public void Login_Click(object sender, EventArgs e)
    {
        String EmpName = empName.Text;
        String EmpDeg = empdeg.SelectedItem.ToString();
        String EmpPass = empPass.Text;

        Panel1.Visible = true;
        Panel2.Visible = true;
        Label1.Text = EmpName;
        Label2.Text = EmpDeg;


        if(EmpName=="Deepak" && EmpPass=="Bhatta" && EmpDeg=="Manager")
        {
            Response.Redirect("home.aspx");
        }
        else{
            Label3.Text = "Invalid UserName or Password";
        }

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style>
       body{
           background-color:azure;
       }
        table{
            line-height:20px;
            background-color:aliceblue;
            border:groove;
        }
        
        caption{
            font-size:20px;
        }
                #frmlogin{
            font-size:18px;
            color:green;
            background-color:azure;
        }
        .panel{
            color:brown;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            font-size:20px;
            text-align:center;

        }
    </style>
</head>
<body>
    <form id="login" runat="server">
        <div>
            <center>
            <table>
              
                <caption style="color:green;">Employee Login Form  </caption>
                  
                <tr><td style="color:red;" > <asp:Panel ID="Panel2" runat="server">
     
                                    <asp:Label ID="Label3" runat="server" Text="Login Message" ForeColor="Red"></asp:Label>
                                      </asp:Panel>  </td></tr>
              
                <tr><td><asp:Label Text="Enter Employee Name" runat="server"></asp:Label></td></tr>
                <tr><td><asp:TextBox ID="empName" runat="server"></asp:TextBox></td></tr>
                <tr><td><asp:Label Text="Select Employee Designation" runat="server"></asp:Label></td></tr>
                <tr><td><asp:DropDownList ID="empdeg" runat="server">
                     <asp:ListItem>Select Degination</asp:ListItem>
                      <asp:ListItem>Manager</asp:ListItem>
                     <asp:ListItem>Project Manager</asp:ListItem>
                     <asp:ListItem>Team Leader</asp:ListItem>
                     <asp:ListItem>Software  Engineer</asp:ListItem>
                        </asp:DropDownList></td></tr>
               <tr><td><asp:Label Text="Enter Password" runat="server" /> </td></tr>
               <tr><td><asp:TextBox ID="empPass" TextMode="Password" runat="server"></asp:TextBox> </td></tr>
                <tr align="center" ><td><asp:Button ID="frmlogin" Text="Login" runat="server" OnClick="Login_Click" /></td></tr>
                </table>
                </center>
        </div>
        <asp:Panel ID="Panel1" CssClass="panel" runat="server" Height="82px">
            <asp:Label Text="Employee Details :"  runat="server" ID="Label0"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Employee Name"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Employee Designation"></asp:Label>
            
            <br />
            
            <br />
        </asp:Panel>

    </form>
</body>
</html>
