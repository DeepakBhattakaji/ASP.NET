using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1.Multiple_Query_String
{
    public partial class frm_HomeMQS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUserName.Text = Request.QueryString["uName"];
                lblEmail.Text = Request.QueryString["uEmail"];
                lblPhone.Text = Request.QueryString["uPhone"];
            }
        }
    }
}