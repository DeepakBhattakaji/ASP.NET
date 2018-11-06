using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpSalaryCalc
{
    public partial class frmHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalary_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmSalaryCalc.aspx");
        }

        protected void btnElectricity_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBillGenerate.aspx");
        }

        protected void btnLMS_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmLMS.aspx");
        }

        protected void btnOSC_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmOSC.aspx");
        }

        protected void btnCustomerOffer_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCustomer_Offer.aspx");

        }
    }
}