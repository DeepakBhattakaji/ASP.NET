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
    public partial class Page2 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\CALAB.mdf;Integrated Security=True;Connect Timeout=30");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                retriveEmpRec();
            }
        }

        public void retriveEmpRec()
        {
            string empDOB = Session["EmployeeDOB"].ToString();
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Employees WHERE EmployeeDOB=@empdob", conn);
            cmd.Parameters.AddWithValue("empdob", empDOB);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            conn.Close();

            if(ds.Tables.Count>0)
            {
                if(ds.Tables[0].Rows.Count>0)
                {
                    gvEmployee.DataSource = ds;
                    gvEmployee.DataBind();
                }
            }

            conn.Close();
                
        }

        protected void linkbtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Page1.aspx");
        }
    }
}