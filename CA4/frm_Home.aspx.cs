using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_ALL_In_1.CA4
{
    public partial class frm_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtEmployeeId.Text = Session["EmpId"].ToString();
            txtEmployeeName.Text= Session["EmpName"].ToString();
            Image1.ImageUrl = "~\\images\\images_Products\\appleiphone.jpg";

        }
    }
}