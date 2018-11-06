using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpSalaryCalc
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String Email = txtEmail.Text;
            String Password = txtPassword.Text;
            
            if(Email=="dpkbhatta2051@gmail.com" && Password=="kaji")
            {
                Response.Redirect("frmHome.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'> alert('E-Mail or Password donot Match')</script>");
            }
        }
    }
}