
<%@ Page Language="C#" %>


<!DOCTYPE html>
<script runat="server">



    private void Page_Load(object sender, EventArgs e)
    {
       // if(!IsPostBack)
        //{
            getYears();
            dropY.Items.Insert(0, "Year");
            getMonths();
            dropM.Items.Insert(0, "MM");
            getDays();
            dropD.Items.Insert(0, "DD");
      //  }

    }

    public void getYears()
    {
        int i;
        for(i=2000;i<=2020;i++)
        {
            dropY.Items.Add(i.ToString());
        }
    }

    public void getMonths()
    {
        int i;
        for(i=1;i<=12;i++)
        {
            dropM.Items.Add(i.ToString());
        }
    }

    public void getDays()
    {
        int i;
        for(i=1;i<=32;i++)
        {
            dropD.Items.Add(i.ToString());
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
</script>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
    <style type="text/css">
        #form1 {
            width: 490px;
            border-color:#009900;
        }
         body{
            background-color:azure;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="border-color:#009900; margin-top: 100px; margin-left: 350px; border:solid; color: #009900;">   
        <asp:Panel ID="Panel3" runat="server" BackColor="#009900" ForeColor="White" Height="30px" Width="490px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="18pt" ForeColor="White" Text="Registration Form"></asp:Label>
        </asp:Panel>
&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel2" runat="server" Height="279px" Width="489px">
            <br />
            &nbsp;
            
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#009933" Text="Name :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" Width="223px"></asp:TextBox>
            &nbsp;
           <asp:RequiredFieldValidator ID="RFV" runat="server" ErrorMessage="* Require" ControlToValidate="txtName" ForeColor="Red" ></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#009933" Text="Password :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtPass" runat="server" Width="223px" TextMode="Password"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RFV0" runat="server" ControlToValidate="txtPass" ErrorMessage="* Require" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label4" runat="server"  Font-Bold="True" ForeColor="#009933" Text="ReType Password :"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="txtRePass" runat="server" Width="223px" TextMode="Password"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RFV1" runat="server" ControlToValidate="txtRePass" ErrorMessage="* Require" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#009933" Text="Gender :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="radioMale" runat="server" Text="Male" GroupName="gender" Checked="True" />
            &nbsp;<asp:RadioButton ID="radioFemale" runat="server" Text="Female" GroupName="gender" />
&nbsp;<br />
            <br />
            &nbsp;
            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#009933" Text="Date of Birth :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="dropY" runat="server" Height="20px" Width="74px" >

            </asp:DropDownList>
            &nbsp;&nbsp;<asp:DropDownList ID="dropM" runat="server" Height="19px" Width="50px">
            </asp:DropDownList>
&nbsp;
            <asp:DropDownList ID="dropD" runat="server" Height="19px" Width="50px">
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSubmit" runat="server" BackColor="#009933" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="32px" Text="Submit" Width="87px" OnClick="btnSubmit_Click"  />
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="CustomValidator"></asp:CustomValidator>
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
