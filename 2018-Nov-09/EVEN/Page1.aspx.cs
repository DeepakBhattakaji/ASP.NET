using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ASP_ALL_In_1._2018_Nov_09.EVEN
{
    public partial class Page1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\CALAB.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadEmpDOB();
                ddlEmployeeYear.Items.Insert(0, "Select Employee DOB");
            }
        }

        public void loadEmpDOB()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT EmployeeDOB FROM tbl_Employees ", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            conn.Close();
            if(ds.Tables.Count>0)
            {
                if(ds.Tables[0].Rows.Count>0)
                {
                    ddlEmployeeYear.DataTextField = "EmployeeDOB";
                    ddlEmployeeYear.DataSource = ds;
                    ddlEmployeeYear.DataBind();
                }
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["EmployeeDOB"] = ddlEmployeeYear.SelectedValue;
            Response.Redirect("Page2.aspx");
        }
    }
}