using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CA2DBK
{
    public partial class Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getYears();
                ddlYears.Items.Insert(0, "Year");
                getMonths();
                ddlMonths.Items.Insert(0, "Month");
                getDay();
                ddlDay.Items.Insert(0, "Day");
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx?name="+txtName.Text);
        }

        public void getYears()
        {
            int currentYear = int.Parse(DateTime.Now.ToString("yyyy"));

            for (int i = 2000; i <= currentYear; i++)
            {
                ddlYears.Items.Add(i.ToString());
            }
        }

        public void getMonths()
        {
            for (int i = 1; i <= 12; i++)
            {
                ddlMonths.Items.Add(i.ToString());

            }

        }

        public void getDay()
        {
            for (int i = 1; i <= 31; i++)
            {
                ddlDay.Items.Add(i.ToString());
            }
        }
    }
}