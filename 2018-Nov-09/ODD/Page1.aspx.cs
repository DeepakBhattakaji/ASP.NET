using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ASP_ALL_In_1._2018_Nov_09.ODD
{
    public partial class Page1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\CALAB.mdf;Integrated Security=True;Connect Timeout=30");


        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadProducts();
                ddlProductId.Items.Insert(0, "Select Product ID");
            }
        }

        public void loadProducts()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Products",conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            conn.Close();

            if(ds.Tables.Count>0)
            {
                if(ds.Tables[0].Rows.Count>0)
                {
                    ddlProductId.DataTextField = "ProductId";
                    ddlProductId.DataSource = ds;
                    ddlProductId.DataBind();
                }
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["ProductId"] = ddlProductId.SelectedValue;
            Response.Redirect("Page2.aspx");
        }
    }
}