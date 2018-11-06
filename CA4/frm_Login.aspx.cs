using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1.CA4
{
    public partial class frm_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            Session["EmpId"] = txtEmployeeId.Text;
            Session["EmpName"] = txtEmployeeName.Text;

            Response.Redirect("frm_Home.aspx");

        }
    }
}