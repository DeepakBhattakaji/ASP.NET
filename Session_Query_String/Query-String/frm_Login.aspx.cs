using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1.Login_Signup.Session_Query_String.Query_String
{
    public partial class frm_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Response.Redirect("frm_Home.aspx?userName=" + txtUserName.Text); 
             // In URL data will be shown which we are transfering, like a GET Method
            Server.Transfer("frm_Home.aspx?userName=" + txtUserName.Text);
             // In URL data will NOT show, like a POST Method


        }
    }
}