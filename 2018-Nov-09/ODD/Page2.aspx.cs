using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ASP_ALL_In_1._2018_Nov_09
{
    public partial class Page2 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dpkbh\Documents\CALAB.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
            retriveData();
        }

        public void retriveData()
        {
            conn.Open();
            string pId = Session["ProductId"].ToString();


          SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Products WHERE ProductId=@pid", conn);
            cmd.Parameters.AddWithValue("pid", pId);

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                lblProductId.Text = reader["ProductId"].ToString();
                lblProductName.Text = reader["ProductName"].ToString();
                lblProductPrice.Text = reader["ProductPrice"].ToString();
            }
            reader.Close();
            cmd.ExecuteNonQuery();
            conn.Close();

           
        }

        protected void linkbtnBack_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Page1.aspx");
        }
    }
}
