using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1.Login_Signup.Session_Query_String.Query_String
{
    public partial class frm_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Request.QueryString["userName"].ToString();
            lblUserName.Text = str;
        }
    }
}