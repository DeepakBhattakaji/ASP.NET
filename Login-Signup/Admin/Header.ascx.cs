using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1.Login_Signup.Admin
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void linkLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../frm_Login.aspx");

        }
    }
}